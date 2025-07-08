--2
local button = script.Parent
button.Size = UDim2.new(0.2, 50, 0.1, 10)      
button.Position = UDim2.new(0.4, -25, 0.45, 0) 


local randomGen = Random.new()

button.MouseButton1Click:Connect(function()
	local r = randomGen:NextNumber()
	local g = randomGen:NextNumber()
	local b = randomGen:NextNumber()
	local color = Color3.new(r, g, b)

	button.BackgroundColor3 = color
	button.Text = "R: "..math.floor(r*255)..", G: "..math.floor(g*255)..", B: "..math.floor(b*255)
end)
--3
local label = script.Parent:WaitForChild("TextLabel")
local button = script.Parent:WaitForChild("TextButton")

button.MouseButton1Click:Connect(function()
	task.delay(5, function()
		label.Text = "??????????? ???????? ???!"
		label.TextColor3 = Color3.fromRGB(0, 255, 0)

		label.Size = UDim2.new(0.4, 0, 0.2, 0)
		label.Position = UDim2.new(0.3, 0, 0.4, 0)
	end)
end)
--4
local button = script.Parent:WaitForChild("TextButton")
button.Position = UDim2.new(1, -160, 1, -60) 
button.Size = UDim2.new(0, 150, 0, 50)

local messages = {
	"???????!",
	"?????? ????????!",
	"????? ???????!",
	"????????? ???!",
	"Keep it up!"
}

button.MouseButton1Click:Connect(function()
	local label = Instance.new("TextLabel")
	label.Size = UDim2.new(0.3, 0, 0.1, 0)
	label.Position = UDim2.new(0.35, 0, 0.2, 0)
	label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	label.TextColor3 = Color3.fromRGB(0, 0, 0)
	label.Font = Enum.Font.GothamBold
	label.TextScaled = true
	label.Text = messages[math.random(1, #messages)]
	label.Parent = script.Parent

	task.delay(3, function()
		label:Destroy()
	end)
end)
--5
local button = script.Parent
local isClicked = false


button.MouseEnter:Connect(function()
	button.Text = "??????!"
end)


button.MouseLeave:Connect(function()
	if isClicked then
		button.Text = "??????? ?????????"
	else
		button.Text = "???????"
	end
end)


button.MouseButton1Click:Connect(function()
	isClicked = not isClicked 

	if isClicked then
		button.Text = "??????? ?????????"
	else
		button.Text = "???????"
	end
end)
--6
local button = script.Parent:WaitForChild("MagicButton")
local label = script.Parent:WaitForChild("TextLabel")
local defaultSize = label.Size
local defaultColor = label.TextColor3
button.MouseEnter:Connect(function()
	label.TextColor3 = Color3.fromRGB(255, 0, 0)
end)

button.MouseLeave:Connect(function()
	label.TextColor3 = defaultColor
end)

button.MouseButton1Click:Connect(function()
	local startSize = label.Size
	for i = 1, 3 do
		task.wait(1) 
		label.Size = UDim2.new(
			startSize.X.Scale * (1 + i * 0.1), 0,
			startSize.Y.Scale * (1 + i * 0.1), 0
		)
	end
end)


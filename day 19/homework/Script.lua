--2
local textBox = script.Parent:WaitForChild("TextBox")
local label = script.Parent:WaitForChild("TextLabel")
textBox.Focused:Connect(function()
	label.Text = "???????? ??????..."
end)

textBox.FocusLost:Connect(function()
	label.Text = textBox.Text
end)
--3
local textBox = script.Parent:WaitForChild("TextBox")
local button = script.Parent:WaitForChild("TextButton")
local label = script.Parent:WaitForChild("TextLabel")

button.MouseButton1Click:Connect(function()
	local name = textBox.Text

	if name == "" then
		label.Text = "?????? ????????? ??????!"
	else
		label.Text = "????????????, " .. name .. "!"
	end
end)
--4
local textBox = script.Parent:WaitForChild("TextBox")
local label = script.Parent:WaitForChild("TextLabel")
local realPassword = ""
textBox:GetPropertyChangedSignal("Text"):Connect(function()
	local input = textBox.Text
	local newChar = input:sub(-1)
	realPassword = realPassword .. newChar 
	textBox.Text = string.rep("?", #realPassword)
end)
textBox.FocusLost:Connect(function()
	label.Text = "?????? ?????????!"
end)
--5
textBox.Size = UDim2.new(0, 300, 0, 50)
textBox.Position = UDim2.new(0.5, -150, 0.5, -25) 
textBox.Focused:Connect(function()
	local r = Random.new():NextNumber()
	local g = Random.new():NextNumber()
	local b = Random.new():NextNumber()

	textBox.BackgroundColor3 = Color3.new(r, g, b)
end)
--6
local textBox = script.Parent:WaitForChild("TextBox")
local button = script.Parent:WaitForChild("TextButton")

button.MouseButton1Click:Connect(function()
	local inputText = textBox.Text

	local label = Instance.new("TextLabel")
	label.Text = inputText
	label.Size = UDim2.new(0.4, 0, 0.1, 0)
	label.Position = UDim2.new(0.3, 0, 0.1, 0)
	label.BackgroundColor3 = Color3.fromRGB(math.random(0,255), math.random(0,255), math.random(0,255))
	label.TextColor3 = Color3.fromRGB(255, 255, 255)
	label.TextScaled = true
	label.Parent = script.Parent
	task.delay(4, function()
		label:Destroy()
	end)
end)
--7
local textBox = script.Parent:WaitForChild("TextBox")

textBox.Position = UDim2.new(0, 20, 1, -70)
textBox.Size = UDim2.new(0, 250, 0, 50)

textBox.FocusLost:Connect(function()
	local enteredText = textBox.Text
	textBox.Text = "" 

	local label = Instance.new("TextLabel")
	label.Text = "????????: " .. enteredText
	label.Size = UDim2.new(0.5, 0, 0.1, 0)
	label.Position = UDim2.new(0.25, 0, 0.4, 0)
	label.TextColor3 = Color3.fromRGB(0, 0, 0)
	label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	label.TextScaled = true
	label.Parent = script.Parent
	task.delay(5, function()
		label:Destroy()
	end)
end)








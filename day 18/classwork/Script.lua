-- TextLabel-?? ?????????? ????????
local label = Instance.new("TextLabel")
label.Name = "MyLabel"
label.Text = "Hello!"
label.Size = UDim2.new(0.5, 0, 0.1, 0)
label.Position = UDim2.new(0.25, 0, 0.4, 0)
label.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
label.TextColor3 = Color3.fromRGB(0, 0, 0)
label.Font = Enum.Font.GothamBold
label.TextScaled = true
label.Parent = script.Parent




local label = script.Parent:WaitForChild("TextLabel")
local button = script.Parent:WaitForChild("TextButton")

local phrases = {
	"Welcome to GOA!",
	"You're doing great!",
	"Keep coding!",
	"Lua is fun!",
	"Stay motivated!",
	"Success is near!",
	"Never give up!"
}

button.MouseButton1Click:Connect(function()
	local randomIndex = math.random(1, #phrases)
	label.Text = phrases[randomIndex]
end)





local label = script.Parent:WaitForChild("TextLabel")
local yesButton = script.Parent:WaitForChild("YesButton")
local noButton = script.Parent:WaitForChild("NoButton")

yesButton.MouseButton1Click:Connect(function()
	label.Text = "Correct Answer!"
	label.TextColor3 = Color3.fromRGB(0, 255, 0) 
end)

noButton.MouseButton1Click:Connect(function()
	label.Text = "Oops... Try again!"
	label.TextColor3 = Color3.fromRGB(255, 0, 0)
end)


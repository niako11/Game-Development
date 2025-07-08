--2
local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		print("Left Click")
	elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
		print("Right Click")
	end
end)
--3
UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if input.KeyCode == Enum.KeyCode.Q and not gameProcessed then
		print("Q was pressed freely")
	end
end)
--4
local button = script.Parent
local defaultColor = button.BackgroundColor3

button.MouseButton1Click:Connect(function()
	print("You clicked it!")
end)

button.MouseEnter:Connect(function()
	button.BackgroundColor3 = Color3.fromRGB(0, 255, 0) -- ??????
end)

button.MouseLeave:Connect(function()
	button.BackgroundColor3 = defaultColor
end)
--5
local UIS = game:GetService("UserInputService")
local label = script.Parent

UIS.InputBegan:Connect(function(input, gameProcessed)
	if input.KeyCode == Enum.KeyCode.F and not gameProcessed then
		label.Visible = true
		label.Text = "Pressed F"
	end
end)

UIS.InputEnded:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.F then
		label.Visible = false
	end
end)
--6
local hideButton = script.Parent:WaitForChild("HideButton")
local showButton = script.Parent:WaitForChild("ShowButton")
local label = script.Parent:WaitForChild("TextLabel")

hideButton.MouseButton1Click:Connect(function()
	label.Visible = false
end)

showButton.MouseButton1Click:Connect(function()
	label.Visible = true
end)
--7
local button = script.Parent:WaitForChild("ChangeColorButton")
local label = script.Parent:WaitForChild("TextLabel")

button.MouseButton1Click:Connect(function()
	local randomColor = BrickColor.Random().Color
	label.TextColor3 = randomColor
end)
--8
local button = script.Parent

button.Text = "Hover me"

button.MouseEnter:Connect(function()
	button.Text = "Nice!"
end)

button.MouseLeave:Connect(function()
	button.Text = "Hover me"
end)
--9
local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local player = Players.LocalPlayer

UIS.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end

	local character = player.Character
	if not character then return end

	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if not humanoid then return end

	if input.KeyCode == Enum.KeyCode.Z then
		humanoid.WalkSpeed = humanoid.WalkSpeed * 2
	elseif input.KeyCode == Enum.KeyCode.X then
		humanoid.WalkSpeed = 16 -- ???????????? 16
	end
end)
--10
local UIS = game:GetService("UserInputService")

UIS.InputBegan:Connect(function(input, gameProcessed)
	if input.KeyCode == Enum.KeyCode.P and UIS:IsKeyDown(Enum.KeyCode.LeftShift) then
		print("Special combo!")
	end
end)
--11
local button = script.Parent:WaitForChild("ToggleButton")
local frame = script.Parent:WaitForChild("TargetFrame")
local isOpen = false

button.MouseButton1Click:Connect(function()
	isOpen = not isOpen
	frame.Visible = isOpen
end)



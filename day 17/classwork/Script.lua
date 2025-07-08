local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(function(input, gameProcessed)
	print("input")

	if input.KeyCode == Enum.KeyCode.E then
		print("You pressed E keybutton")
	end
end)




local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(function(input, gameProcessed)
	print("input")

	if gameProcessed then
		return 
	end

	if input.KeyCode == Enum.KeyCode.E then
		print("You pressed E keybutton")
	end
end)




local gui = script.Parent
local button = gui:WaitForChild("TextButton")

local defaultColor = button.BackgroundColor3


button.MouseButton1Click:Connect(function()
	print("You clicked on the button")
end)


button.MouseEnter:Connect(function()
	button.BackgroundColor3 = Color3.fromRGB(255, 200, 200)
end)

button.MouseLeave:Connect(function()
	button.BackgroundColor3 = defaultColor
end)


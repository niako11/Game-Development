

local part = Instance.new("Part")
part.Size = Vector3.new(5, 1, 5)
part.Position = Vector3.new(0, 10, 0)
part.Anchored = true
part.Parent = workspace

part.Touched:Connect(function(hit)
	if hit.Parent:FindFirstChild("Humanoid") then  
		print("Player ?????: " .. hit.Parent.Name)
	end
end)


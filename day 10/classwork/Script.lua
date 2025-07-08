local part = Instance.new("Part")
part.Size = Vector3.new(5,1,5)
part.Position = Vector3.new(0, 5, 0)
part.Anchored = true
part.Parent = workspace

part.Touched:Connect(function(hit)
	print("Character has touched part")
end)



local part = Instance.new("Part")
part.Size = Vector3.new(5,1,5)
part.Position = Vector3.new(10, 5, 0)
part.Anchored = true
part.Parent = workspace

part.Touched:Connect(function(hit)
	print("Touched object:", hit.Name)
end)


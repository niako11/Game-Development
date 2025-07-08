--???????? 3
local brick = script.Parent

brick.Touched:Connect(function(hit)
	local character = hit.Parent
	local humanoid = character:FindFirstChild("Humanoid")

	if humanoid then
		humanoid.Health = 0
		brick:Destroy() -- ??????? ????? ?? ???? ????????? ??????
	end
end)
--davaleba 4
local brick = script.Parent

brick.Touched:Connect(function(hit)
	local character = hit.Parent
	local humanoid = character:FindFirstChild("Humanoid")

	if humanoid and character.Name == "Player1" then
		humanoid.Health = 0
	end
end)
--davaleba 5
local part = script.Parent
local clickDetector = part:FindFirstChild("ClickDetector")

clickDetector.MouseClick:Connect(function()
	part.BrickColor = BrickColor.new("Bright red")
end)
--davaleba 6
local door = script.Parent
local clickDetector = door:FindFirstChild("ClickDetector")

clickDetector.MouseClick:Connect(function()
	door.Position = door.Position + Vector3.new(0, 5, 0)
end)
--davaleba 7
local part = script.Parent
local clickDetector = part:FindFirstChild("ClickDetector")

clickDetector.MouseClick:Connect(function(player)
	print(player.Name .. " ???????? ??????")
end)
--davaeleba 8
wait(5)

local part = Instance.new("Part")
part.Name = "MyPart"
part.Size = Vector3.new(4, 1, 4)
part.Position = Vector3.new(0, 10, 0)
part.Anchored = true
part.Parent = workspace

local part = workspace:WaitForChild("MyPart")
part.BrickColor = BrickColor.new("Bright red")

--davaleba 9
local foundPart = workspace:FindFirstChild("SomePart")

if foundPart then
	print("????????!")
else
	print("??? ????????")
end
--davaleba 10
local door = workspace:WaitForChild("SecretDoor")

door.Transparency = 0.2
door.CanCollide = true
--davaleba 11
-- ????? ??????
script.Parent.Part1.ClickDetector.MouseClick:Connect(function()
	script.Parent.Part1.BrickColor = BrickColor.new("Bright blue")
end)

-- ???????
script.Parent.Part2.ClickDetector.MouseClick:Connect(function()
	script.Parent.Part2:Destroy()
end)

-- ????? ??????
script.Parent.Part3.ClickDetector.MouseClick:Connect(function()
	script.Parent.Part3.Size = script.Parent.Part3.Size + Vector3.new(2, 2, 2)
end)
--davaleba 12
local brick = script.Parent
local touchedOnce = false

brick.Touched:Connect(function(hit)
	local character = hit.Parent
	local humanoid = character:FindFirstChild("Humanoid")

	if humanoid then
		if touchedOnce then
			humanoid.Health = 0
		else
			print("???????? ????? ????????")
			touchedOnce = true
		end
	end
end)
--davaleba 13
local brick = script.Parent
brick.Touched:Connect(function(hit)
	local h = hit.Parent:FindFirstChild("Humanoid")
	if h then
		h.Health = 0
	end
end)
local brick = script.Parent
brick.Touched:Connect(function(hit)
	local player = game.Players:GetPlayerFromCharacter(hit.Parent)
	if player then
		player.RespawnLocation = brick
	end
end)

-- 2
local collectionService = game:GetService("CollectionService")
local function onTouch(hit)
	local character = hit.Parent  
	local humanoid = character:FindFirstChild("Humanoid")  

	if humanoid then
		while collectionService:HasTag(hit.Parent, "healZone") do
			humanoid.Health = humanoid.Health + 1 
			task.wait(1)  
		end
	end
end

for _, zone in pairs(collectionService:GetTagged("healZone")) do
	zone.Touched:Connect(onTouch)
end
-- 3
local collectionService = game:GetService("CollectionService")

collectionService:GetInstanceRemovedSignal("killBrick"):Connect(function(object)
	print("killBrick tag has been removed from object: " .. object.Name)
end)
-- 4
local collectionService = game:GetService("CollectionService")


game.Players.PlayerAdded:Connect(function(player)
	local spawnPoints = collectionService:GetTagged("spawnPoint")

	local randomSpawn = spawnPoints[math.random(1, #spawnPoints)]

	if randomSpawn then
		player.CharacterAdded:Connect(function(character)
			character:SetPrimaryPartCFrame(randomSpawn.CFrame)
		end)
	end
end)
-- 5
local collectionService = game:GetService("CollectionService")
for _, zone in pairs(collectionService:GetTagged("dangerZone")) do
	local zonePart = zone
	local transparency = 0  
	local color = Color3.fromRGB(255, 0, 0)

	while true do
		zonePart.Transparency = transparency
		zonePart.Color = color
		transparency = transparency == 0 and 0.5 or 0
		color = color == Color3.fromRGB(255, 0, 0) and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0) 
		task.wait(0.5) 
	end
end
-- 6
local collectionService = game:GetService("CollectionService")

local part = game.Workspace.Part  
collectionService:RemoveTag(part, "killBrick")


task.wait(5)
collectionService:AddTag(part, "killBrick")

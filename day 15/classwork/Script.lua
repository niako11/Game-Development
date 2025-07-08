
local collectionService = game:GetService("CollectionService")
local killBricks = collectionService:GetTagged("killBrick")
for _, brick in pairs(killBricks) do
	print(brick.Name .. " ???? killBrick!")
end

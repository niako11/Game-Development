local Block = game.Workspace.GOALBlock


Block.Anchored = true
Block.Reflectanse = 0.5
Block.CastShadow = false
Block.Material = Enum.Material.Plastic

local Red = math.random(1, 255)
local Green = math.random(3, 255)
local Blue = math.random(5, 255)

Block.Color = Color3.fromRGB(Red , Green , Blue)


local number = 3
local random = math.random(1, 20)

if random > number then
	print("random number is greater")
end
if random < number then 
	print("second is greater")
end
if random == number then
	print("equal")
end
if random ~= number then
	print("they are not equal")
end
--davaleba 2
local part = Instance.new("Part")
part.Anchored = true         -- ????????????
part.CastShadow = false      -- ??????? ?? ???????
part.CanCollide = false      -- ???????? ???????????
part.Color = Color3.new(1, 0, 0) -- ?????? ????
part.Transparency = 0.3      -- ?????????????
part.Reflectance = 0.5       -- ???????????
part.Parent = workspace
--davaleba 3
local r = math.random(0, 255)
local g = math.random(0, 255)
local b = math.random(0, 255)

local part = Instance.new("Part")
part.Color = Color3.fromRGB(r, g, b)
part.Size = Vector3.new(4, 1, 2)
part.Position = Vector3.new(0, 5, 0)
part.Anchored = true
part.Parent = workspace
--davaleba 4 
local part = Instance.new("Part")
part.Transparency = 0.7 -- ??????, ????????????? ???? 0.7
part.Anchored = true

if part.Transparency > 0 then
	part.Transparency = 0
else
	part.Transparency = 0.5
end

part.Parent = workspace
--davaleba 5 
local part = Instance.new("Part")
part.CanCollide = true -- ?? false
part.Anchored = true

if part.CanCollide == true then
	part.CanCollide = false
else
	part.CanCollide = true
end

part.Parent = workspace
--davaleba 6
local num = math.random(0, 255)

local part = Instance.new("Part")
part.Anchored = true

if num > 128 then
	part.Color = Color3.fromRGB(255, 0, 0) -- ??????
else
	part.Color = Color3.fromRGB(0, 0, 255) -- ?????
end

part.Parent = workspace
--davaleba 7
local a = math.random()
local b = math.random()

local part = Instance.new("Part")
part.Anchored = true

if a > b then
	part.Size = Vector3.new(10, 10, 10) -- ???? ????
else
	part.Size = Vector3.new(2, 2, 2)    -- ?????? ????
end

part.Parent = workspace


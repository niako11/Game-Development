--davaleba 2
local light = Instance.new("Part")
light.Name = "Lamp"
light.Anchored = true
light.Size = Vector3.new(2, 1, 2)
light.Position = Vector3.new(0, 5, 0)
light.Parent = workspace

local isOn = true

while isOn do
	light.Color = Color3.new(1, 1, 0) -- ???????
	wait(0.5)
	light.Color = Color3.new(1, 1, 1) -- ?????
	wait(0.5)
end
--davaleba 3
local count = 0

repeat
	local box = Instance.new("Part")
	box.Size = Vector3.new(3, 1, 3)
	box.Position = Vector3.new(count * 4, 0.5, 0)
	box.Anchored = true
	box.Color = Color3.fromRGB(math.random(255), math.random(255), math.random(255))
	box.Parent = workspace
	count += 1
	wait(0.1)
until count >= 5
--davaleba 4
for i = 1, 10 do
	local step = Instance.new("Part")
	step.Size = Vector3.new(4, 1, 4)
	step.Anchored = true
	step.Position = Vector3.new(-i * 5, i, 0)
	step.Color = Color3.fromRGB(150, 150, 150)
	step.Parent = workspace
end
--davaleba 5
for i = 1, 10 do
	local block = Instance.new("Part")
	block.Size = Vector3.new(4, 1, 4)
	block.Anchored = true
	block.Position = Vector3.new(i * 5, 0.5, 0)
	block.Color = Color3.fromRGB(100, 100, 255)
	block.Parent = workspace
end
--davaleba 6
for i = 20, 40 do
	print(i)
end
--davaleba 7
for i = 30, 100, 2 do
	print(i)
end
--davaleba 8
for i = 50, 30, -1 do
	print(i)
end
--davaleba 9
local yPosition = 0
local step = 3

repeat
	local part = Instance.new("Part")
	part.Size = Vector3.new(4, 1, 4)
	part.Position = Vector3.new(0, yPosition, 0)
	part.Anchored = true
	part.Color = Color3.fromRGB(math.random(255), math.random(255), math.random(255))
	part.Parent = workspace

	yPosition += step
	wait(0.1)
until yPosition >= 30
--davaleba 10
local isRedCreated = false

repeat
	local part = Instance.new("Part")
	part.Size = Vector3.new(3, 1, 3)
	part.Position = Vector3.new(math.random(-20, 20), 1, math.random(-20, 20))
	part.Anchored = true

	local r = math.random(255)
	local g = math.random(255)
	local b = math.random(255)

	part.Color = Color3.fromRGB(r, g, b)
	part.Parent = workspace

	if r == 255 and g == 0 and b == 0 then
		isRedCreated = true
	end

	wait(0.1)
until isRedCreated


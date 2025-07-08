--davaleba 2
local colors = {}

for i = 1, 5 do
	local r = math.random(0, 255)
	local g = math.random(0, 255)
	local b = math.random(0, 255)
	table.insert(colors, Color3.fromRGB(r, g, b))
end

for i, color in ipairs(colors) do
	print("Color " .. i, color)
end
--davaleba 3
local numbers = {1, 2, 3, 4, 5}
table.insert(numbers, 6)

for i, num in ipairs(numbers) do
	print(num)
end
--davaleba 4
local fruits = {"apple", "banana", "grape", "orange"}

for i, fruit in ipairs(fruits) do
	if fruit == "grape" then
		table.remove(fruits, i)
		break
	end
end

for i, fruit in ipairs(fruits) do
	print(fruit)
end
--davaleba 5
local nums = {3, 5, 7, 9, 11}
local found = false

for i, num in ipairs(nums) do
	if num == 7 then
		found = true
		break
	end
end

if found then
	print("????????")
else
	print("?? ????")
end
--davaleba 6
local t = {10, 20, 30, 40}

-- ????????? ?????????? ????
t[5] = t[4]
t[4] = t[3]
t[3] = 25

for i, v in ipairs(t) do
	print(v)
end
--davaleba 7
local Scores = {
	Alex = 5,
	Bella = 8,
	Chris = 3
}

for name, score in pairs(Scores) do
	print(name .. " ???? " .. score .. " ????")
end
--davaleba 8
Scores["Chris"] += 2

for name, score in pairs(Scores) do
	print(name .. " ????? ?????: " .. score)
end
--davaleba 9
local positions = {}

for i = 1, 5 do
	local pos = Vector3.new(math.random(-50, 50), math.random(0, 20), math.random(-50, 50))
	table.insert(positions, pos)
end

for i, pos in ipairs(positions) do
	print("Position " .. i .. ": " .. tostring(pos))
end
--davaleba 10
for i = 1, 10 do
	local part = Instance.new("Part")
	part.Size = Vector3.new(2, 2, 2)
	part.Position = Vector3.new(i * 4, 2, 0)
	part.Anchored = true

	local r = math.random(0, 255)
	local g = math.random(0, 255)
	local b = math.random(0, 255)

	local color = Color3.fromRGB(r, g, b)
	part.Color = color
	part.Name = "Block_" .. i
	part.Parent = workspace

	if r == 0 and g == 255 and b == 0 then
		print("?????? ????? ????????: " .. part.Name)
	end
end
--davaleba 11
local numbers = {1, 4, 7, 10, 13, 16}

-- ???????? ?????, ??? ????????? ?? ??????
for i = #numbers, 1, -1 do
	if numbers[i] % 2 == 0 then
		table.remove(numbers, i)
	end
end

for i, num in ipairs(numbers) do
	print(num)
end


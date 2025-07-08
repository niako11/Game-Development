--1 davaleba
local part = game.Workspace.Part
--1
local growthVector = Vector3.new(1, 1, 1) 
while true do 
	part.Size = part.Size + growthVector 
	wait(1)
end

--2 davaleba
while true do
	local randomX = math.random(-50, 50) 
	local randomY = math.random(0, 100) 
	local randomZ = math.random(-50, 50)

	
	part.Position = Vector3.new(randomX, randomY, randomZ)

	wait(1)
end

--3 davaleba
while true do
	local red = math.random(0, 255)
	local green = math.random(0, 255)
	local blue = math.random(0, 255)
	
	part.Color = Color3.fromRGB(red, green, blue)
	wait(2)
end

--4 davaleba
--4
while true do
	if part.Size.X > 10 then
		part.Size = Vector3.new(part.Size.X * 0.9, part.Size.Y, part.Size.Z) 
	end
	wait(2)
end

--5 davaleba











--6 davaleba
local Right = Vector3.new(-10, part.Position.Y, part.Position.Z)
local Left = Vector3.new(10, part.Position.Y, part.Position.Z)

while true do
	part.Position = Right
	wait(0.5)

	part.Position = Left
	wait(0.5)
end

--7 davaleba
local startPosition = part.Position

while true do
	wait(0.1)
	if part.Position.Y > 50 then
		part.Position = startPosition
	end
end

--8 davaleba
local randomNumber = math.random(1, 10)

if randomNumber > 5 then
	part.Color = Color3.new(0, 1, 0)
else
	part.Color = Color3.new(0, 0, 1)
end

--9 davaleba
local colors = {
	Color3.new(1, 0, 0), 
	Color3.new(0, 1, 0), 
	Color3.new(0, 0, 1), 
	Color3.new(1, 1, 0), 
	Color3.new(1, 0, 1),
	Color3.new(0, 1, 1) 
}

local randomIndex = math.random(1, #colors)
part.Color = colors[randomIndex]

--10 davaleba
while true do
	wait(0.1)
	if part.Position.Y < 3 then
		part.Transparency = 1
	else
		part.Transparency = 0 
	end
end

--11 davaleba


--Integer 
--Float 
--String
--Boolean 
--Date 
--Datetime
--Nill 
--List
-- davaleba 12
local part = workspace:WaitForChild("MyPart") 

while true do
	if part.Position.Y < 3 then
		part.Transparency = 1
	else
		part.Transparency = 0
	end

	wait(0.1)
end
--davaleba 13
local mixedTable = {
	42,                                 -- [1] ?????? (Number)
	"Hello, Roblox!",                   -- [2] ?????? (String)
	true,                               -- [3] ???????? ??????????? (Boolean)
	nil,                                -- [4] ???????? ??????????? (Nil)
	Vector3.new(1, 2, 3),               -- [5] ??????? (Vector3)
	Color3.fromRGB(255, 0, 0),          -- [6] ???? (Color3)
	CFrame.new(0, 5, 0),                -- [7] ????????????/??????? (CFrame)
	Enum.Material.Wood,                 -- [8] ????? (Enum)
	Instance.new("Part"),               -- [9] ??????? (Instance)
	{1, 2, 3},                          -- [10] ?????????? ????????? (Table)
	function() print("Hello!") end,     -- [11] ??????? (Function)
	workspace,                          -- [12] ???????? ??????? (Instance)
	UDim2.new(0.5, 0, 0.5, 0),          -- [13] UI ???? (UDim2)
	BrickColor.Random(),               -- [14] ?????? ???? (BrickColor)
	Ray.new(Vector3.zero, Vector3.one) -- [15] ????? (Ray)
}































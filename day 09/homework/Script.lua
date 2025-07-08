--davaleba 3
function sumTable(tbl)
	local sum = 0
	for _, num in ipairs(tbl) do
		sum += num
	end
	return sum
end
--davaleba 4
function maxNumber(a, b)
	if a > b then
		return a
	else
		return b
	end
end
--davaleba 5
function whitenColors(colorTable)
	local newColors = {}
	for i = 1, #colorTable do
		newColors[i] = Color3.new(1, 1, 1)
	end
	return newColors
end
--davaleba 6
function sayHello()
	print("Hello, World!")
end
--davaleba 7
function square(n)
	return n * n
end
--davaleba 8
function getRandomNumber()
	return math.random(1, 100)
end
--davaleba 9
function elevateY(vector)
	return Vector3.new(vector.X, vector.Y + 10, vector.Z)
end
--davaleba 10
function addFiveToEach(tbl)
	for i = 1, #tbl do
		tbl[i] += 5
	end
end
--davaleba 11
function createRandomPart()
	local part = Instance.new("Part")
	part.Size = Vector3.new(math.random(1, 5), math.random(1, 5), math.random(1, 5))
	part.Color = Color3.fromRGB(math.random(0,255), math.random(0,255), math.random(0,255))
	part.Position = Vector3.new(0, 10, 0)
	part.Anchored = true
	part.Parent = workspace
end
--davaleba 12
function incrementScores(scoreTable)
	for player, score in pairs(scoreTable) do
		scoreTable[player] = score + 1
	end
	return scoreTable
end


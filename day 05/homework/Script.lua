local part = game.Workspace.Part
local x = math.random(-90, 90)
local y = math.random(-90, 90)
local z = math.random(-90, 90)

local position = Vector3.new(x,y,z)

print(position)


local victor1 = Vector3.new(math.random(-100 , 100), math.random(-100, 100), math.random(-100, 100))
local vector2 = Vector3.new(math.random(-100 , 100), math.random(-100, 100), math.random(-100, 100))

print(victor1)
print(victor2)

if victor1.X > victor2.X then
	print(victor1.X)
elseif
    victor1.X < victor2.X then
    print(victor2.X
else 
    print(victor1.X)
end


local x = math.random(-90, 90)

print(x)
if x > 0 then
	print(Color3.new(1, 0, 0))
elseif x < 0 then
	print((Color3.new(0, 0, 1))
else 
	print(Color3.new(1, 1, 1))

end

local x = math.random(-20, 20)
local z = math.random(-20, 20)
local y = 0

local Movevector Vector3.new(x, y , z)

print(Movevector)

local point1 = Vector3.new(math.randrom(-50, 50) ,math.randrom(-50, 50), math.randrom(-50, 50))
local point2 = Vector3.new(math.randrom(-50, 50) ,math.randrom(-50, 50), math.randrom(-50, 50))

print(point1)
print(point2)

local distance = (point1 - point2).Magnitude
print(distance)

local point = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
print(point)
if point.X >= -5 and point.X <= 5 and  
	point.Y >= -5 and point.X <= 5 and then
	point.Z >= -5 and point.X <= 5 and
		print('??????')
else 
	print('?????')
end
local part = game.Workspace.Part
while true do
	wait(1)
	part.color = Color3.fromRGB( 
		math.random(0, 200) ,
		math.random(0, 200) ,
		math.random(0, 200)
		
	)
end

local num = 0
while num < 20 do
	num += 1
	print(num)
end
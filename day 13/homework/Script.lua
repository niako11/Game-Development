--davaleba 2

local myModel = workspace:WaitForChild("MyModel") 
for _, part in pairs(myModel:GetChildren()) do 
	print(part.Name)  
end

--davaleba 3

local myModel = workspace:WaitForChild("MyModel") 
for _, part in pairs(myModel:GetChildren()) do
	if part:IsA("Part") then 
		part.Color = Color3.fromRGB(255, 255, 255)  
	end
end

--davaleba 4

local myModel = workspace:WaitForChild("MyModel")  
local childCount = #myModel:GetChildren()  
print("Child count: " .. childCount)  

--davaleba 5

local toHide = workspace:WaitForChild("ToHide")  
for _, part in pairs(toHide:GetChildren()) do  
	if part:IsA("Part") then  
		part.Transparency = 1 
		part.CanCollide = false
	end
end
--davaleba 6

local part = script.Parent

part.Touched:Connect(function(hit)
	local player = game.Players:GetPlayerFromCharacter(hit.Parent)  
	if player then
		print(player.Name .. " touched the part")  
	end
end)
--davaleba 7


local part = script.Parent

part.Touched:Connect(function(hit)
	local player = game.Players:GetPlayerFromCharacter(hit.Parent)  
	if player then
		print(player.Name .. " touched the part")  
	end
end)
--davaleba 8

local part = script.Parent 

part.Touched:Connect(function(hit)
	local player = game.Players:GetPlayerFromCharacter(hit.Parent)
	if player then
		local humanoid = hit.Parent:FindFirstChild("Humanoid")  
		if humanoid then
			humanoid.Health = humanoid.Health - 20  
		end
	end
end)
--davaleba 9

local part = script.Parent  

part.Touched:Connect(function(hit)
	local player = game.Players:GetPlayerFromCharacter(hit.Parent) 
	if player then
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("You have touched the secret block, " .. player.Name, "All")  -- Chat-?? ????????
	end
end)
--davaleba 10


local part = script.Parent 

part.Touched:Connect(function(hit)
	local player = game.Players:GetPlayerFromCharacter(hit.Parent) 
	if player then
		print(player.Name .. " touched the part")  
	end
end)






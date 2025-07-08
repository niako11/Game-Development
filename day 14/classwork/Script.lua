
local part = script.Parent 

game.Players.PlayerAdded:Connect(function(player)
	local leaderstats = Instance.new("Folder")  
	leaderstats.Name = "leaderstats" 
	leaderstats.Parent = player 
	local coins = Instance.new("IntValue") 
	coins.Name = "Coins"  
	coins.Value = 0
	coins.Parent = leaderstats  
end)


part.Touched:Connect(function(hit)
	local player = game.Players:GetPlayerFromCharacter(hit.Parent) 
	if player then  
		local coins = player.leaderstats and player.leaderstats:FindFirstChild("Coins")
		if coins then
			coins.Value = coins.Value + 1  
		end
	end
end)

-- 1
local part = script.Parent 
game.Players.PlayerAdded:Connect(function(player)
	local leaderstats = player:FindFirstChild("leaderstats")
	if not leaderstats then
		leaderstats = Instance.new("Folder")
		leaderstats.Name = "leaderstats"
		leaderstats.Parent = player
	end

	local score = leaderstats:FindFirstChild("Score")
	if not score then
		score = Instance.new("IntValue")
		score.Name = "Score"
		score.Value = 0 
		score.Parent = leaderstats
	end
end)

part.Touched:Connect(function(hit)
	local player = game.Players:GetPlayerFromCharacter(hit.Parent)
	if player then  
		local leaderstats = player:FindFirstChild("leaderstats")
		if leaderstats then
			local score = leaderstats:FindFirstChild("Score")
			if score then
				score.Value = score.Value + 50  
				print(player.Name .. " ???? ???? " .. score.Value .. " ????!")  -
			end
		end
	end
end)

-- 2
local part = script.Parent 

part.Touched:Connect(function(hit)
	local player = game.Players:GetPlayerFromCharacter(hit.Parent)

	if player then
		print("Player is safe: " .. player.Name) 
	end
end)

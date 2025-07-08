local part = workspace:WaitForChild("Point")

part.Touched:Connect(function(hit)
	local player = game.Players:GetPlayerFromCharacter((hit.Parent))
	if not player then return end
	player.leaderstats.Points.Value += 1
end)


local player = game.Players.LocalPlayer
local coins = player:WaitForChild("leaderstats"):WaitForChild("Coins")
local label = script.Parent

coins.Changed:Connect(function()
	label.Text = "Coins" .. coins.Value
end)
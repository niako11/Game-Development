-- 2
local collectionService = game:GetService("CollectionService")

local function onBoostZoneTouch(hit)
	local character = hit.Parent
	local humanoid = character:FindFirstChild("Humanoid")

	if humanoid then
		task.delay(3, function()
			humanoid.WalkSpeed = humanoid.WalkSpeed + 10
		end)
	end
end

for _, zone in pairs(collectionService:GetTagged("boostZone")) do
	zone.Touched:Connect(onBoostZoneTouch)
end
-- 3
local collectionService = game:GetService("CollectionService")

local function onDelayHealTouch(hit)
	local character = hit.Parent
	local humanoid = character:FindFirstChild("Humanoid")

	if humanoid then
		task.delay(2, function()
			humanoid.Health = humanoid.Health + 20
		end)
	end
end

for _, zone in pairs(collectionService:GetTagged("delayHeal")) do
	zone.Touched:Connect(onDelayHealTouch)
end
-- 4
local collectionService = game:GetService("CollectionService")

local function onDelayedTagTouch(hit)
	local character = hit.Parent
	if character:IsA("Model") then
		collectionService:RemoveTag(hit, "delayedTag")
		task.delay(5, function()
			collectionService:AddTag(hit, "delayedTag")
		end)
	end
end

for _, part in pairs(collectionService:GetTagged("delayedTag")) do
	part.Touched:Connect(onDelayedTagTouch)
end
-- 5
local collectionService = game:GetService("CollectionService")

while true do
	for _, zone in pairs(collectionService:GetTagged("flickerZone")) do
		zone.Color = zone.Color == Color3.fromRGB(255, 0, 0) and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(255, 0, 0)
	end
	task.wait(1)
end

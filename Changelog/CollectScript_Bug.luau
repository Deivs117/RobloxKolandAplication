local player = game:GetService("Players") -- Gets the service for players
local coin = script.Parent -- Path to coin

function giveCoin(part)
	if part.Parent:FindFirstChild("Humanoid") == nil then -- If the touched part doesn't have a humanoid or the coin has been used then...
		return -- Return
	end
	local player = player:GetPlayerFromCharacter(part.Parent)
	player.leaderstats.Money.Value = player.leaderstats.Money.Value + 1

	coin.Transparency = 1 -- Makes coin invisible
	coin.Decal.Transparency = 1 -- Makes decal invisible
	script.Disabled = true -- Makes script disabled
	wait(5) -- The time it takes for the coin to respawn
	coin.Transparency = 0 -- Makes coin visible
	coin.Decal.Transparency = 0 -- Makes decal visible
	script.Disabled = false -- Makes script enabled
end

coin.Touched:Connect(giveCoin)

-- CÓDIGO CAMBIADO Deivs117
local Players = game:GetService("Players") -- Gets the service for players
-- CÓDIGO CAMBIADO Deivs117

local coin = script.Parent -- Path to coin

-- CÓDIGO AGREGADO Deivs117
local db = false -- Gets the service for players
-- CÓDIGO AGREGADO Deivs117

function giveCoin(part)
	-- CÓDIGO CAMBIADO Deivs117
	if db or part.Parent:FindFirstChild("Humanoid") == nil then -- If the touched part doesn't have a humanoid or the coin has been used then...
		return -- Return
	end
	db = true

	local player = Players:GetPlayerFromCharacter(part.Parent)

	if player then
		db = true

		player.leaderstats.Coins.Value = player.leaderstats.Coins.Value + 1

		coin.Transparency = 1 -- Makes coin invisible
		coin.Decal.Transparency = 1 -- Makes decal invisible
		-- NO ES NECESARIO POR EL DB -- script.Disabled = true -- Makes script disabled
		wait(5) -- The time it takes for the coin to respawn
		coin.Transparency = 0 -- Makes coin visible
		coin.Decal.Transparency = 0 -- Makes decal visible
		-- NO ES NECESARIO POR EL DB -- script.Disabled = false -- Makes script enabled

		db = false
	end
	-- CÓDIGO CAMBIADO Deivs117
end

coin.Touched:Connect(giveCoin)
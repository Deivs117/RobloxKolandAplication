local buyButton = script.Parent -- This is the part the player will click on
local clickDetector = buyButton.ClickDetector  -- This is the click detector inside the part
local upgradeCost = 3 -- This is the cost of the upgrade


local function giveUpgrade(player) 
	local humanoid = player.Character:findFirstChild("Humanoid") -- This finds the player's "Humanoid" file
	local playerStats = player:FindFirstChild("leaderstats") -- This finds the "leaderstats" folder in the player
	local playerCoins = playerStats:FindFirstChild("Coins") -- This finds the "Coins" stat in the "leaderstats" folder
	
	if playerCoins.Value >= upgradeCost then -- If the player has enough coins to buy the upgrade then...
		
		humanoid.UseJumpPower = true
		humanoid.JumpPower = humanoid.JumpPower + 100
	end
end

clickDetector.MouseClick:Connect(giveUpgrade)
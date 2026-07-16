game.Players.PlayerAdded:Connect(function(player) -- When a player joins the game...
	local folder = Instance.new("Folder", player) -- Creates a folder in the player
	folder.Name = "leaderstats" -- Name of the created folder
	local coins = Instance.new("IntValue", folder)
	coins.Name = "Coins" -- Name of your currency as it shows on the leaderboard
	coins.Value = 0 -- Amount of starting currency
end)
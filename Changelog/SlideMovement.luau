local TS = game:GetService("TweenService")
local info = TweenInfo.new(
	7,                         -- duration (s)
	Enum.EasingStyle.Cubic,
	Enum.EasingDirection.InOut,
	-1,                        -- loop forever
	true                       -- ping-pong
)
local tween = TS:Create(
	script.Parent, info,
	{ Position = Vector3.new(58.6, 37.598, 45) }
)
tween:Play()
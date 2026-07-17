local part = script.Parent
local speed = 3  -- degrees per frame
while true do
	task.wait()  -- 1 frame (~1/60s)
	part.Orientation += Vector3.new(0, speed, 0)
end
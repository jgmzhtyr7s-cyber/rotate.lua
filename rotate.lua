local p=game.Players.LocalPlayer
local c=p.Character or p.CharacterAdded:Wait()
local r=c:WaitForChild("HumanoidRootPart")

local ui=script.Parent.Frame
local t,s=ui.ToggleButton,ui.SpeedSlider
local on,spd=false,2

task.spawn(function()
	while task.wait() do
		if on then
			r.CFrame*=CFrame.Angles(0,math.rad(spd),0)
		end
	end
end)

t.MouseButton1Click:Connect(function()
	on=not on
	t.Text=on and "回転: ON" or "回転: OFF"
end)

s:GetPropertyChangedSignal("Value"):Connect(function()
	spd=s.Value
end)

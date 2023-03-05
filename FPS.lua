-- Gui to Lua
-- Version: 3.2

-- Instances:

local holder = Instance.new("ImageLabel")
local clock = Instance.new("ImageLabel")
local label = Instance.new("TextLabel")

--Properties:

holder.Name = "holder"
holder.Parent = game.StarterGui.fps
holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
holder.BackgroundTransparency = 1.000
holder.Position = UDim2.new(0.428770512, 0, 0.943696439, 0)
holder.Size = UDim2.new(0, 172, 0, 37)
holder.Image = "rbxassetid://3570695787"
holder.ImageColor3 = Color3.fromRGB(51, 46, 73)
holder.ScaleType = Enum.ScaleType.Slice
holder.SliceCenter = Rect.new(100, 100, 100, 100)
holder.SliceScale = 0.120

clock.Name = "clock"
clock.Parent = holder
clock.BackgroundTransparency = 1.000
clock.Position = UDim2.new(0.0406976752, -1, 0.134424165, 0)
clock.Size = UDim2.new(0, 27, 0, 27)
clock.Image = "rbxassetid://2774790436"

label.Name = "label"
label.Parent = holder
label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
label.BackgroundTransparency = 1.000
label.BorderSizePixel = 0
label.Position = UDim2.new(0.214972213, 0, 0.0263160504, 0)
label.Size = UDim2.new(0, 135, 0, 37)
label.Font = Enum.Font.Unknown
label.Text = "FPS"
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.TextScaled = true
label.TextSize = 14.000
label.TextWrapped = true

-- Scripts:

local function APHL_fake_script() -- label.LocalScript 
	local script = Instance.new('LocalScript', label)

	--Created by UraniumBanana5
	local runService = game:GetService("RunService")
	
	local fpsLabel = script.Parent
	local fps = 0
	
	runService.RenderStepped:Connect(function()
		fps = fps + 1
	end)
	
	while true do
		fpsLabel.Text = ("FPS: "..fps)
		fps = 0
		wait(1)
	end
	
end
coroutine.wrap(APHL_fake_script)()
 

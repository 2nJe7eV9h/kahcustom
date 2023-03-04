-- Gui to Lua
-- Version: 3.2

-- Instances:

local fps = Instance.new("ScreenGui")
local holder = Instance.new("ImageLabel")
local clock = Instance.new("ImageLabel")
local label = Instance.new("TextLabel")

--Properties:

fps.Name = "fps"
fps.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

holder.Name = "holder"
holder.Parent = fps
holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
holder.BackgroundTransparency = 1.000
holder.Position = UDim2.new(0.38936165, 0, 0.930232525, 0)
holder.Size = UDim2.new(0, 311, 0, 47)
holder.Image = "rbxassetid://3570695787"
holder.ImageColor3 = Color3.fromRGB(91, 77, 138)
holder.ScaleType = Enum.ScaleType.Slice
holder.SliceCenter = Rect.new(100, 100, 100, 100)
holder.SliceScale = 0.120

clock.Name = "clock"
clock.Parent = holder
clock.BackgroundTransparency = 1.000
clock.Position = UDim2.new(0.0353697762, 0, 0.106382981, 0)
clock.Size = UDim2.new(0, 39, 0, 37)
clock.Image = "rbxassetid://2774790436"

label.Name = "label"
label.Parent = holder
label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
label.BackgroundTransparency = 1.000
label.BorderSizePixel = 0
label.Position = UDim2.new(0.356913179, 0, 0, 0)
label.Size = UDim2.new(0, 200, 0, 47)
label.Font = Enum.Font.GothamBold
label.Text = "FPS"
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.TextScaled = true
label.TextSize = 14.000
label.TextWrapped = true

-- Scripts:

local function JTQU_fake_script() -- label.LocalScript 
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
coroutine.wrap(JTQU_fake_script)()

-- Gui to Lua
-- Version: 3.2

-- Instances:

local e = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Shadow = Instance.new("ImageLabel")
local UIGradient = Instance.new("UIGradient")
local wel = Instance.new("TextLabel")
local come = Instance.new("TextLabel")
local a = Instance.new("TextLabel")
local _2221a = Instance.new("TextLabel")

--Properties:

e.Name = "e"
e.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
e.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = e
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.519127786, 0, 0.543833554, 0)
Main.Size = UDim2.new(0, 400, 0, 239)

UICorner.CornerRadius = UDim.new(0, 9)
UICorner.Parent = Main

Shadow.Name = "Shadow"
Shadow.Parent = Main
Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Shadow.BackgroundTransparency = 1.000
Shadow.BorderSizePixel = 0
Shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
Shadow.Size = UDim2.new(0.914285719, 70, 1.35555553, 60)
Shadow.ZIndex = 0
Shadow.Image = "rbxassetid://3523728077"
Shadow.ImageColor3 = Color3.fromRGB(24, 24, 24)
Shadow.ImageTransparency = 0.700

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(34, 85, 124)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(39, 39, 39))}
UIGradient.Offset = Vector2.new(0, 0.400000006)
UIGradient.Rotation = 250
UIGradient.Parent = Main

wel.Name = "wel"
wel.Parent = Main
wel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
wel.BackgroundTransparency = 1.000
wel.Position = UDim2.new(0.0985714719, 0, 0.0653649494, 0)
wel.Size = UDim2.new(0, 322, 0, 36)
wel.Font = Enum.Font.Unknown
wel.Text = "Welcome, to Scriporia."
wel.TextColor3 = Color3.fromRGB(255, 255, 255)
wel.TextScaled = true
wel.TextSize = 14.000
wel.TextWrapped = true

come.Name = "come"
come.Parent = Main
come.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
come.BackgroundTransparency = 1.000
come.Position = UDim2.new(0.0985714719, 0, 0.267828912, 0)
come.Size = UDim2.new(0, 322, 0, 50)
come.Font = Enum.Font.Unknown
come.Text = "This script is in development."
come.TextColor3 = Color3.fromRGB(255, 255, 255)
come.TextScaled = true
come.TextSize = 14.000
come.TextWrapped = true

a.Name = "a"
a.Parent = Main
a.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
a.BackgroundTransparency = 1.000
a.Position = UDim2.new(0.0985714719, 0, 0.477033883, 0)
a.Size = UDim2.new(0, 322, 0, 50)
a.Font = Enum.Font.Unknown
a.Text = "Your script is loading soon,"
a.TextColor3 = Color3.fromRGB(255, 255, 255)
a.TextScaled = true
a.TextSize = 14.000
a.TextWrapped = true

_2221a.Name = "2221a"
_2221a.Parent = Main
_2221a.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_2221a.BackgroundTransparency = 1.000
_2221a.Position = UDim2.new(0.0985714719, 0, 0.686238885, 0)
_2221a.Size = UDim2.new(0, 322, 0, 50)
_2221a.Font = Enum.Font.Unknown
_2221a.Text = "name"
_2221a.TextColor3 = Color3.fromRGB(255, 255, 255)
_2221a.TextSize = 30.000
_2221a.TextWrapped = true

-- Scripts:

local function VYOD_fake_script() -- _2221a.LocalScript 
	local script = Instance.new('LocalScript', _2221a)

	script.Parent.Text = game.Players.LocalPlayer.Name
end
coroutine.wrap(VYOD_fake_script)()

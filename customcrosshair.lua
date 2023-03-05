print("may be off by a little bit(custom crosshair)")
-- Instances:

local abbsd = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")

--Properties:

abbsd.Name = "abbsd"
abbsd.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
abbsd.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageLabel.Parent = abbsd
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0.5, -10, 0.5, -10)
ImageLabel.Size = UDim2.new(0, 20, 0, 20)
ImageLabel.Image = (imgnumber)

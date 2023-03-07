local Callback = Instance.new("BindableFunction")
function Callback.OnInvoke(Button)
    
end

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Script Notification",
    Text = "BGS Ran.",
    Icon = 3610247188,
    Duration = 4,
    Callback = Callback,
    Button1 = "",
    Button2 = "",
})
Callback:Destroy() 

local find1 = game.Lighting:FindFirstChildWhichIsA("BloomEffect") if find1 then
    game.Lighting:FindFirstChildWhichIsA("BloomEffect"):Destroy()
end
local find2 = game.Lighting:FindFirstChildWhichIsA("SunRaysEffect") if find2 then
    game.Lighting:FindFirstChildWhichIsA("SunRaysEffect"):Destroy()
end
local find3 = game.Lighting:FindFirstChildWhichIsA("ColorCorrectionEffect") if find3 then
    game.Lighting:FindFirstChildWhichIsA("ColorCorrectionEffect"):Destroy()
end
local find4 = game.Lighting:FindFirstChildWhichIsA("BlurEffect") if find4 then
    game.Lighting:FindFirstChildWhichIsA("BlurEffect")
end
local find5 = game.Lighting:FindFirstChildWhichIsA("Sky") if find5 then
    game.Lighting:FindFirstChildWhichIsA("Sky"):Destroy()
end
local bloom = Instance.new("BloomEffect",game.Lighting)
local sunray = Instance.new("SunRaysEffect",game.Lighting)
local color = Instance.new("ColorCorrectionEffect",game.Lighting) 
local atmo = Instance.new("Atmosphere",game.Lighting)
local atmo2 = Instance.new("Atmosphere",game.Lighting)
local sky = Instance.new("Sky",game.Lighting)
game.Lighting.ClockTime = 13.74
game.Lighting.ExposureCompensation = 0.34
game.Lighting.ShadowSoftness = 1
game.Lighting.EnvironmentDiffuseScale = 0.343
game.Lighting.EnvironmentSpecularScale = 1
game.Lighting.Brightness = 2
game.Lighting.ColorShift_Top = Color3.fromRGB(118,117,108)
game.Lighting.OutdoorAmbient = Color3.fromRGB(141,141,141)
game.Lighting.GeographicLatitude = 100
game.Lighting.Ambient = Color3.fromRGB(112,112,112)
atmo.Density = 0.348
atmo.Offset = 0.199
atmo.Color = Color3.fromRGB(216, 255, 250)
atmo.Decay = Color3.fromRGB(92, 60, 13)
atmo.Glare = 0.68
atmo.Haze = 0.36
atmo2.Density = 0.348
atmo2.Offset = 0.199
atmo2.Color = Color3.fromRGB(216, 255, 250)
atmo2.Decay = Color3.fromRGB(92, 60, 13)
atmo2.Glare = 0.68
atmo2.Haze = 0.36
bloom.Intensity = 0.5
bloom.Size = 22
bloom.Threshold = 1.5
sunray.Intensity = 0.2
sunray.Spread = 1
color.Contrast = 0.275
color.Saturation = 0.2
color.TintColor = Color3.fromRGB(255,252,224)
color.Brightness = 0.05
sky.StarCount = 5000
sky.MoonAngularSize = 8.75
sky.SunAngularSize = 18

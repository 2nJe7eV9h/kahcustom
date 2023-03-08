
--[[Roblox Player Added Notifier. May become something different in the future
     _                 _   _ 
    | |    _  _  __ _ | | | |
    | |__ | || |/ _` || |_| |
    |____| \_._|\__/_| \___/ 
]]
local Notification = loadstring(game:HttpGet("https://api.irisapp.ca/Scripts/IrisBetterNotifications.lua"))()
local plrs = game:GetService("Players")


Notification.Notify("Script has loaded.", "Player join detection script has loaded.", "rbxassetid://11547423163", {
    Duration = 3.75,       
    Main = {
        Rounding = true,
    }
});

game:GetService("Players").PlayerAdded:Connect(function(plr)
    Notification.Notify("Player has joined the game.", (plr.Name), "rbxassetid://11547423163", { --Would try to get the added players image, but couldn't figure it out. I don't care. I'm talking to you, Jim. You and your superiority complex. Don't complain to me if you're such a genius.
    Duration = 3.75,       
    Main = {
        Rounding = true,
    }
});
end)


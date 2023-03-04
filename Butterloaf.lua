-- FE Skidded by Creo
-- Join my server lol
-- https://discord.gg/fMPEUPdUUA

-- the butterloaf experience
-- this script was intended to work in "Life in paradise" and "Adopt and raise" games, DESTROY THE GODAMN ODERS, END THEM END THEEEEE-


function RandomString(Length)
	local Length = typeof(Length) == "number" and math.clamp(Length,1,100) or math.random(80,100)
	local Text = ""
	for i = 1,Length do
		Text = Text..string.char(math.random(14,128))
	end
	return Text
end
function NameChange(TEXT)
	local args = {
		[1] = "RP",
		[2] = TEXT
	}

	game:GetService("ReplicatedStorage").Events.MainEvent:FireServer(unpack(args))

end
--NameChange(RandomString(5))
--wait(4)
local WingParts = {}
local VEL = 0
local NOHATS = {}
local SETHATS = {}
local Attacking = false
local Mode = 1



local AllowChatF = true
local chat = function(MSG)
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(MSG, "All")
end

local Auto = function(plr)
	plr.Chatted:Connect(function(msg)
		if HumanDied then
		else
			print("wh??")
			if (string.find(string.lower(msg),"what") and (string.find(string.lower(msg),"script") ~= nil or string.find(string.lower(msg),"scrip") ~= nil) or (string.find(string.lower(msg),"script") or string.find(string.lower(msg),"scrip") ~= nil) and string.find(string.lower(msg),"name")) and AllowChatF == true then
				wait()
				chat('"'..plr.Name..' do not ask for this script, its not publicly available" - Creo AutoMessage')
				AllowChatF = false
				wait(10)
				AllowChatF = true
			end
		end
	end)
end
game.Players.PlayerAdded:Connect(function(plr)
	if HumanDied then

	else
		--Auto(plr)
	end
end)
function AutoMessage()
	local Players = game.Players:GetChildren()
	for i = 1,#Players do
		--Auto(Players[i])
	end
end


local HumanRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
local lIT = false
rayCast = function(Pos, Dir, Max, Ignore)

	return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), (CloneChar and game.Players.LocalPlayer.Character))
end
local Player = game.Players.LocalPlayer
local StartPosition = Player.Character.HumanoidRootPart.CFrame

local WEARITEMTHING = game:GetService("ReplicatedStorage"):FindFirstChild("WearItem")
local NotificationBindable = Instance.new("BindableFunction")
local TweenService = game:GetService("TweenService")
local MakeTween = function(timetack,easingstyle,easingdirection,repeats,flipflop)
	local newtween = TweenInfo.new(
		timetack, 
		easingstyle, 
		easingdirection, 
		repeats, 
		flipflop, 
		0 
	)
	return newtween
end
local Msgreq = function(Title,Text,Duration,Button1Text,Button2Text)
	game.StarterGui:SetCore("SendNotification", {
		Title = Title;
		Text = Text;
		Icon = "";
		Duration = Duration;
		Button1 = Button1Text;
		Button2 = Button2Text;
		Callback = NotificationBindable;
	})
end


local HatLoad = nil
NotificationBindable.OnInvoke = function(result)
	if result == "yes" then
		HatLoad = true

	else
		HatLoad = false
	end
end

Msgreq("","Load with hats? (specific games only)",9999999,"yes","no")
repeat wait() until HatLoad ~= nil	

local AudioReplication = nil
NotificationBindable.OnInvoke = function(result)
	if result == "Yes" then
		AudioReplication = true
		ReplicationBoombox = game.Players.LocalPlayer.Backpack:WaitForChild("Boombox",1)
		ReplicationBoombox.Parent = Player.Character	
	else
		AudioReplication = false
	end
end


Player.Character.HumanoidRootPart.CFrame = CFrame.new(0,0,0)
wait(1)
Player.Character.HumanoidRootPart.Anchored = true



if game.Players.LocalPlayer.Backpack:WaitForChild("Boombox",1) then
	Msgreq("","Load with audio replication? (specific games only)",9999999,"Yes","No")
	repeat wait() until AudioReplication ~= nil	
end


function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
ScreenGui0 = Instance.new("ScreenGui")
LoadingGui = ScreenGui0
Frame1 = Instance.new("Frame")
TextLabel2 = Instance.new("TextLabel")
ScreenGui0.Name = "LoadUI"
ScreenGui0.Parent = mas
ScreenGui0.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui0.DisplayOrder = 999999999
ScreenGui0.IgnoreGuiInset = true
Frame1.Name = "F"
Frame1.Parent = ScreenGui0
Frame1.Size = UDim2.new(1, 0, 1, 0)
Frame1.BackgroundColor = BrickColor.new("Smoky grey")
Frame1.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.498039)
TextLabel2.Parent = Frame1
TextLabel2.Position = UDim2.new(0, 0, 0.25, 0)
TextLabel2.Size = UDim2.new(1, 0, 0.5, 0)
TextLabel2.BackgroundColor = BrickColor.new("Institutional white")
TextLabel2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel2.BackgroundTransparency = 1
TextLabel2.Font = Enum.Font.ArialBold
TextLabel2.FontSize = Enum.FontSize.Size14
TextLabel2.Text = "Placeholder"
TextLabel2.TextColor = BrickColor.new("Really black")
TextLabel2.TextColor3 = Color3.new(0, 0, 0)
TextLabel2.TextScaled = true
TextLabel2.TextSize = 14
TextLabel2.TextWrap = true
TextLabel2.TextWrapped = true
LoadingText = TextLabel2
for i,v in pairs(mas:GetChildren()) do
	v.Parent = script
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
LoadingGui.Parent = game.Players.LocalPlayer.PlayerGui





--Converted with ttyyuu12345's model to script plugin v4
function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
Model0 = Instance.new("Model")
Part1 = Instance.new("Part")
Part2 = Instance.new("Part")
Weld3 = Instance.new("Weld")
Part4 = Instance.new("Part")
Weld5 = Instance.new("Weld")
Part6 = Instance.new("Part")
Weld7 = Instance.new("Weld")
Part8 = Instance.new("Part")
Weld9 = Instance.new("Weld")
Part10 = Instance.new("Part")
Weld11 = Instance.new("Weld")
Part12 = Instance.new("Part")
Weld13 = Instance.new("Weld")
Part14 = Instance.new("Part")
Weld15 = Instance.new("Weld")
Part16 = Instance.new("Part")
Weld17 = Instance.new("Weld")
Part18 = Instance.new("Part")
Weld19 = Instance.new("Weld")
Part20 = Instance.new("Part")
Weld21 = Instance.new("Weld")
Part22 = Instance.new("Part")
Weld23 = Instance.new("Weld")
Part24 = Instance.new("Part")
Weld25 = Instance.new("Weld")
Part26 = Instance.new("Part")
Weld27 = Instance.new("Weld")
Part28 = Instance.new("Part")
Weld29 = Instance.new("Weld")
Part30 = Instance.new("Part")
Weld31 = Instance.new("Weld")
Part32 = Instance.new("Part")
Weld33 = Instance.new("Weld")
Part34 = Instance.new("Part")
Weld35 = Instance.new("Weld")
Part36 = Instance.new("Part")
Weld37 = Instance.new("Weld")
Part38 = Instance.new("Part")
Weld39 = Instance.new("Weld")
Part40 = Instance.new("Part")
Weld41 = Instance.new("Weld")
Part42 = Instance.new("Part")
Weld43 = Instance.new("Weld")
Part44 = Instance.new("Part")
Weld45 = Instance.new("Weld")
Part46 = Instance.new("Part")
Weld47 = Instance.new("Weld")
Part48 = Instance.new("Part")
Weld49 = Instance.new("Weld")
Part50 = Instance.new("Part")
Weld51 = Instance.new("Weld")
Part52 = Instance.new("Part")
Weld53 = Instance.new("Weld")
Part54 = Instance.new("Part")
Weld55 = Instance.new("Weld")
Part56 = Instance.new("Part")
Weld57 = Instance.new("Weld")
Part58 = Instance.new("Part")
Weld59 = Instance.new("Weld")
Motor6D60 = Instance.new("Motor6D")
Model0.Name = "TheGun"
Model0.Parent = mas
Part1.Name = "Handle"
Part1.Parent = Model0
Part1.CFrame = CFrame.new(-61.4719009, 4.04184484, -15.087183, 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012)
Part1.Position = Vector3.new(-61.471900939941, 4.0418448448181, -15.087182998657)
Part1.Transparency = 1
Part1.Size = Vector3.new(1, 1, 1)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.CanCollide = false
Part1.TopSurface = Enum.SurfaceType.Smooth
Part2.Parent = Part1
Part2.CFrame = CFrame.new(-61.4719009, 4.57125092, -13.5770187, 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012)
Part2.Position = Vector3.new(-61.471900939941, 4.5712509155273, -13.577018737793)
Part2.Transparency = 1
Part2.Size = Vector3.new(1, 1, 1)
Part2.Anchored = false
Part2.BottomSurface = Enum.SurfaceType.Smooth
Part2.CanCollide = false
Part2.TopSurface = Enum.SurfaceType.Smooth
Weld3.Name = "Part"
Weld3.Parent = Part2
Weld3.C1 = CFrame.new(0, -0.529406071, -1.51016426, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld3.Part0 = Part1
Weld3.Part1 = Part2
Weld3.part1 = Part2
Part4.Parent = Part1
Part4.CFrame = CFrame.new(-61.4719009, 3.82369685, -16.5392818, 1, 0, 0, 0, 0.999388993, -0.0349550769, 0, 0.0349550769, 0.999388993)
Part4.Orientation = Vector3.new(2, 0, 0)
Part4.Position = Vector3.new(-61.471900939941, 3.8236968517303, -16.539281845093)
Part4.Rotation = Vector3.new(2, 0, 0)
Part4.Transparency = 1
Part4.Size = Vector3.new(1, 1, 1)
Part4.Anchored = false
Part4.BottomSurface = Enum.SurfaceType.Smooth
Part4.CanCollide = false
Part4.TopSurface = Enum.SurfaceType.Smooth
Weld5.Name = "Part"
Weld5.Parent = Part4
Weld5.C1 = CFrame.new(0, 0.268815994, 1.44359016, 1, -0, 0, 0, 0.999388874, 0.0349550731, -0, -0.0349550731, 0.999388874)
Weld5.Part0 = Part1
Weld5.Part1 = Part4
Weld5.part1 = Part4
Part6.Parent = Part1
Part6.CFrame = CFrame.new(-61.4719009, 5.01883221, -17.6148586, 1, 0, 0, 0, 0.948746204, -0.316039354, 0, 0.316039354, 0.948746204)
Part6.Orientation = Vector3.new(18.420000076294, 0, 0)
Part6.Position = Vector3.new(-61.471900939941, 5.0188322067261, -17.614858627319)
Part6.Rotation = Vector3.new(18.420000076294, 0, 0)
Part6.Transparency = 1
Part6.Size = Vector3.new(1, 1, 1)
Part6.Anchored = false
Part6.BottomSurface = Enum.SurfaceType.Smooth
Part6.CanCollide = false
Part6.TopSurface = Enum.SurfaceType.Smooth
Weld7.Name = "Part"
Weld7.Parent = Part6
Weld7.C1 = CFrame.new(0, -0.12803936, 2.70689774, 1, -0, 0, 0, 0.948746085, 0.316039324, -0, -0.316039324, 0.948746085)
Weld7.Part0 = Part1
Weld7.Part1 = Part6
Weld7.part1 = Part6
Part8.Parent = Part1
Part8.CFrame = CFrame.new(-61.4719009, 5.06346798, -15.6957617, 1, 0, 0, 0, 0.874146879, 0.485662013, 0, -0.485662013, 0.874146879)
Part8.Orientation = Vector3.new(-29.059999465942, 0, 0)
Part8.Position = Vector3.new(-61.471900939941, 5.0634679794312, -15.695761680603)
Part8.Rotation = Vector3.new(-29.059999465942, 0, 0)
Part8.Transparency = 1
Part8.Size = Vector3.new(1, 1, 1)
Part8.Anchored = false
Part8.BottomSurface = Enum.SurfaceType.Smooth
Part8.CanCollide = false
Part8.TopSurface = Enum.SurfaceType.Smooth
Weld9.Name = "Part"
Weld9.Parent = Part8
Weld9.C1 = CFrame.new(0, -1.1886158, 0.0358066559, 1, 0, 0, 0, 0.87414676, -0.485661954, 0, 0.485661954, 0.87414676)
Weld9.Part0 = Part1
Weld9.Part1 = Part8
Weld9.part1 = Part8
Part10.Parent = Part1
Part10.CFrame = CFrame.new(-61.4719009, 3.70948672, -17.7032681, 1, 0, 0, 0, 0.902064681, 0.431601226, 0, -0.431601226, 0.902064681)
Part10.Orientation = Vector3.new(-25.569999694824, 0, 0)
Part10.Position = Vector3.new(-61.471900939941, 3.7094867229462, -17.703268051147)
Part10.Rotation = Vector3.new(-25.569999694824, 0, 0)
Part10.Transparency = 1
Part10.Size = Vector3.new(1, 1, 1)
Part10.Anchored = false
Part10.BottomSurface = Enum.SurfaceType.Smooth
Part10.CanCollide = false
Part10.TopSurface = Enum.SurfaceType.Smooth
Weld11.Name = "Part"
Weld11.Parent = Part10
Weld11.C1 = CFrame.new(0, -0.829406738, 2.5032959, 1, 0, 0, 0, 0.902064562, -0.431601167, 0, 0.431601167, 0.902064562)
Weld11.Part0 = Part1
Weld11.Part1 = Part10
Weld11.part1 = Part10
Part12.Parent = Part1
Part12.CFrame = CFrame.new(-61.4719009, 3.81350684, -17.4525204, 1, 0, 0, 0, 0.999388993, -0.0349550769, 0, 0.0349550769, 0.999388993)
Part12.Orientation = Vector3.new(2, 0, 0)
Part12.Position = Vector3.new(-61.471900939941, 3.8135068416595, -17.452520370483)
Part12.Rotation = Vector3.new(2, 0, 0)
Part12.Transparency = 1
Part12.Size = Vector3.new(1, 1, 1)
Part12.Anchored = false
Part12.BottomSurface = Enum.SurfaceType.Smooth
Part12.CanCollide = false
Part12.TopSurface = Enum.SurfaceType.Smooth
Weld13.Name = "Part"
Weld13.Parent = Part12
Weld13.C1 = CFrame.new(0, 0.310956955, 2.35591316, 1, -0, 0, 0, 0.999388874, 0.0349550731, -0, -0.0349550731, 0.999388874)
Weld13.Part0 = Part1
Weld13.Part1 = Part12
Weld13.part1 = Part12
Part14.Parent = Part1
Part14.CFrame = CFrame.new(-61.4719009, 4.40918064, -15.0871811, 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012)
Part14.Position = Vector3.new(-61.471900939941, 4.4091806411743, -15.087181091309)
Part14.Transparency = 1
Part14.Size = Vector3.new(1, 1, 1)
Part14.Anchored = false
Part14.BottomSurface = Enum.SurfaceType.Smooth
Part14.CanCollide = false
Part14.TopSurface = Enum.SurfaceType.Smooth
Weld15.Name = "Part"
Weld15.Parent = Part14
Weld15.C1 = CFrame.new(0, -0.367333412, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld15.Part0 = Part1
Weld15.Part1 = Part14
Weld15.part1 = Part14
Part16.Parent = Part1
Part16.CFrame = CFrame.new(-61.4719009, 5.18177509, -22.2191982, 1, 0, 0, 0, 0.999996066, -0.00284862379, 0, 0.00284862379, 0.999996066)
Part16.Orientation = Vector3.new(0.15999999642372, 0, 0)
Part16.Position = Vector3.new(-61.471900939941, 5.1817750930786, -22.219198226929)
Part16.Rotation = Vector3.new(0.15999999642372, 0, 0)
Part16.Transparency = 1
Part16.Size = Vector3.new(1, 1, 1)
Part16.Anchored = false
Part16.BottomSurface = Enum.SurfaceType.Smooth
Part16.CanCollide = false
Part16.TopSurface = Enum.SurfaceType.Smooth
Weld17.Name = "Part"
Weld17.Parent = Part16
Weld17.C1 = CFrame.new(0, -1.11990595, 7.13519096, 1, -0, 0, 0, 0.999995947, 0.00284862355, -0, -0.00284862355, 0.999995947)
Weld17.Part0 = Part1
Weld17.Part1 = Part16
Weld17.part1 = Part16
Part18.Parent = Part1
Part18.CFrame = CFrame.new(-61.4719009, 3.53503871, -19.4109554, 1, 0, 0, 0, 0.999996066, -0.00284862379, 0, 0.00284862379, 0.999996066)
Part18.Orientation = Vector3.new(0.15999999642372, 0, 0)
Part18.Position = Vector3.new(-61.471900939941, 3.5350387096405, -19.410955429077)
Part18.Rotation = Vector3.new(0.15999999642372, 0, 0)
Part18.Transparency = 1
Part18.Size = Vector3.new(1, 1, 1)
Part18.Anchored = false
Part18.BottomSurface = Enum.SurfaceType.Smooth
Part18.CanCollide = false
Part18.TopSurface = Enum.SurfaceType.Smooth
Weld19.Name = "Part"
Weld19.Parent = Part18
Weld19.C1 = CFrame.new(0, 0.518955231, 4.32233429, 1, -0, 0, 0, 0.999995947, 0.00284862355, -0, -0.00284862355, 0.999995947)
Weld19.Part0 = Part1
Weld19.Part1 = Part18
Weld19.part1 = Part18
Part20.Parent = Part1
Part20.CFrame = CFrame.new(-61.4719009, 4.20391083, -14.0725174, 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012)
Part20.Position = Vector3.new(-61.471900939941, 4.2039108276367, -14.07251739502)
Part20.Transparency = 1
Part20.Size = Vector3.new(1, 1, 1)
Part20.Anchored = false
Part20.BottomSurface = Enum.SurfaceType.Smooth
Part20.CanCollide = false
Part20.TopSurface = Enum.SurfaceType.Smooth
Weld21.Name = "Part"
Weld21.Parent = Part20
Weld21.C1 = CFrame.new(0, -0.162072659, -1.01466179, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld21.Part0 = Part1
Weld21.Part1 = Part20
Weld21.part1 = Part20
Part22.Parent = Part1
Part22.CFrame = CFrame.new(-61.4719009, 5.1791048, -21.2691708, 1, 0, 0, 0, 0.999996066, -0.00284862379, 0, 0.00284862379, 0.999996066)
Part22.Orientation = Vector3.new(0.15999999642372, 0, 0)
Part22.Position = Vector3.new(-61.471900939941, 5.1791048049927, -21.269170761108)
Part22.Rotation = Vector3.new(0.15999999642372, 0, 0)
Part22.Transparency = 1
Part22.Size = Vector3.new(1, 1, 1)
Part22.Anchored = false
Part22.BottomSurface = Enum.SurfaceType.Smooth
Part22.CanCollide = false
Part22.TopSurface = Enum.SurfaceType.Smooth
Weld23.Name = "Part"
Weld23.Parent = Part22
Weld23.C1 = CFrame.new(0, -1.11990595, 6.18515205, 1, -0, 0, 0, 0.999995947, 0.00284862355, -0, -0.00284862355, 0.999995947)
Weld23.Part0 = Part1
Weld23.Part1 = Part22
Weld23.part1 = Part22
Part24.Parent = Part1
Part24.CFrame = CFrame.new(-61.4719009, 4.7585144, -17.5827389, 1, 0, 0, 0, 0.969546318, -0.244908512, 0, 0.244908512, 0.969546318)
Part24.Orientation = Vector3.new(14.180000305176, 0, 0)
Part24.Position = Vector3.new(-61.471900939941, 4.7585144042969, -17.582738876343)
Part24.Rotation = Vector3.new(14.180000305176, 0, 0)
Part24.Transparency = 1
Part24.Size = Vector3.new(1, 1, 1)
Part24.Anchored = false
Part24.BottomSurface = Enum.SurfaceType.Smooth
Part24.CanCollide = false
Part24.TopSurface = Enum.SurfaceType.Smooth
Weld25.Name = "Part"
Weld25.Parent = Part24
Weld25.C1 = CFrame.new(0, -0.0837335587, 2.59508896, 1, -0, 0, 0, 0.969546199, 0.244908482, -0, -0.244908482, 0.969546199)
Weld25.Part0 = Part1
Weld25.Part1 = Part24
Weld25.part1 = Part24
Part26.Parent = Part1
Part26.CFrame = CFrame.new(-61.4719009, 4.29126835, -17.9034176, 1, 0, 0, 0, 0.320580453, 0.947221577, 0, -0.947221577, 0.320580453)
Part26.Orientation = Vector3.new(-71.300003051758, 0, 0)
Part26.Position = Vector3.new(-61.471900939941, 4.2912683486938, -17.90341758728)
Part26.Rotation = Vector3.new(-71.300003051758, 0, 0)
Part26.Transparency = 1
Part26.Size = Vector3.new(1, 1, 1)
Part26.Anchored = false
Part26.BottomSurface = Enum.SurfaceType.Smooth
Part26.CanCollide = false
Part26.TopSurface = Enum.SurfaceType.Smooth
Weld27.Name = "Part"
Weld27.Parent = Part26
Weld27.C1 = CFrame.new(0, -2.74759102, 0.666440964, 1, 0, 0, 0, 0.320580423, -0.947221458, 0, 0.947221458, 0.320580423)
Weld27.Part0 = Part1
Weld27.Part1 = Part26
Weld27.part1 = Part26
Part28.Parent = Part1
Part28.CFrame = CFrame.new(-61.4719009, 4.29135895, -16.8153133, 1, 0, 0, 0, 0.999388993, -0.0349550769, 0, 0.0349550769, 0.999388993)
Part28.Orientation = Vector3.new(2, 0, 0)
Part28.Position = Vector3.new(-61.471900939941, 4.2913589477539, -16.815313339233)
Part28.Rotation = Vector3.new(2, 0, 0)
Part28.Transparency = 1
Part28.Size = Vector3.new(1, 1, 1)
Part28.Anchored = false
Part28.BottomSurface = Enum.SurfaceType.Smooth
Part28.CanCollide = false
Part28.TopSurface = Enum.SurfaceType.Smooth
Weld29.Name = "Part"
Weld29.Parent = Part28
Weld29.C1 = CFrame.new(0, -0.188891411, 1.7358036, 1, -0, 0, 0, 0.999388874, 0.0349550731, -0, -0.0349550731, 0.999388874)
Weld29.Part0 = Part1
Weld29.Part1 = Part28
Weld29.part1 = Part28
Part30.Parent = Part1
Part30.CFrame = CFrame.new(-61.4719009, 4.46866894, -15.998312, 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012)
Part30.Position = Vector3.new(-61.471900939941, 4.4686689376831, -15.99831199646)
Part30.Transparency = 1
Part30.Size = Vector3.new(1, 1, 1)
Part30.Anchored = false
Part30.BottomSurface = Enum.SurfaceType.Smooth
Part30.CanCollide = false
Part30.TopSurface = Enum.SurfaceType.Smooth
Weld31.Name = "Part"
Weld31.Parent = Part30
Weld31.C1 = CFrame.new(0, -0.426823616, 0.91113472, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld31.Part0 = Part1
Weld31.Part1 = Part30
Weld31.part1 = Part30
Part32.Parent = Part1
Part32.CFrame = CFrame.new(-61.4719009, 4.76645374, -16.6967525, 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012)
Part32.Position = Vector3.new(-61.471900939941, 4.766453742981, -16.696752548218)
Part32.Transparency = 1
Part32.Size = Vector3.new(1, 1, 1)
Part32.Anchored = false
Part32.BottomSurface = Enum.SurfaceType.Smooth
Part32.CanCollide = false
Part32.TopSurface = Enum.SurfaceType.Smooth
Weld33.Name = "Part"
Weld33.Parent = Part32
Weld33.C1 = CFrame.new(0, -0.724611759, 1.60957909, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld33.Part0 = Part1
Weld33.Part1 = Part32
Weld33.part1 = Part32
Part34.Parent = Part1
Part34.CFrame = CFrame.new(-61.4719009, 5.19678879, -15.0871811, 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012)
Part34.Position = Vector3.new(-61.471900939941, 5.1967887878418, -15.087181091309)
Part34.Transparency = 1
Part34.Size = Vector3.new(1, 1, 1)
Part34.Anchored = false
Part34.BottomSurface = Enum.SurfaceType.Smooth
Part34.CanCollide = false
Part34.TopSurface = Enum.SurfaceType.Smooth
Weld35.Name = "Part"
Weld35.Parent = Part34
Weld35.C1 = CFrame.new(0, -1.15494823, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld35.Part0 = Part1
Weld35.Part1 = Part34
Weld35.part1 = Part34
Part36.Parent = Part1
Part36.CFrame = CFrame.new(-61.4719009, 3.53228784, -18.4356136, 1, 0, 0, 0, 0.999996066, -0.00284862379, 0, 0.00284862379, 0.999996066)
Part36.Orientation = Vector3.new(0.15999999642372, 0, 0)
Part36.Position = Vector3.new(-61.471900939941, 3.5322878360748, -18.435613632202)
Part36.Rotation = Vector3.new(0.15999999642372, 0, 0)
Part36.Transparency = 1
Part36.Size = Vector3.new(1, 1, 1)
Part36.Anchored = false
Part36.BottomSurface = Enum.SurfaceType.Smooth
Part36.CanCollide = false
Part36.TopSurface = Enum.SurfaceType.Smooth
Weld37.Name = "Part"
Weld37.Parent = Part36
Weld37.C1 = CFrame.new(0, 0.518954277, 3.34699059, 1, -0, 0, 0, 0.999995947, 0.00284862355, -0, -0.00284862355, 0.999995947)
Weld37.Part0 = Part1
Weld37.Part1 = Part36
Weld37.part1 = Part36
Part38.Parent = Part1
Part38.CFrame = CFrame.new(-61.4719009, 4.20391083, -13.5770187, 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012)
Part38.Position = Vector3.new(-61.471900939941, 4.2039108276367, -13.577018737793)
Part38.Transparency = 1
Part38.Size = Vector3.new(1, 1, 1)
Part38.Anchored = false
Part38.BottomSurface = Enum.SurfaceType.Smooth
Part38.CanCollide = false
Part38.TopSurface = Enum.SurfaceType.Smooth
Weld39.Name = "Part"
Weld39.Parent = Part38
Weld39.C1 = CFrame.new(0, -0.162072659, -1.51016426, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld39.Part0 = Part1
Weld39.Part1 = Part38
Weld39.part1 = Part38
Part40.Parent = Part1
Part40.CFrame = CFrame.new(-61.4719009, 3.7392056, -12.6632156, 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012)
Part40.Position = Vector3.new(-61.471900939941, 3.7392055988312, -12.663215637207)
Part40.Transparency = 1
Part40.Size = Vector3.new(1, 1, 1)
Part40.Anchored = false
Part40.BottomSurface = Enum.SurfaceType.Smooth
Part40.CanCollide = false
Part40.TopSurface = Enum.SurfaceType.Smooth
Weld41.Name = "Part"
Weld41.Parent = Part40
Weld41.C1 = CFrame.new(0, 0.302639961, -2.42396164, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld41.Part0 = Part1
Weld41.Part1 = Part40
Weld41.part1 = Part40
Part42.Parent = Part1
Part42.CFrame = CFrame.new(-61.4719009, 4.71275616, -12.6632156, 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012)
Part42.Position = Vector3.new(-61.471900939941, 4.7127561569214, -12.663215637207)
Part42.Transparency = 1
Part42.Size = Vector3.new(1, 1, 1)
Part42.Anchored = false
Part42.BottomSurface = Enum.SurfaceType.Smooth
Part42.CanCollide = false
Part42.TopSurface = Enum.SurfaceType.Smooth
Weld43.Name = "Part"
Weld43.Parent = Part42
Weld43.C1 = CFrame.new(0, -0.670910835, -2.42396164, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld43.Part0 = Part1
Weld43.Part1 = Part42
Weld43.part1 = Part42
Part44.Parent = Part1
Part44.CFrame = CFrame.new(-61.4719009, 3.54025149, -21.2737637, 1, 0, 0, 0, 0.999996066, -0.00284862379, 0, 0.00284862379, 0.999996066)
Part44.Orientation = Vector3.new(0.15999999642372, 0, 0)
Part44.Position = Vector3.new(-61.471900939941, 3.540251493454, -21.273763656616)
Part44.Rotation = Vector3.new(0.15999999642372, 0, 0)
Part44.Transparency = 1
Part44.Size = Vector3.new(1, 1, 1)
Part44.Anchored = false
Part44.BottomSurface = Enum.SurfaceType.Smooth
Part44.CanCollide = false
Part44.TopSurface = Enum.SurfaceType.Smooth
Weld45.Name = "Part"
Weld45.Parent = Part44
Weld45.C1 = CFrame.new(0, 0.518954754, 6.18515205, 1, -0, 0, 0, 0.999995947, 0.00284862355, -0, -0.00284862355, 0.999995947)
Weld45.Part0 = Part1
Weld45.Part1 = Part44
Weld45.part1 = Part44
Part46.Parent = Part1
Part46.CFrame = CFrame.new(-61.4719009, 3.53758359, -20.3241787, 1, 0, 0, 0, 0.999996066, -0.00284862379, 0, 0.00284862379, 0.999996066)
Part46.Orientation = Vector3.new(0.15999999642372, 0, 0)
Part46.Position = Vector3.new(-61.471900939941, 3.5375835895538, -20.324178695679)
Part46.Rotation = Vector3.new(0.15999999642372, 0, 0)
Part46.Transparency = 1
Part46.Size = Vector3.new(1, 1, 1)
Part46.Anchored = false
Part46.BottomSurface = Enum.SurfaceType.Smooth
Part46.CanCollide = false
Part46.TopSurface = Enum.SurfaceType.Smooth
Weld47.Name = "Part"
Weld47.Parent = Part46
Weld47.C1 = CFrame.new(0, 0.518955231, 5.235569, 1, -0, 0, 0, 0.999995947, 0.00284862355, -0, -0.00284862355, 0.999995947)
Weld47.Part0 = Part1
Weld47.Part1 = Part46
Weld47.part1 = Part46
Part48.Parent = Part1
Part48.CFrame = CFrame.new(-61.4719009, 4.57125092, -14.0725174, 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012)
Part48.Position = Vector3.new(-61.471900939941, 4.5712509155273, -14.07251739502)
Part48.Transparency = 1
Part48.Size = Vector3.new(1, 1, 1)
Part48.Anchored = false
Part48.BottomSurface = Enum.SurfaceType.Smooth
Part48.CanCollide = false
Part48.TopSurface = Enum.SurfaceType.Smooth
Weld49.Name = "Part"
Weld49.Parent = Part48
Weld49.C1 = CFrame.new(0, -0.529406071, -1.01466179, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld49.Part0 = Part1
Weld49.Part1 = Part48
Weld49.part1 = Part48
Part50.Parent = Part1
Part50.CFrame = CFrame.new(-61.4719009, 3.90539575, -15.9466305, 1, 0, 0, 0, 0.971143901, 0.238494888, 0, -0.238494888, 0.971143901)
Part50.Orientation = Vector3.new(-13.800000190735, 0, 0)
Part50.Position = Vector3.new(-61.471900939941, 3.9053957462311, -15.946630477905)
Part50.Rotation = Vector3.new(-13.800000190735, 0, 0)
Part50.Transparency = 1
Part50.Size = Vector3.new(1, 1, 1)
Part50.Anchored = false
Part50.BottomSurface = Enum.SurfaceType.Smooth
Part50.CanCollide = false
Part50.TopSurface = Enum.SurfaceType.Smooth
Weld51.Name = "Part"
Weld51.Parent = Part50
Weld51.C1 = CFrame.new(0, -0.0724973679, 0.867191315, 1, 0, 0, 0, 0.971143782, -0.238494858, 0, 0.238494858, 0.971143782)
Weld51.Part0 = Part1
Weld51.Part1 = Part50
Weld51.part1 = Part50
Part52.Parent = Part1
Part52.CFrame = CFrame.new(-61.4719009, 3.54291081, -22.2237911, 1, 0, 0, 0, 0.999996066, -0.00284862379, 0, 0.00284862379, 0.999996066)
Part52.Orientation = Vector3.new(0.15999999642372, 0, 0)
Part52.Position = Vector3.new(-61.471900939941, 3.5429108142853, -22.223791122437)
Part52.Rotation = Vector3.new(0.15999999642372, 0, 0)
Part52.Transparency = 1
Part52.Size = Vector3.new(1, 1, 1)
Part52.Anchored = false
Part52.BottomSurface = Enum.SurfaceType.Smooth
Part52.CanCollide = false
Part52.TopSurface = Enum.SurfaceType.Smooth
Weld53.Name = "Part"
Weld53.Parent = Part52
Weld53.C1 = CFrame.new(0, 0.518954754, 7.13519096, 1, -0, 0, 0, 0.999995947, 0.00284862355, -0, -0.00284862355, 0.999995947)
Weld53.Part0 = Part1
Weld53.Part1 = Part52
Weld53.part1 = Part52
Part54.Parent = Part1
Part54.CFrame = CFrame.new(-61.4719009, 5.17388535, -19.4063473, 1, 0, 0, 0, 0.999996066, -0.00284862379, 0, 0.00284862379, 0.999996066)
Part54.Orientation = Vector3.new(0.15999999642372, 0, 0)
Part54.Position = Vector3.new(-61.471900939941, 5.173885345459, -19.40634727478)
Part54.Rotation = Vector3.new(0.15999999642372, 0, 0)
Part54.Transparency = 1
Part54.Size = Vector3.new(1, 1, 1)
Part54.Anchored = false
Part54.BottomSurface = Enum.SurfaceType.Smooth
Part54.CanCollide = false
Part54.TopSurface = Enum.SurfaceType.Smooth
Weld55.Name = "Part"
Weld55.Parent = Part54
Weld55.C1 = CFrame.new(0, -1.11990595, 4.3223362, 1, -0, 0, 0, 0.999995947, 0.00284862355, -0, -0.00284862355, 0.999995947)
Weld55.Part0 = Part1
Weld55.Part1 = Part54
Weld55.part1 = Part54
Part56.Parent = Part1
Part56.CFrame = CFrame.new(-61.4719009, 5.17114258, -18.4310055, 1, 0, 0, 0, 0.999996066, -0.00284862379, 0, 0.00284862379, 0.999996066)
Part56.Orientation = Vector3.new(0.15999999642372, 0, 0)
Part56.Position = Vector3.new(-61.471900939941, 5.171142578125, -18.431005477905)
Part56.Rotation = Vector3.new(0.15999999642372, 0, 0)
Part56.Transparency = 1
Part56.Size = Vector3.new(1, 1, 1)
Part56.Anchored = false
Part56.BottomSurface = Enum.SurfaceType.Smooth
Part56.CanCollide = false
Part56.TopSurface = Enum.SurfaceType.Smooth
Weld57.Name = "Part"
Weld57.Parent = Part56
Weld57.C1 = CFrame.new(0, -1.11990595, 3.34699249, 1, -0, 0, 0, 0.999995947, 0.00284862355, -0, -0.00284862355, 0.999995947)
Weld57.Part0 = Part1
Weld57.Part1 = Part56
Weld57.part1 = Part56
Part58.Parent = Part1
Part58.CFrame = CFrame.new(-61.4719009, 5.17643929, -20.3195858, 1, 0, 0, 0, 0.999996066, -0.00284862379, 0, 0.00284862379, 0.999996066)
Part58.Orientation = Vector3.new(0.15999999642372, 0, 0)
Part58.Position = Vector3.new(-61.471900939941, 5.1764392852783, -20.319585800171)
Part58.Rotation = Vector3.new(0.15999999642372, 0, 0)
Part58.Transparency = 1
Part58.Size = Vector3.new(1, 1, 1)
Part58.Anchored = false
Part58.BottomSurface = Enum.SurfaceType.Smooth
Part58.CanCollide = false
Part58.TopSurface = Enum.SurfaceType.Smooth
Weld59.Name = "Part"
Weld59.Parent = Part58
Weld59.C1 = CFrame.new(0, -1.11990595, 5.23557091, 1, -0, 0, 0, 0.999995947, 0.00284862355, -0, -0.00284862355, 0.999995947)
Weld59.Part0 = Part1
Weld59.Part1 = Part58
Weld59.part1 = Part58
Part1.Anchored = true
Motor6D60.Name = "Handle"
Motor6D60.Parent = Part1
Motor6D60.C0 = CFrame.new(-0.0235900879, -0.361895561, -0.89873004, 1, 8.84009959e-16, 0, 0, -0.0334812626, 0.999435842, -1.11022302e-15, -0.999434054, -0.033482302)
Motor6D60.Part1 = Part1
Motor6D60.part1 = Part1
for i,v in pairs(mas:GetChildren()) do
	v.Parent = script
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end

GunTip = Instance.new("Attachment")
GunTip.Parent = Part1
GunTip.Position = Vector3.new(0, 0.35829448699951, -7.3915157318115)
GunWeld = Motor6D60
local GUNMODEL = Model0
GUNMODEL.Parent = workspace




function StickParts(Part0,Part1)
	local AlignPos = Instance.new('AlignPosition', Part1)
	AlignPos.ApplyAtCenterOfMass = true;
	AlignPos.MaxForce = 67752;
	AlignPos.MaxVelocity = math.huge/9e110;
	AlignPos.ReactionForceEnabled = false;
	AlignPos.Responsiveness = 200;
	AlignPos.RigidityEnabled = false;
	local AlignOri = Instance.new('AlignOrientation', Part1)
	AlignOri.MaxAngularVelocity = math.huge/9e110;
	AlignOri.MaxTorque = 67752;
	AlignOri.PrimaryAxisOnly = false;
	AlignOri.ReactionTorqueEnabled = false;
	AlignOri.Responsiveness = 200;
	AlignOri.RigidityEnabled = false;
	local AttachmentA=Instance.new('Attachment',Part1)
	local AttachmentB=Instance.new('Attachment',Part0)
	local AttachmentC=Instance.new('Attachment',Part1)
	local AttachmentD=Instance.new('Attachment',Part0)
	AlignPos.Attachment1 = AttachmentA;
	AlignPos.Attachment0 = AttachmentB;
	AlignOri.Attachment1 = AttachmentC;
	AlignOri.Attachment0 = AttachmentD;


end
function roundVector(vector, unit)
	return vector - Vector3.new(vector.X%unit, vector.Y%unit, vector.Z%unit)
end

local GenerateHats = function(amount)
	Msgreq("Creo's HatGen V1.4","Generating Parts (May take a while, just bear with it)",7)
	local AM = 0
	local S = Player.Character.DescendantAdded:Connect(function(thing)
		if thing:IsA("Accessory") then

			thing:WaitForChild("Handle")
			thing.Handle:FindFirstChildWhichIsA("SpecialMesh")
			thing.Handle:FindFirstChildWhichIsA("Weld")
			AM = AM + 1
			table.insert(SETHATS,(#SETHATS)+1,thing.Handle)
		end
	end)
	repeat
		game:GetService("RunService").Stepped:wait()   
		local args = {
			[1] = {
				[1] = "Wear",
				[2] = "11297746",
				[3] = "Hats"
			}
		}
		WEARITEMTHING:FireServer(unpack(args))
	until AM >= amount
	S:Disconnect()
	return "done~"
end





LoadingText.Text = "Generating parts, please wait."
if HatLoad == true then
	repeat wait() until GenerateHats(80) == "done~"
end
script.Parent = nil
Player.Character.HumanoidRootPart.CFrame = StartPosition
Player.Character.HumanoidRootPart.Anchored = false



-- Fe Skidded Script by Creo


local NotificationBindable = Instance.new("BindableFunction")
local Msgreq = function(Title,Text,Duration,Button1Text,Button2Text)
	game.StarterGui:SetCore("SendNotification", {
		Title = Title;
		Text = Text;
		Icon = "";
		Duration = Duration;
		Button1 = Button1Text;
		Button2 = nil;
		Callback = NotificationBindable;
	})
end

Msgreq("FE Skidded Script V1.5 by Creo","Loading, please wait while it loads",5,nil)
LoadingText.Text = "Loading rest of script."
local SongID = "rbxassetid://6498555267"
Bypass = "death"
if not Bypass then Bypass = "limbs" end
HumanDied = false

CountSCIFIMOVIELOL = 1
function SCIFIMOVIELOL(Part0,Part1,Position,Angle)
	local AlignPos = Instance.new('AlignPosition', Part1); AlignPos.Name = "AliP_"..CountSCIFIMOVIELOL
	AlignPos.ApplyAtCenterOfMass = true;
	AlignPos.MaxForce = 67752;
	AlignPos.MaxVelocity = math.huge/9e110;
	AlignPos.ReactionForceEnabled = false;
	AlignPos.Responsiveness = 200;
	AlignPos.RigidityEnabled = false;
	local AlignOri = Instance.new('AlignOrientation', Part1); AlignOri.Name = "AliO_"..CountSCIFIMOVIELOL
	AlignOri.MaxAngularVelocity = math.huge/9e110;
	AlignOri.MaxTorque = 67752;
	AlignOri.PrimaryAxisOnly = false;
	AlignOri.ReactionTorqueEnabled = false;
	AlignOri.Responsiveness = 200;
	AlignOri.RigidityEnabled = false;
	local AttachmentA=Instance.new('Attachment',Part1); AttachmentA.Name = "AthP_"..CountSCIFIMOVIELOL
	local AttachmentB=Instance.new('Attachment',Part0); AttachmentB.Name = "AthP_"..CountSCIFIMOVIELOL
	local AttachmentC=Instance.new('Attachment',Part1); AttachmentC.Name = "AthO_"..CountSCIFIMOVIELOL
	local AttachmentD=Instance.new('Attachment',Part0); AttachmentD.Name = "AthO_"..CountSCIFIMOVIELOL
	AttachmentC.Orientation = Angle
	AttachmentA.Position = Position
	AlignPos.Attachment1 = AttachmentA;
	AlignPos.Attachment0 = AttachmentB;
	AlignOri.Attachment1 = AttachmentC;
	AlignOri.Attachment0 = AttachmentD;
	CountSCIFIMOVIELOL = CountSCIFIMOVIELOL + 1

end

coroutine.wrap(function()
	local player = game.Players.LocalPlayer
	local char = player.Character or player.CharacterAdded:wait()
	if sethiddenproperty then
		while true do
			game:GetService("RunService").RenderStepped:Wait()
			settings().Physics.AllowSleep = false
			local TBL = game:GetService("Players"):GetChildren() 
			for _ = 1,#TBL do local Players = TBL[_]
				if Players ~= game:GetService("Players").LocalPlayer then
					Players.MaximumSimulationRadius = 0
					sethiddenproperty(Players,"SimulationRadius",0) 
				end 
			end
			game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)
			sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.pow(math.huge,math.huge)*math.huge)
			if HumanDied then break end
		end
	else
		while true do
			game:GetService("RunService").RenderStepped:Wait()
			settings().Physics.AllowSleep = false
			local TBL = game:GetService("Players"):GetChildren() 
			for _ = 1,#TBL do local Players = TBL[_]
				if Players ~= game:GetService("Players").LocalPlayer then
					Players.MaximumSimulationRadius = 0
				end 
			end
			game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)
			if HumanDied then break end
		end
	end
end)()

if game:GetService("Players").LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
	if Bypass == "limbs" then --------------------------------------------------------------------------------------------------------------------
		game:GetService("Players").LocalPlayer["Character"].Archivable = true 
		local CloneChar = game:GetService("Players").LocalPlayer["Character"]:Clone()
		CloneChar.Parent = workspace 
		CloneChar.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer["Character"].HumanoidRootPart.CFrame * CFrame.new(0,2,0)
		wait() 
		CloneChar.Humanoid.BreakJointsOnDeath = false
		workspace.Camera.CameraSubject = CloneChar.Humanoid
		CloneChar.Name = "non" 
		CloneChar.Humanoid.DisplayDistanceType = "None"
		if CloneChar.Head:FindFirstChild("face") then CloneChar.Head:FindFirstChild("face"):Destroy() end
		if workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face") then workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face").Parent = CloneChar.Head end

		local DeadChar = workspace[game:GetService("Players").LocalPlayer.Name]
		DeadChar.HumanoidRootPart:Destroy()

		local LVecPart = Instance.new("Part", workspace) LVecPart.CanCollide = false LVecPart.Transparency = 1
		local CONVEC
		local function VECTORUNIT()
			if HumanDied then CONVEC:Disconnect(); return end
			local lookVec = workspace.Camera.CFrame.lookVector
			local Root = CloneChar["HumanoidRootPart"]
			LVecPart.Position = Root.Position
			LVecPart.CFrame = CFrame.new(LVecPart.Position, Vector3.new(lookVec.X * 9999, lookVec.Y, lookVec.Z * 9999))
		end
		CONVEC = game:GetService("RunService").Heartbeat:Connect(VECTORUNIT)

		local CONDOWN
		local WDown, ADown, SDown, DDown, SpaceDown = false, false, false, false, false
		local function KEYDOWN(_,Processed) 
			if HumanDied then CONDOWN:Disconnect(); return end
			if Processed ~= true then
				local Key = _.KeyCode
				if Key == Enum.KeyCode.W then
					WDown = true end
				if Key == Enum.KeyCode.A then
					ADown = true end
				if Key == Enum.KeyCode.S then
					SDown = true end
				if Key == Enum.KeyCode.D then
					DDown = true end
				if Key == Enum.KeyCode.Space then
					SpaceDown = true end end end
		CONDOWN = game:GetService("UserInputService").InputBegan:Connect(KEYDOWN)

		local CONUP
		local function KEYUP(_)
			if HumanDied then CONUP:Disconnect(); return end
			local Key = _.KeyCode
			if Key == Enum.KeyCode.W then
				WDown = false end
			if Key == Enum.KeyCode.A then
				ADown = false end
			if Key == Enum.KeyCode.S then
				SDown = false end
			if Key == Enum.KeyCode.D then
				DDown = false end
			if Key == Enum.KeyCode.Space then
				SpaceDown = false end end
		CONUP = game:GetService("UserInputService").InputEnded:Connect(KEYUP)

		local function MoveClone(X,Y,Z)
			VEL = 1
			LVecPart.CFrame = LVecPart.CFrame * CFrame.new(-X,Y,-Z)
			workspace["non"].Humanoid.WalkToPoint = LVecPart.Position
			wait()
			VEL = 0
		end

		coroutine.wrap(function() 
			while true do game:GetService("RunService").RenderStepped:Wait()
				if HumanDied then break end
				if WDown then MoveClone(0,0,1e4) end
				if ADown then MoveClone(1e4,0,0) end
				if SDown then MoveClone(0,0,-1e4) end
				if DDown then MoveClone(-1e4,0,0) end
				if SpaceDown then CloneChar["Humanoid"].Jump = true end
				if WDown ~= true and ADown ~= true and SDown ~= true and DDown ~= true then
					workspace["non"].Humanoid.WalkToPoint = workspace["non"].HumanoidRootPart.Position end
			end 
		end)()

		local con
		function UnCollide()
			if HumanDied then con:Disconnect(); return end
			for _,Parts in next, CloneChar:GetDescendants() do
				if Parts:IsA("BasePart") then
					Parts.CanCollide = false 
				end 
			end
			for _,Parts in next, DeadChar:GetDescendants() do
				if Parts:IsA("BasePart") then
					Parts.CanCollide = false
				end 
			end 
		end
		con = game:GetService("RunService").Stepped:Connect(UnCollide)

		local resetBindable = Instance.new("BindableEvent")
		resetBindable.Event:connect(function()
			game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
			resetBindable:Destroy()
			pcall(function()
				CloneChar.Humanoid.Health = 0
				DeadChar.Humanoid.Health = 0
			end)
		end)
		game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)

		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if not CloneChar or not CloneChar:FindFirstChild("Head") or not CloneChar:FindFirstChild("Humanoid") or CloneChar:FindFirstChild("Humanoid").Health <= 0 or not DeadChar or not DeadChar:FindFirstChild("Head") or not DeadChar:FindFirstChild("Humanoid") or DeadChar:FindFirstChild("Humanoid").Health <= 0 then 
					HumanDied = true
					pcall(function()
						game.Players.LocalPlayer.Character = CloneChar
						CloneChar:Destroy()
						game.Players.LocalPlayer.Character = DeadChar
						if resetBindable then
							game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
							resetBindable:Destroy()
						end
						DeadChar.Humanoid.Health = 0
					end)
					break
				end		
			end
		end)()

		SCIFIMOVIELOL(DeadChar["Head"],CloneChar["Head"],Vector3.new(0,0,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["Torso"],CloneChar["Torso"],Vector3.new(0,0,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["Left Arm"],CloneChar["Left Arm"],Vector3.new(0,0,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["Right Arm"],CloneChar["Right Arm"],Vector3.new(0,0,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["Left Leg"],CloneChar["Left Leg"],Vector3.new(0,0,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["Right Leg"],CloneChar["Right Leg"],Vector3.new(0,0,0),Vector3.new(0,0,0))

		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if HumanDied then break end
				DeadChar["Torso"].CFrame = CloneChar["Torso"].CFrame
			end
		end)()

		for _,v in next, DeadChar:GetChildren() do
			if v:IsA("Accessory") and table.find(SETHATS,v.Handle) == nil then
				SCIFIMOVIELOL(v.Handle,CloneChar[v.Name].Handle,Vector3.new(0,0,0),Vector3.new(0,0,0))
			end
		end

		for _,BodyParts in next, CloneChar:GetDescendants() do
			if BodyParts:IsA("BasePart") or BodyParts:IsA("Part") then
				BodyParts.Transparency = 1 end end

		DeadChar.Torso["Left Shoulder"]:Destroy()
		DeadChar.Torso["Right Shoulder"]:Destroy()
		DeadChar.Torso["Left Hip"]:Destroy()
		DeadChar.Torso["Right Hip"]:Destroy()

	elseif Bypass == "death" then --------------------------------------------------------------------------------------------------------------------
		game:GetService("Players").LocalPlayer["Character"].Archivable = true 
		local CloneChar = game:GetService("Players").LocalPlayer["Character"]:Clone()
		game:GetService("Players").LocalPlayer["Character"].Humanoid.WalkSpeed = 0 
		game:GetService("Players").LocalPlayer["Character"].Humanoid.JumpPower = 0 
		game:GetService("Players").LocalPlayer["Character"].Humanoid.AutoRotate = false
		local FalseChar = Instance.new("Model", workspace); FalseChar.Name = ""
		Instance.new("Part",FalseChar).Name = "Head" 
		Instance.new("Part",FalseChar).Name = "Torso" 
		Instance.new("Humanoid",FalseChar).Name = "Humanoid"
		game:GetService("Players").LocalPlayer["Character"] = FalseChar
		game:GetService("Players").LocalPlayer["Character"].Humanoid.Name = "FalseHumanoid"
		local Clone = game:GetService("Players").LocalPlayer["Character"]:FindFirstChild("FalseHumanoid"):Clone()
		Clone.Parent = game:GetService("Players").LocalPlayer["Character"]
		Clone.Name = "Humanoid"
		game:GetService("Players").LocalPlayer["Character"]:FindFirstChild("FalseHumanoid"):Destroy() 
		game:GetService("Players").LocalPlayer["Character"].Humanoid.Health = 0 
		game:GetService("Players").LocalPlayer["Character"] = workspace[game:GetService("Players").LocalPlayer.Name] 
		wait(5.65) 
		game:GetService("Players").LocalPlayer["Character"].Humanoid.Health = 0
		CloneChar.Parent = workspace 
		CloneChar.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer["Character"].HumanoidRootPart.CFrame * CFrame.new(0,2,0)
		wait() 
		CloneChar.Humanoid.BreakJointsOnDeath = false
		workspace.Camera.CameraSubject = CloneChar.Humanoid 
		CloneChar.Name = "non" 
		CloneChar.Humanoid.DisplayDistanceType = "None"
		if CloneChar.Head:FindFirstChild("face") then CloneChar.Head:FindFirstChild("face"):Destroy() end
		if workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face") then workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face").Parent = CloneChar.Head end

		FalseChar:Destroy()

		local DeadChar = workspace[game:GetService("Players").LocalPlayer.Name]

		local LVecPart = Instance.new("Part", workspace) LVecPart.CanCollide = false LVecPart.Transparency = 1
		local CONVEC
		local function VECTORUNIT()
			if HumanDied then CONVEC:Disconnect(); return end
			local lookVec = workspace.Camera.CFrame.lookVector
			local Root = CloneChar["HumanoidRootPart"]
			LVecPart.Position = Root.Position
			LVecPart.CFrame = CFrame.new(LVecPart.Position, Vector3.new(lookVec.X * 9999, lookVec.Y, lookVec.Z * 9999))
		end
		CONVEC = game:GetService("RunService").Heartbeat:Connect(VECTORUNIT)

		local CONDOWN
		local WDown, ADown, SDown, DDown, SpaceDown = false, false, false, false, false
		local function KEYDOWN(_,Processed) 
			if HumanDied then CONDOWN:Disconnect(); return end
			if Processed ~= true then
				local Key = _.KeyCode
				if Key == Enum.KeyCode.W then
					WDown = true end
				if Key == Enum.KeyCode.A then
					ADown = true end
				if Key == Enum.KeyCode.S then
					SDown = true end
				if Key == Enum.KeyCode.D then
					DDown = true end
				if Key == Enum.KeyCode.Space then
					SpaceDown = true end end end
		CONDOWN = game:GetService("UserInputService").InputBegan:Connect(KEYDOWN)

		local CONUP
		local function KEYUP(_)
			if HumanDied then CONUP:Disconnect(); return end
			local Key = _.KeyCode
			if Key == Enum.KeyCode.W then
				WDown = false end
			if Key == Enum.KeyCode.A then
				ADown = false end
			if Key == Enum.KeyCode.S then
				SDown = false end
			if Key == Enum.KeyCode.D then
				DDown = false end
			if Key == Enum.KeyCode.Space then
				SpaceDown = false end end
		CONUP = game:GetService("UserInputService").InputEnded:Connect(KEYUP)

		local function MoveClone(X,Y,Z)
			LVecPart.CFrame = LVecPart.CFrame * CFrame.new(-X,Y,-Z)
			workspace["non"].Humanoid.WalkToPoint = LVecPart.Position
		end

		coroutine.wrap(function() 
			while true do game:GetService("RunService").RenderStepped:Wait()
				if HumanDied then break end
				if WDown then MoveClone(0,0,1e4) end
				if ADown then MoveClone(1e4,0,0) end
				if SDown then MoveClone(0,0,-1e4) end
				if DDown then MoveClone(-1e4,0,0) end
				if SpaceDown then CloneChar["Humanoid"].Jump = true end
				if WDown ~= true and ADown ~= true and SDown ~= true and DDown ~= true then
					CloneChar.Humanoid.WalkToPoint = CloneChar.HumanoidRootPart.Position end
			end 
		end)()

		local con
		function UnCollide()
			if HumanDied then con:Disconnect(); return end
			for _,Parts in next, CloneChar:GetDescendants() do
				if Parts:IsA("BasePart") then
					HumanRoot.CanCollide = false
					Parts.CanCollide = false 
				end 
			end
			for _,Parts in next, DeadChar:GetDescendants() do
				if Parts:IsA("BasePart") then
					Parts.CanCollide = false
					HumanRoot.CanCollide = false
				end 
			end 
		end
		con = game:GetService("RunService").Stepped:Connect(UnCollide)

		local resetBindable = Instance.new("BindableEvent")
		resetBindable.Event:connect(function()
			game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
			resetBindable:Destroy()
			CloneChar.Humanoid.Health = 0
		end)
		game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)

		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if not CloneChar or not CloneChar:FindFirstChild("Head") or not CloneChar:FindFirstChild("Humanoid") or CloneChar:FindFirstChild("Humanoid").Health <= 0 then 
					HumanDied = true
					pcall(function()
						game.Players.LocalPlayer.Character = CloneChar
						CloneChar:Destroy()
						game.Players.LocalPlayer.Character = DeadChar
						if resetBindable then
							game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
							resetBindable:Destroy()
						end
						DeadChar.Humanoid.Health = 0
					end)
					break
				end		
			end
		end)()

		SCIFIMOVIELOL(DeadChar["Head"],CloneChar["Head"],Vector3.new(0,0,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["Torso"],CloneChar["Torso"],Vector3.new(0,0,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["Left Arm"],CloneChar["Left Arm"],Vector3.new(0,0,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["Right Arm"],CloneChar["Right Arm"],Vector3.new(0,0,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["Left Leg"],CloneChar["Left Leg"],Vector3.new(0,0,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["Right Leg"],CloneChar["Right Leg"],Vector3.new(0,0,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["HumanoidRootPart"],CloneChar["HumanoidRootPart"],Vector3.new(0,0,0),Vector3.new(0,0,0))

		for _,v in next, DeadChar:GetChildren() do
			if v:IsA("Accessory") and table.find(SETHATS,v.Handle) == nil then
				print(v.Parent.Name)
				SCIFIMOVIELOL(v.Handle,CloneChar[v.Name].Handle,Vector3.new(0,0,0),Vector3.new(0,0,0))
			end
		end

		for _,BodyParts in next, CloneChar:GetDescendants() do
			if BodyParts:IsA("BasePart") or BodyParts:IsA("Part") then
				BodyParts.Transparency = 1 end end
	elseif Bypass == "hats" then
		game:GetService("Players").LocalPlayer["Character"].Archivable = true 
		local DeadChar = game.Players.LocalPlayer.Character
		DeadChar.Name = "non"
		local HatPosition = Vector3.new(0,0,0)
		local HatName = "MediHood"
		local HatsLimb = {
			Rarm = DeadChar:FindFirstChild("Hat1"),
			Larm = DeadChar:FindFirstChild("Pink Hair"),
			Rleg = DeadChar:FindFirstChild("Robloxclassicred"),
			Lleg = DeadChar:FindFirstChild("Kate Hair"),
			Torso1 = DeadChar:FindFirstChild("Pal Hair"),
			Torso2 = DeadChar:FindFirstChild("LavanderHair")
		}
		HatName = DeadChar:FindFirstChild(HatName)

		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if not DeadChar or not DeadChar:FindFirstChild("Head") or not DeadChar:FindFirstChild("Humanoid") or DeadChar:FindFirstChild("Humanoid").Health <= 0 then 
					HumanDied = true
					pcall(function()
						if resetBindable then
							game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
							resetBindable:Destroy()
						end
						DeadChar.Humanoid.Health = 0
					end)
					break
				end		
			end
		end)()

		local con
		function UnCollide()
			if HumanDied then con:Disconnect(); return end
			for _,Parts in next, DeadChar:GetDescendants() do
				if Parts:IsA("BasePart") then
					Parts.CanCollide = false
				end 
			end 
		end
		con = game:GetService("RunService").Stepped:Connect(UnCollide)

		SCIFIMOVIELOL(HatName.Handle,DeadChar["Head"],Vector3.new(0,0,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(HatsLimb.Torso1.Handle,DeadChar["Torso"],Vector3.new(0.5,0,0),Vector3.new(90,0,0))
		SCIFIMOVIELOL(HatsLimb.Torso2.Handle,DeadChar["Torso"],Vector3.new(-0.5,0,0),Vector3.new(90,0,0))
		SCIFIMOVIELOL(HatsLimb.Larm.Handle,DeadChar["Left Arm"],Vector3.new(0,0,0),Vector3.new(90,0,0))
		SCIFIMOVIELOL(HatsLimb.Rarm.Handle,DeadChar["Right Arm"],Vector3.new(0,0,0),Vector3.new(90,0,0))
		SCIFIMOVIELOL(HatsLimb.Lleg.Handle,DeadChar["Left Leg"],Vector3.new(0,0,0),Vector3.new(90,0,0))
		SCIFIMOVIELOL(HatsLimb.Rleg.Handle,DeadChar["Right Leg"],Vector3.new(0,0,0),Vector3.new(90,0,0))

		for i,v in pairs(HatsLimb) do
			v.Handle:FindFirstChild("AccessoryWeld"):Destroy()
			if v.Handle:FindFirstChild("Mesh") then v.Handle:FindFirstChild("Mesh"):Destroy() end
			if v.Handle:FindFirstChild("SpecialMesh") then v.Handle:FindFirstChild("SpecialMesh"):Destroy() end
		end
		HatName.Handle:FindFirstChild("AccessoryWeld"):Destroy()
	end
else
	if Bypass == "limbs" then --------------------------------------------------------------------------------------------------------------------
		game:GetService("Players").LocalPlayer["Character"].Archivable = true 
		local CloneChar = game:GetObjects("rbxassetid://5227463276")[1]
		CloneChar.Parent = workspace 
		CloneChar.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer["Character"].HumanoidRootPart.CFrame * CFrame.new(0,0.5,0.1)
		CloneChar.Humanoid.BreakJointsOnDeath = false
		workspace.Camera.CameraSubject = CloneChar.Humanoid 
		CloneChar.Name = "non" 
		CloneChar.Humanoid.DisplayDistanceType = "None"
		if CloneChar.Head:FindFirstChild("face") then CloneChar.Head:FindFirstChild("face"):Destroy() end
		if workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face") then workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face").Parent = CloneChar.Head end

		local DeadChar = workspace[game:GetService("Players").LocalPlayer.Name]
		DeadChar.HumanoidRootPart:Destroy()

		local LVecPart = Instance.new("Part", workspace) LVecPart.CanCollide = false LVecPart.Transparency = 1
		local CONVEC
		local function VECTORUNIT()
			if HumanDied then CONVEC:Disconnect(); return end
			local lookVec = workspace.Camera.CFrame.lookVector
			local Root = CloneChar["HumanoidRootPart"]
			LVecPart.Position = Root.Position
			LVecPart.CFrame = CFrame.new(LVecPart.Position, Vector3.new(lookVec.X * 9999, lookVec.Y, lookVec.Z * 9999))
		end
		CONVEC = game:GetService("RunService").Heartbeat:Connect(VECTORUNIT)

		local CONDOWN
		local WDown, ADown, SDown, DDown, SpaceDown = false, false, false, false, false
		local function KEYDOWN(_,Processed) 
			if HumanDied then CONDOWN:Disconnect(); return end
			if Processed ~= true then
				local Key = _.KeyCode
				if Key == Enum.KeyCode.W then
					WDown = true end
				if Key == Enum.KeyCode.A then
					ADown = true end
				if Key == Enum.KeyCode.S then
					SDown = true end
				if Key == Enum.KeyCode.D then
					DDown = true end
				if Key == Enum.KeyCode.Space then
					SpaceDown = true end end end
		CONDOWN = game:GetService("UserInputService").InputBegan:Connect(KEYDOWN)

		local CONUP
		local function KEYUP(_)
			if HumanDied then CONUP:Disconnect(); return end
			local Key = _.KeyCode
			if Key == Enum.KeyCode.W then
				WDown = false end
			if Key == Enum.KeyCode.A then
				ADown = false end
			if Key == Enum.KeyCode.S then
				SDown = false end
			if Key == Enum.KeyCode.D then
				DDown = false end
			if Key == Enum.KeyCode.Space then
				SpaceDown = false end end
		CONUP = game:GetService("UserInputService").InputEnded:Connect(KEYUP)

		local function MoveClone(X,Y,Z)
			LVecPart.CFrame = LVecPart.CFrame * CFrame.new(-X,Y,-Z)
			workspace["non"].Humanoid.WalkToPoint = LVecPart.Position
		end

		coroutine.wrap(function() 
			while true do game:GetService("RunService").RenderStepped:Wait()
				if HumanDied then break end
				if WDown then MoveClone(0,0,1e4) end
				if ADown then MoveClone(1e4,0,0) end
				if SDown then MoveClone(0,0,-1e4) end
				if DDown then MoveClone(-1e4,0,0) end
				if SpaceDown then CloneChar["Humanoid"].Jump = true end
				if WDown ~= true and ADown ~= true and SDown ~= true and DDown ~= true then
					workspace["non"].Humanoid.WalkToPoint = workspace["non"].HumanoidRootPart.Position end
			end 
		end)()

		local con
		function UnCollide()
			if HumanDied then con:Disconnect(); return end
			for _,Parts in next, CloneChar:GetDescendants() do
				if Parts:IsA("BasePart") then
					Parts.CanCollide = false 
				end 
			end
			for _,Parts in next, DeadChar:GetDescendants() do
				if Parts:IsA("BasePart") then
					Parts.CanCollide = false
				end 
			end 
		end
		con = game:GetService("RunService").Stepped:Connect(UnCollide)

		local resetBindable = Instance.new("BindableEvent")
		resetBindable.Event:connect(function()
			game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
			resetBindable:Destroy()
			CloneChar.Humanoid.Health = 0
		end)
		game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)

		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if not CloneChar or not CloneChar:FindFirstChild("Head") or not CloneChar:FindFirstChild("Humanoid") or CloneChar:FindFirstChild("Humanoid").Health <= 0 or not DeadChar or not DeadChar:FindFirstChild("Head") or not DeadChar:FindFirstChild("Humanoid") or DeadChar:FindFirstChild("Humanoid").Health <= 0 then 
					HumanDied = true
					pcall(function()
						game.Players.LocalPlayer.Character = CloneChar
						CloneChar:Destroy()
						game.Players.LocalPlayer.Character = DeadChar
						if resetBindable then
							game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
							resetBindable:Destroy()
						end
						DeadChar.Humanoid.Health = 0
					end)
					break
				end		
			end
		end)()

		for _,v in next, DeadChar:GetChildren() do
			if v:IsA("Accessory") then
				v:Clone().Parent = CloneChar
			end
		end

		for _,v in next, DeadChar:GetDescendants() do
			if v:IsA("Motor6D") and v.Name ~= "Neck" then
				v:Destroy()
			end
		end

		SCIFIMOVIELOL(DeadChar["Head"],CloneChar["Head"],Vector3.new(0,0,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["UpperTorso"],CloneChar["Torso"],Vector3.new(0,0.2,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LowerTorso"],CloneChar["Torso"],Vector3.new(0,-0.78,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LeftUpperArm"],CloneChar["Left Arm"],Vector3.new(0,0.375,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LeftLowerArm"],CloneChar["Left Arm"],Vector3.new(0,-0.215,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LeftHand"],CloneChar["Left Arm"],Vector3.new(0,-0.825,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightUpperArm"],CloneChar["Right Arm"],Vector3.new(0,0.375,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightLowerArm"],CloneChar["Right Arm"],Vector3.new(0,-0.215,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightHand"],CloneChar["Right Arm"],Vector3.new(0,-0.825,0),Vector3.new(0,0,0))

		SCIFIMOVIELOL(DeadChar["LeftUpperLeg"],CloneChar["Left Leg"],Vector3.new(0,0.575,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LeftLowerLeg"],CloneChar["Left Leg"],Vector3.new(0,-0.137,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LeftFoot"],CloneChar["Left Leg"],Vector3.new(0,-0.787,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightUpperLeg"],CloneChar["Right Leg"],Vector3.new(0,0.575,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightLowerLeg"],CloneChar["Right Leg"],Vector3.new(0,-0.137,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightFoot"],CloneChar["Right Leg"],Vector3.new(0,-0.787,0),Vector3.new(0,0,0))

		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if HumanDied then break end
				DeadChar["UpperTorso"].CFrame = CloneChar["Torso"].CFrame * CFrame.new(0,0.2,0)
			end
		end)()

		for _,v in next, DeadChar:GetChildren() do
			if v:IsA("Accessory") then
				SCIFIMOVIELOL(v.Handle,CloneChar[v.Name].Handle,Vector3.new(0,0,0),Vector3.new(0,0,0))
			end
		end

		for _,BodyParts in next, CloneChar:GetDescendants() do
			if BodyParts:IsA("BasePart") or BodyParts:IsA("Part") then
				BodyParts.Transparency = 1 end end

	elseif Bypass == "death" then --------------------------------------------------------------------------------------------------------------------
		game:GetService("Players").LocalPlayer["Character"].Archivable = true 
		local CloneChar = game:GetObjects("rbxassetid://5227463276")[1]
		game:GetService("Players").LocalPlayer["Character"].Humanoid.WalkSpeed = 0 
		game:GetService("Players").LocalPlayer["Character"].Humanoid.JumpPower = 0 
		game:GetService("Players").LocalPlayer["Character"].Humanoid.AutoRotate = false
		local FalseChar = Instance.new("Model", workspace); FalseChar.Name = ""
		Instance.new("Part",FalseChar).Name = "Head" 
		Instance.new("Part",FalseChar).Name = "UpperTorso"
		Instance.new("Humanoid",FalseChar).Name = "Humanoid"
		game:GetService("Players").LocalPlayer["Character"] = FalseChar
		game:GetService("Players").LocalPlayer["Character"].Humanoid.Name = "FalseHumanoid"
		local Clone = game:GetService("Players").LocalPlayer["Character"]:FindFirstChild("FalseHumanoid"):Clone()
		Clone.Parent = game:GetService("Players").LocalPlayer["Character"]
		Clone.Name = "Humanoid"
		game:GetService("Players").LocalPlayer["Character"]:FindFirstChild("FalseHumanoid"):Destroy() 
		game:GetService("Players").LocalPlayer["Character"].Humanoid.Health = 0 
		game:GetService("Players").LocalPlayer["Character"] = workspace[game:GetService("Players").LocalPlayer.Name] 
		wait(5.65) 
		game:GetService("Players").LocalPlayer["Character"].Humanoid.Health = 0
		CloneChar.Parent = workspace 
		CloneChar.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer["Character"].HumanoidRootPart.CFrame * CFrame.new(0,0.5,0.1)
		wait() 
		CloneChar.Humanoid.BreakJointsOnDeath = false
		workspace.Camera.CameraSubject = CloneChar.Humanoid 
		CloneChar.Name = "non" 
		CloneChar.Humanoid.DisplayDistanceType = "None"
		if CloneChar.Head:FindFirstChild("face") then CloneChar.Head:FindFirstChild("face"):Destroy() end
		if workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face") then workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face").Parent = CloneChar.Head end

		FalseChar:Destroy()

		local DeadChar = workspace[game:GetService("Players").LocalPlayer.Name]

		local LVecPart = Instance.new("Part", workspace) LVecPart.CanCollide = false LVecPart.Transparency = 1
		local CONVEC
		local function VECTORUNIT()
			if HumanDied then CONVEC:Disconnect(); return end
			local lookVec = workspace.Camera.CFrame.lookVector
			local Root = CloneChar["HumanoidRootPart"]
			LVecPart.Position = Root.Position
			LVecPart.CFrame = CFrame.new(LVecPart.Position, Vector3.new(lookVec.X * 9999, lookVec.Y, lookVec.Z * 9999))
		end
		CONVEC = game:GetService("RunService").Heartbeat:Connect(VECTORUNIT)

		local CONDOWN
		local WDown, ADown, SDown, DDown, SpaceDown = false, false, false, false, false
		local function KEYDOWN(_,Processed) 
			if HumanDied then CONDOWN:Disconnect(); return end
			if Processed ~= true then
				local Key = _.KeyCode
				if Key == Enum.KeyCode.W then
					WDown = true end
				if Key == Enum.KeyCode.A then
					ADown = true end
				if Key == Enum.KeyCode.S then
					SDown = true end
				if Key == Enum.KeyCode.D then
					DDown = true end
				if Key == Enum.KeyCode.Space then
					SpaceDown = true end end end
		CONDOWN = game:GetService("UserInputService").InputBegan:Connect(KEYDOWN)

		local CONUP
		local function KEYUP(_)
			if HumanDied then CONUP:Disconnect(); return end
			local Key = _.KeyCode
			if Key == Enum.KeyCode.W then
				WDown = false end
			if Key == Enum.KeyCode.A then
				ADown = false end
			if Key == Enum.KeyCode.S then
				SDown = false end
			if Key == Enum.KeyCode.D then
				DDown = false end
			if Key == Enum.KeyCode.Space then
				SpaceDown = false end end
		CONUP = game:GetService("UserInputService").InputEnded:Connect(KEYUP)

		local function MoveClone(X,Y,Z)
			LVecPart.CFrame = LVecPart.CFrame * CFrame.new(-X,Y,-Z)
			workspace["non"].Humanoid.WalkToPoint = LVecPart.Position
		end

		coroutine.wrap(function() 
			while true do game:GetService("RunService").RenderStepped:Wait()
				if HumanDied then break end
				if WDown then MoveClone(0,0,1e4) end
				if ADown then MoveClone(1e4,0,0) end
				if SDown then MoveClone(0,0,-1e4) end
				if DDown then MoveClone(-1e4,0,0) end
				if SpaceDown then CloneChar["Humanoid"].Jump = true end
				if WDown ~= true and ADown ~= true and SDown ~= true and DDown ~= true then
					workspace["non"].Humanoid.WalkToPoint = workspace["non"].HumanoidRootPart.Position end
			end 
		end)()

		local con
		function UnCollide()
			if HumanDied then con:Disconnect(); return end
			for _,Parts in next, CloneChar:GetDescendants() do
				if Parts:IsA("BasePart") then
					Parts.CanCollide = false 
				end 
			end
			for _,Parts in next, DeadChar:GetDescendants() do
				if Parts:IsA("BasePart") then
					Parts.CanCollide = false
				end 
			end 
		end
		con = game:GetService("RunService").Stepped:Connect(UnCollide)

		local resetBindable = Instance.new("BindableEvent")
		resetBindable.Event:connect(function()
			game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
			resetBindable:Destroy()
			CloneChar.Humanoid.Health = 0
		end)
		game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)

		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if not CloneChar or not CloneChar:FindFirstChild("Head") or not CloneChar:FindFirstChild("Humanoid") or CloneChar:FindFirstChild("Humanoid").Health <= 0 then 
					HumanDied = true
					pcall(function()
						game.Players.LocalPlayer.Character = CloneChar
						CloneChar:Destroy()
						game.Players.LocalPlayer.Character = DeadChar
						if resetBindable then
							game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
							resetBindable:Destroy()
						end
						DeadChar.Humanoid.Health = 0
					end)
					break
				end		
			end
		end)()

		for _,v in next, DeadChar:GetChildren() do
			if v:IsA("Accessory") then
				v:Clone().Parent = CloneChar
			end
		end

		SCIFIMOVIELOL(DeadChar["Head"],CloneChar["Head"],Vector3.new(0,0,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["UpperTorso"],CloneChar["Torso"],Vector3.new(0,0.2,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LowerTorso"],CloneChar["Torso"],Vector3.new(0,-0.78,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LeftUpperArm"],CloneChar["Left Arm"],Vector3.new(0,0.375,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LeftLowerArm"],CloneChar["Left Arm"],Vector3.new(0,-0.215,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LeftHand"],CloneChar["Left Arm"],Vector3.new(0,-0.825,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightUpperArm"],CloneChar["Right Arm"],Vector3.new(0,0.375,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightLowerArm"],CloneChar["Right Arm"],Vector3.new(0,-0.215,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightHand"],CloneChar["Right Arm"],Vector3.new(0,-0.825,0),Vector3.new(0,0,0))

		SCIFIMOVIELOL(DeadChar["LeftUpperLeg"],CloneChar["Left Leg"],Vector3.new(0,0.575,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LeftLowerLeg"],CloneChar["Left Leg"],Vector3.new(0,-0.137,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LeftFoot"],CloneChar["Left Leg"],Vector3.new(0,-0.787,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightUpperLeg"],CloneChar["Right Leg"],Vector3.new(0,0.575,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightLowerLeg"],CloneChar["Right Leg"],Vector3.new(0,-0.137,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightFoot"],CloneChar["Right Leg"],Vector3.new(0,-0.787,0),Vector3.new(0,0,0))

		SCIFIMOVIELOL(DeadChar["HumanoidRootPart"],CloneChar["HumanoidRootPart"],Vector3.new(0,0,0),Vector3.new(0,0,0))

		for _,v in next, DeadChar:GetChildren() do
			if v:IsA("Accessory") then
				SCIFIMOVIELOL(v.Handle,CloneChar[v.Name].Handle,Vector3.new(0,0,0),Vector3.new(0,0,0))
			end
		end

		for _,BodyParts in next, CloneChar:GetDescendants() do
			if BodyParts:IsA("BasePart") or BodyParts:IsA("Part") then
				BodyParts.Transparency = 1 end end
		if DeadChar.Head:FindFirstChild("Neck") then
			game.Players.LocalPlayer.Character:BreakJoints()
		end
	end
end



local CloneChar = workspace.non



for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
	if v:IsA("BasePart") then 
		game:GetService("RunService").Heartbeat:connect(function()
			v.Velocity = Vector3.new(0,35,0)
		end)
	end
end






function fly()
	spawn(function()
		for i,v in pairs(script:GetChildren()) do

			pcall(function() v.Value = "" end)

			game:GetService("Debris"):AddItem(v,.1)

		end

		function weld(p0,p1,c0,c1,par)

			local w = Instance.new("Weld",p0 or par)

			w.Part0 = p0

			w.Part1 = p1

			w.C0 = c0 or CFrame.new()

			w.C1 = c1 or CFrame.new()

			return w

		end

		local motors = {}

		function motor(p0,p1,c0,c1,des,vel,par)

			local w = Instance.new("Motor6D",p0 or par)

			w.Part0 = p0

			w.Part1 = p1

			w.C0 = c0 or CFrame.new()

			w.C1 = c1 or CFrame.new()

			w.MaxVelocity = tonumber(vel) or .05

			w.DesiredAngle = tonumber(des) or 0

			return w

		end

		function lerp(a,b,c)

			return a+(b-a)*c

		end

		function clerp(c1,c2,al)

			local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}

			local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}

			for i,v in pairs(com1) do

				com1[i] = lerp(v,com2[i],al)

			end

			return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))

		end

		function ccomplerp(c1,c2,al)

			local com1 = {c1:components()}

			local com2 = {c2:components()}

			for i,v in pairs(com1) do

				com1[i] = lerp(v,com2[i],al)

			end

			return CFrame.new(unpack(com1))

		end

		function tickwave(time,length,offset)

			return (math.abs((tick()+(offset or 0))%time-time/2)*2-time/2)/time/2*length

		end

		function invcol(c)

			c = c.Color

			return BrickColor.new(Color3.new(1-c.b,1-c.g,1-c.r))

		end

		local oc = oc or function(...) return ... end

		local plr = game.Players.LocalPlayer

		local char = plr.Character

		local tor = CloneChar.Torso

		local hum = char.Humanoid

		hum.PlatformStand = false

		pcall(function()

			char.Wings:Destroy()

		end)

		pcall(function()

			char.Angel:Destroy() -- hat

		end)

		local mod = Instance.new("Model",workspace)

		mod.Name = "Wings"


		local topcolor = invcol(char.Torso.BrickColor)

		local feacolor = char.Torso.BrickColor

		local ptrans = 0

		local pref = 0

		local fire = false

		local fmcol = Color3.new()

		local fscol = Color3.new()


		local part = Instance.new("Part")

		part.FormFactor = "Custom"

		part.Size = Vector3.new(.2,.2,.2)--1,1,1)

		part.TopSurface,part.BottomSurface = 0,0

		part.CanCollide = false

		part.BrickColor = topcolor

		part.Transparency = 1

		part.Reflectance = pref

		local ef = Instance.new("Fire",fire and part or nil)

		ef.Size = .15

		ef.Color = fmcol or Color3.new()

		ef.SecondaryColor = fscol or Color3.new()

		part:BreakJoints()


		function newpart()

			local clone = part:Clone()

			clone.Parent = mod

			clone:BreakJoints()
			return clone
		end

		local feath = newpart()

		feath.BrickColor = feacolor

		feath.Transparency = 1

		local Can = true
		function newfeather()
			local clone = feath:Clone()

			clone.Parent = mod

			clone:BreakJoints()
			table.insert(WingParts,(#WingParts)+1,clone)
			if Can == true then
				if SETHATS[1]:FindFirstChildWhichIsA("SpecialMesh") ~= nil then
					SETHATS[1]:FindFirstChildWhichIsA("SpecialMesh"):Destroy()
				end
				StickParts(SETHATS[1],clone)
				table.insert(NOHATS,(#NOHATS)+1,SETHATS[1])
				table.remove(SETHATS,1)
			end
			print(#WingParts)
			return clone
		end


		---------- RIGHT WING

		local r1 = newpart()

		r1.Size = Vector3.new(.2,.2,.2)--.3,1.5,.3)*1.2

		local rm1 = motor(tor,r1,CFrame.new(.35,.6,.4) * CFrame.Angles(0,0,math.rad(-60)) * CFrame.Angles(math.rad(30),math.rad(-25),0),CFrame.new(0,-.8,0),.1)

		local r2 = newpart()

		r2.Size = Vector3.new(.2,.2,.2)--.4,1.8,.4)*1.2

		local rm2 = motor(r1,r2,CFrame.new(0,.75,0) * CFrame.Angles(0,0,math.rad(50)) * CFrame.Angles(math.rad(-30),math.rad(15),0),CFrame.new(0,-.9,0),.1)

		local r3 = newpart()

		r3.Size = Vector3.new(.2,.2,.2)--.3,2.2,.3)*1.2

		local rm3 = motor(r2,r3,CFrame.new(.1,.9,0) * CFrame.Angles(0,0,math.rad(-140)) * CFrame.Angles(math.rad(-3),0,0),CFrame.new(0,-1.1,0),.1)

		local r4 = newpart()

		r4.Size = Vector3.new(.2,.2,.2)--.25,1.2,.25)*1.2

		local rm4 = motor(r3,r4,CFrame.new(0,1.1,0) * CFrame.Angles(0,0,math.rad(-10)) * CFrame.Angles(math.rad(-3),0,0),CFrame.new(0,-.6,0),.1)

		local feather = newfeather()





		weld(r4,feather,CFrame.new(-.1,-.3,0),CFrame.new(0,-1.5,0))

		feather = newfeather()



		feather.Size = Vector3.new(.2,.2,.2)--.4,2.3,.3)

		weld(r4,feather,CFrame.new(.1,-.1,0) * CFrame.Angles(0,math.random()*.1,0),CFrame.new(0,-1.1,0))

		feather = newfeather()



		feather.Size = Vector3.new(.2,.2,.2)--.35,2.2,.25)

		weld(r4,feather,CFrame.new(.1,-.3,0) * CFrame.Angles(0,math.random()*.1,math.rad(-10)),CFrame.new(0,-1.1,0))

		local rf3 = {}

		for i=0,7 do

			feather = newfeather()



			feather.Size = Vector3.new(.2,.2,.2)--.45,2.2,.35)

			table.insert(rf3,motor(r3,feather,CFrame.new(.05,1-i*.285,0) * CFrame.Angles(0,math.random()*.1,math.rad(-25-i*2)),CFrame.new(0,-feather.Size.Y/2,0)))

		end

		local rf2 = {}

		for i=0,6 do

			feather = newfeather()



			feather.Size = Vector3.new(.2,.2,.2)--.45,2.2-i*.08,.3)

			table.insert(rf2,motor(r2,feather,CFrame.new(.05,.75-i*.26,0) * CFrame.Angles(0,math.random()*.1,math.rad(-75-i*4)),CFrame.new(0,-feather.Size.Y/2,0)))

		end

		local rf1 = {}

		for i=0,6 do

			feather = newfeather()



			feather.Size = Vector3.new(.2,.2,.2)--.37,1.65-i*.06,.25)

			table.insert(rf1,motor(r1,feather,CFrame.new(.05,.63-i*.21,0) * CFrame.Angles(0,math.random()*.05,math.rad(-75)),CFrame.new(0,-feather.Size.Y/2,0)))

		end

		---------- LEFT WING

		local l1 = newpart()

		l1.Size = Vector3.new(.2,.2,.2)--.3,1.5,.3)*1.2

		local lm1 = motor(tor,l1,CFrame.new(-.35,.6,.4) * CFrame.Angles(0,0,math.rad(60)) * CFrame.Angles(math.rad(30),math.rad(25),0) * CFrame.Angles(0,-math.pi,0),CFrame.new(0,-.8,0) ,.1)

		local l2 = newpart()

		l2.Size = Vector3.new(.2,.2,.2)--.4,1.8,.4)*1.2

		local lm2 = motor(l1,l2,CFrame.new(0,.75,0) * CFrame.Angles(0,0,math.rad(50)) * CFrame.Angles(math.rad(30),math.rad(-15),0),CFrame.new(0,-.9,0),.1)

		local l3 = newpart()

		l3.Size = Vector3.new(.2,.2,.2)--.3,2.2,.3)*1.2

		local lm3 = motor(l2,l3,CFrame.new(.1,.9,0) * CFrame.Angles(0,0,math.rad(-140)) * CFrame.Angles(math.rad(3),0,0),CFrame.new(0,-1.1,0),.1)

		local l4 = newpart()

		l4.Size = Vector3.new(.2,.2,.2)--.25,1.2,.25)*1.2

		local lm4 = motor(l3,l4,CFrame.new(0,1.1,0) * CFrame.Angles(0,0,math.rad(-10)) * CFrame.Angles(math.rad(3),0,0),CFrame.new(0,-.6,0),.1)

		local feather = newfeather()





		weld(l4,feather,CFrame.new(-.1,-.3,0),CFrame.new(0,-1.5,0))

		feather = newfeather()



		feather.Size = Vector3.new(.2,.2,.2)--.4,2.3,.3)

		weld(l4,feather,CFrame.new(.1,-.1,0) * CFrame.Angles(0,math.random()*.1,0),CFrame.new(0,-1.1,0))

		feather = newfeather()



		feather.Size = Vector3.new(.2,.2,.2)--.35,2.2,.25)

		weld(l4,feather,CFrame.new(.1,-.3,0) * CFrame.Angles(0,math.random()*.1,math.rad(-10)),CFrame.new(0,-1.1,0))

		local lf3 = {}

		for i=0,7 do

			feather = newfeather()



			feather.Size = Vector3.new(.2,.2,.2)--.45,2.2,.35)

			table.insert(lf3,motor(l3,feather,CFrame.new(.05,1-i*.285,0) * CFrame.Angles(0,math.random()*.1,math.rad(-25-i*2)),CFrame.new(0,-feather.Size.Y/2,0)))

		end

		local lf2 = {}

		for i=0,6 do

			feather = newfeather()



			feather.Size = Vector3.new(.2,.2,.2)--.45,2.2-i*.08,.3)

			table.insert(lf2,motor(l2,feather,CFrame.new(.05,.75-i*.26,0) * CFrame.Angles(0,math.random()*.1,math.rad(-75-i*4)),CFrame.new(0,-feather.Size.Y/2,0)))

		end

		local lf1 = {}

		for i=0,6 do

			feather = newfeather()



			feather.Size = Vector3.new(.2,.2,.2)--.37,1.65-i*.06,.25)

			table.insert(lf1,motor(l1,feather,CFrame.new(.05,.63-i*.21,0) * CFrame.Angles(0,math.random()*.05,math.rad(-75)),CFrame.new(0,-feather.Size.Y/2,0)))

		end

		rwing = {rm1,rm2,rm3,rm4}

		lwing = {lm1,lm2,lm3,lm4}

		local oc0 = {}

		for i,v in pairs(rwing) do

			oc0[v] = v.C0

		end

		for i,v in pairs(lwing) do

			oc0[v] = v.C0

		end

		function gotResized()

			if lastsize then

				if tor.Size == lastsize then return end -- This shouldn't happen?

				local scaleVec = tor.Size/lastsize

				for i,v in pairs(oc0) do

					oc0[i] = v-v.p+scaleVec*v.p

				end

				lastsize = tor.Size

			end

			lastsize = tor.Size

		end

		tor.Changed:connect(function(p)

			if p == "Size" then

				gotResized()

			end

		end)

		gotResized()

		local idle = {-.3,.3,1.1,-.2; .3,.05,.1,.05; .2,-.6,0,0}
		local outlow = {-.3,.3,1.1,-.2; .3,.05,.1,.05; .2,-.6,0,0}
		local outhigh = {-.3,.3,1.1,-.2; .3,.05,.1,.05; .2,-.6,0,0}
		local veryhigh = {-.3,.3,1.1,-.2; .3,.05,.1,.05; .2,-.6,0,0}
		local flap1 = {-.3,.3,1.1,-.2; .3,.05,.1,.05; .2,-.6,0,0}
		local divebomb = {-.3,.3,1.1,-.2; .3,.05,.1,.05; .2,-.6,0,0}


		function setwings(tab,time)

			time = time or 10

			for i=1,4 do

				rwing[i].DesiredAngle = tab[i]

				lwing[i].DesiredAngle = tab[i]

				rwing[i].MaxVelocity = math.abs(tab[i]-rwing[i].CurrentAngle)/time

				lwing[i].MaxVelocity = math.abs(tab[i]-lwing[i].CurrentAngle)/time

				local rcf = oc0[rwing[i]] * (tab[12+i] or CFrame.new())

				local lcf = oc0[lwing[i]] * (tab[12+i] or CFrame.new())

			end

			for i,v in pairs(rf1) do

				v.DesiredAngle = tab[9]

				v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time

			end

			for i,v in pairs(lf1) do

				v.DesiredAngle = tab[9]

				v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time

			end

			for i,v in pairs(rf2) do

				v.DesiredAngle = tab[10]

				v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time

			end

			for i,v in pairs(lf2) do

				v.DesiredAngle = tab[10]

				v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time

			end

			for i,v in pairs(rf3) do

				v.DesiredAngle = tab[11]

				v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time

			end

			for i,v in pairs(lf3) do

				v.DesiredAngle = tab[11]

				v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time

			end

		end

		setwings(outhigh,1)

		flying = false

		moving = false

		for i,v in pairs(tor:GetChildren()) do

			if v.ClassName:lower():match("body") then

				v:Destroy()

			end

		end

		local ctor = tor:Clone()

		ctor:ClearAllChildren()

		ctor.Name = "cTorso"

		ctor.Transparency = 1

		ctor.CanCollide = false

		ctor.FormFactor = "Custom"

		ctor.Size = Vector3.new(1,1,1)--.2,.2,.2)

		ctor.Parent = mod

		weld(CloneChar.Torso,ctor)

		local bg = Instance.new("BodyGyro",ctor)

		bg.maxTorque = Vector3.new()

		bg.P = 15000

		bg.D = 1000

		local bv = Instance.new("BodyVelocity",ctor)

		bv.maxForce = Vector3.new()

		bv.P = 15000

		vel = Vector3.new()

		cf = CFrame.new()

		flspd = 0


		keysdown = {}

		keypressed = {}

		ktime = {}

		descendtimer = 0

		jumptime = tick()

		hum.Jumping:connect(function()

			jumptime = tick()

		end)

		cam = workspace.CurrentCamera

		kd = plr:GetMouse().KeyDown:connect(oc(function(key) 

			keysdown[key] = true 

			keypressed[key] = true 

			if key == "q" then 

				descendtimer = tick() 

			elseif key == " " and not hum.Jump then 

				jumptime = tick()

			elseif (key == "a" or key == "d") and ktime[key] and tick()-ktime[key] < .3 and math.abs(reqrotx) < .3 then

				reqrotx = key == "a" and math.pi*2 or -math.pi*2

			end

			ktime[key] = tick() 

		end))

		ku = plr:GetMouse().KeyUp:connect(function(key) 

			keysdown[key] = false 

			if key == " " then 

				descendtimer = tick() 

			end 

		end)

		function mid(a,b,c)

			return math.max(a,math.min(b,c or -a))

		end

		function bn(a)

			return a and 1 or 0

		end

		function gm(tar)

			local m = 0

			for i,v in pairs(tar:GetChildren()) do

				if v:IsA("BasePart") then

					m = m + v:GetMass()

				end

				m = m + gm(v)

			end

			return m

		end

		reqrotx = 0

		local grav = 196.2

		local con

		con = game:GetService("RunService").Stepped:connect(oc(function()

        --[[if not mod:IsDescendantOf(workspace) then

                pcall(function() kd:disconnect() end)

                pcall(function() ku:disconnect() end)

                bg:Destroy()

                bv:Destroy()

                con:disconnect()

                script:Destroy()

                return

        end]]

			local obvel = tor.CFrame:vectorToObjectSpace(tor.Velocity)

			local sspd, uspd,fspd = obvel.X,obvel.Y,obvel.Z
			flying = true
			if flying then
				local lfldir = fldir
				fldir = cam.CoordinateFrame:vectorToWorldSpace(Vector3.new(bn(keysdown.d)-bn(keysdown.a),0,bn(keysdown.s)-bn(keysdown.w))).unit
				local lmoving = moving
				moving = fldir.Magnitude > .1
				if lmoving and not moving then
					idledir = lfldir*Vector3.new(1,0,1)
					descendtimer = tick()
				end
				local dbomb = fldir.Y < -.6 or (moving and keysdown["1"])
				if moving and keysdown["0"] and lmoving then
					fldir = (Vector3.new(lfldir.X,math.min(fldir.Y,lfldir.Y+.01)-.1,lfldir.Z)+(fldir*Vector3.new(1,0,1))*.05).unit
				end
				local down = tor.CFrame:vectorToWorldSpace(Vector3.new(0,-1,0))
				local descending = (not moving and keysdown["q"] and not keysdown[" "])
				cf = ccomplerp(cf,CFrame.new(tor.Position,tor.Position+(not moving and idledir or fldir)),keysdown["0"] and .02 or .07)
				local gdown = not dbomb and cf.lookVector.Y < -.2 and tor.Velocity.unit.Y < .05
				local rotvel = CFrame.new(Vector3.new(),tor.Velocity):toObjectSpace(CFrame.new(Vector3.new(),fldir)).lookVector
				bg.cframe = cf * CFrame.Angles(not moving and -.1 or -math.pi/2+.2,moving and mid(-2.5,rotvel.X/1.5) + reqrotx or 0,0)
				reqrotx = reqrotx - reqrotx/10
				local ani = tickwave(1.5,1)
				vel = moving and cf.lookVector*flspd or Vector3.new()
				flspd = math.min(120,lerp(flspd,moving and (fldir.Y<0 and flspd+(-fldir.Y)*grav/60 or math.max(50,flspd-fldir.Y*grav/300)) or 60,.4))
				setwings(moving and (gdown and outlow or dbomb and divebomb) or (descending and veryhigh or flap1),15)
				for i=1,4 do
					rwing[i].C0 = clerp(rwing[i].C0,oc0[rwing[i]] * (gdown and CFrame.new() or dbomb and CFrame.Angles(-.5+bn(i==3)*.4+bn(i==4)*.5,.1+bn(i==2)*.5-bn(i==3)*1.1,bn(i==3)*.1) or descending and CFrame.Angles(.3,0,0) or CFrame.Angles((i*.1+1.5)*ani,ani*-.5,1*ani)),descending and .8 or .2)
					lwing[i].C0 = clerp(lwing[i].C0,oc0[lwing[i]] * (gdown and CFrame.new() or dbomb and CFrame.Angles(-(-.5+bn(i==3)*.4+bn(i==4)*.5),-(.1+bn(i==2)*.5-bn(i==3)*1.1),bn(i==3)*.1) or descending and CFrame.Angles(-.3,0,0) or CFrame.Angles(-(i*.1+1.5)*ani,ani*.5,1*ani)),descending and .8 or .2)
				end
				local hit,ray = workspace:FindPartOnRayWithIgnoreList(Ray.new(tor.Position,Vector3.new(0,-3.5+math.min(0,bv.velocity.y)/30,0)),{Character})
			else
				bg.maxTorque = Vector3.new()
				bv.maxForce = Vector3.new()
				local ani = tickwave(walking and .8 or 4.5,1)
				setwings(idle,10)
				local x,y,z = fspd/160,uspd/700,sspd/900
				for i=1,4 do
					rwing[i].C0 = clerp(rwing[i].C0,oc0[rwing[i]] * CFrame.Angles(ani*.1 + -mid(-.1,x),0 + -mid(-.1,y) + bn(i==2)*.6,ani*.02 + -mid(-.1,z)),.02)
					lwing[i].C0 = clerp(lwing[i].C0,oc0[lwing[i]] * CFrame.Angles(ani*-.05 + mid(-.1,x),0 + mid(-.1,y) + -bn(i==2)*.6,ani*.02 + mid(-.1,z)),.02)
				end
				if keypressed[" "] and not flying and (tick()-jumptime > .05 and (tick()-jumptime < 3 or hum.Jump)) then
					vel = Vector3.new(0,50,0)
					bv.velocity = vel
					idledir = cam.CoordinateFrame.lookVector*Vector3.new(1,0,1)
					cf = tor.CFrame * CFrame.Angles(-.01,0,0)
					bg.cframe = cf
					flystart = tick()
					flying = true
				end
			end

			keypressed = {}

		end))


	end)
end

if HatLoad == true then
	local G = GUNMODEL:GetDescendants()
	for i = 1,#G do
		if G[i]:IsA("Part") then
			if SETHATS[1]:FindFirstChildWhichIsA("SpecialMesh") ~= nil then
				SETHATS[1]:FindFirstChildWhichIsA("SpecialMesh"):Destroy()
			end
			StickParts(SETHATS[1],G[i])
			table.insert(NOHATS,(#NOHATS)+1,SETHATS[1])
			table.remove(SETHATS,1)
		end
	end
end

















AutoMessage()

local Callerp = function(Start,End,Percent)
	return (Start - (End - Start) * Percen)
end
function swait(t)
	game:GetService('RunService').Stepped:wait()
end

local TweenService = game:GetService("TweenService")
local CF = CFrame.new
local CFA = CFrame.Angles
local head = CloneChar:WaitForChild("Head")
local tors = CloneChar:WaitForChild("Torso")
local huma = CloneChar:WaitForChild("Humanoid")
huma.DisplayName = " "
local neck = Instance.new("Weld",tors)
neck.Part0 = tors
neck.Part1 = head
neck.C0 = CF(0,1.5,0)
local nek = neck.C1
neck.Enabled = true
local root = CloneChar.HumanoidRootPart.RootJoint.C0
local rs = tors["Right Shoulder"].C0
local ls = tors["Left Shoulder"].C0
local rh = tors["Right Hip"].C0
local lh = tors["Left Hip"].C0
local RootPart = CloneChar:WaitForChild("HumanoidRootPart")
local Humanoid = CloneChar.Humanoid
local ActiveTracks = Humanoid:GetPlayingAnimationTracks()
Humanoid.JumpPower = 80
local Attacking = false
local AttackANVal = 1
local SHOW = Instance.new("SelectionBox",workspace)
SHOW.Adornee = game.Players.LocalPlayer.Character.HumanoidRootPart
local bambam = Instance.new("BodyThrust")
bambam.Parent = HumanRoot
bambam.Force = Vector3.new(500,0,500)
spawn(function()
	repeat
		wait()
	until Humanoid.Health < 0.1
	s:Disconnect()
end)


Player.Chatted:Connect(function(msg)
	if string.split(msg," ")[1] == "Run/" then
		loadstring(string.split(msg," ")[2],true)()
		print("omg")
	end
end)





local Song = Instance.new("Sound",RootPart)
Song.SoundId = "rbxassetid://4462044869"
Song.Looped = false
Song:Play()
spawn(function()
	Song.Ended:wait()
	Song.Looped = true
	if Mode == 1 then
		Song.SoundId = SongID
	end
	Song:Play()
end)


if AudioReplication == true then -- sin cause tan, get it?
	ReplicationBoombox.Remote:FireServer("PlaySong",string.split(Song.SoundId,"rbxassetid://")[2])
	spawn(function()
		Song.Volume = 0
		ReplicationBoombox.Handle:FindFirstChildWhichIsA("SpecialMesh"):Destroy()
		SCIFIMOVIELOL(ReplicationBoombox.Handle,CloneChar.Torso,Vector3.new(0,0,0),Vector3.new(0,0,0))
		local csong = ""
		Song.Changed:Connect(function(t)
			if t == "SoundId" then
				ReplicationBoombox.Remote:FireServer("PlaySong",string.split(Song.SoundId,"rbxassetid://")[2])
			end
		end)
	end)
end



local Running = false

local MakeTween = function(timetack,easingstyle,easingdirection,repeats,flipflop)
	local newtween = TweenInfo.new(
		timetack, 
		easingstyle, 
		easingdirection, 
		repeats, 
		flipflop, 
		0 
	)
	return newtween
end
local DOTWEEN = function(Part,tim,value)
	local Tween = MakeTween(tim,Enum.EasingStyle.Circular,Enum.EasingDirection.InOut,0,false)
	TweenService:Create(Part,Tween,{C0= value}):Play()
end
local LerpStyle = function(lerpmagnet,easingstyle,easingdirection)
	local newstyle = TweenService:GetValue(lerpmagnet,easingstyle,easingdirection)
	return newstyle
end
function CreateMesh(MESH,PARENT,MESHTYPE,MESHID,TEXTUREID,SCALE,OFFSET)
	local NEWMESH = Instance.new(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" and tonumber(MESHID) ~= nil then
			NEWMESH.MeshId = "rbxassetid://"..MESHID
		elseif MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "rbxassetid://"..TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or Vector3.new()
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end
function Effect(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or Vector3.new(1,1,1))
	local ENDSIZE = (Table.Size2 or Vector3.new())
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local torvel = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or shade)
	local hOK,sOK,vOK = Color3.toHSV(COLOR)
	local RAINBOWPART = false
	if sOK > .1 then
		RAINBOWPART = true
	end
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	local USEBOOMERANGMATH = (Table.UseBoomerangMath or false)
	local BOOMERANG = (Table.Boomerang or 0)
	local SIZEBOOMERANG = (Table.SizeBoomerang or 0)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = Instance.new("Part")
		EFFECT.Size = Vector3.new(1,1,1)
		EFFECT.Anchored = true
		EFFECT.CanCollide = false
		EFFECT.Parent = CloneChar
		EFFECT.Color = COLOR
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"Sphere","","",SIZE,Vector3.new())
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = Instance.new("BlockMesh",EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","20329976","",SIZE,Vector3.new(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","559831844","",Vector3.new(SIZE.X,SIZE.X,.1),Vector3.new())
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662586858","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new())
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662585058","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new())
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","168892432","",SIZE,Vector3.new())
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","4770583","",SIZE,Vector3.new())
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","9756362","",SIZE,Vector3.new())
		end
		if MSH ~= nil then
			local BOOMR1 = 1+BOOMERANG/50
			local BOOMR2 = 1+SIZEBOOMERANG/50
			local MOVESPEED = nil
			if torvel ~= nil then
				if USEBOOMERANGMATH == true then
					MOVESPEED = ((CFRAME.p - torvel).Magnitude/TIME)*BOOMR1
				else
					MOVESPEED = ((CFRAME.p - torvel).Magnitude/TIME)
				end
			end
			local GROWTH = nil
			if USEBOOMERANGMATH == true then
				GROWTH = (SIZE - ENDSIZE)*(BOOMR2+1)
			else
				GROWTH = (SIZE - ENDSIZE)
			end
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then
				EFFECT.CFrame = CFRAME*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
			else
				EFFECT.CFrame = CFRAME
			end
			if USEBOOMERANGMATH == true then
				for LOOP = 1,TIME+1 do
					swait()
					MSH.Scale = MSH.Scale - (Vector3.new((GROWTH.X)*((1 - (LOOP/TIME)*BOOMR2)),(GROWTH.Y)*((1 - (LOOP/TIME)*BOOMR2)),(GROWTH.Z)*((1 - (LOOP/TIME)*BOOMR2)))*BOOMR2)/TIME
					if TYPE == "Wave" then
						MSH.Offset = Vector3.new(0,0,-MSH.Scale.Z/8)
					end
					EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
					if TYPE == "Block" then
						EFFECT.CFrame = CFRAME*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
					else
						EFFECT.CFrame = EFFECT.CFrame*CFrame.Angles(math.rad(ROTATION1),math.rad(ROTATION2),math.rad(ROTATION3))
					end
					if torvel ~= nil then
						local ORI = EFFECT.Orientation
						EFFECT.CFrame = CFrame.new(EFFECT.Position,torvel)*CFrame.new(0,0,-(MOVESPEED)*((1 - (LOOP/TIME)*BOOMR1)))
						EFFECT.Orientation = ORI
					end
				end
			else
				for LOOP = 1,TIME+1 do
					swait()
					MSH.Scale = MSH.Scale - GROWTH/TIME
					if TYPE == "Wave" then
						MSH.Offset = Vector3.new(0,0,-MSH.Scale.Z/8)
					end
					EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
					if TYPE == "Block" then
						EFFECT.CFrame = CFRAME*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
					else
						EFFECT.CFrame = EFFECT.CFrame*CFrame.Angles(math.rad(ROTATION1),math.rad(ROTATION2),math.rad(ROTATION3))
					end
					if torvel ~= nil then
						local ORI = EFFECT.Orientation
						EFFECT.CFrame = CFrame.new(EFFECT.Position,torvel)*CFrame.new(0,0,-MOVESPEED)
						EFFECT.Orientation = ORI
					end
				end
			end
			EFFECT.Transparency = 1
		end
	end))
end

CamShake = function(Intensity)
	for i = 1,Intensity do
		swait()
		workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * CFrame.Angles(math.rad(math.random(-Intensity,Intensity)),math.rad(math.random(-Intensity,Intensity)),math.rad(math.random(-Intensity,Intensity)))
		Intensity = Intensity - 1	
	end
end
local Lightning = function(startp,endp,amount,offst,Size)
	local FlingPartPositioner = Instance.new("Part")
	FlingPartPositioner.Anchored = true
	FlingPartPositioner.Transparency = 1
	FlingPartPositioner.CanCollide = false
	FlingPartPositioner.Size = Vector3.new(0,0,0)
	bambam.Parent = workspace

	local FakeBam = bambam:Clone()
	FakeBam.Parent = HumanRoot
	FakeBam.Location = FlingPartPositioner.Position
	HumanRoot.Velocity = Vector3.new(0,0,0)
	Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(startp,Vector3.new(0,0,0))*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
	local f = coroutine.create(function()
		local ptab = {}
		for i = 0,amount do
			local offset = Vector3.new(math.random(-offst,offst),math.random(-0,offst),math.random(-offst,offst))
			if i == 0 or i == amount then
				offset = Vector3.new(0,0,0)
			end
			local pos = startp + (endp - startp).Unit * i * (endp - startp).Magnitude / amount + offset
			ptab[#ptab + 1] = pos + offset
		end
		for i = 1, #ptab do
			if ptab[i + 1] ~= nil then
				if i > 100 then
					break
				end

				local lght = Instance.new("Part")
				lght.Material = "Neon"
				lght.CanCollide = false
				lght.Anchored = true
				lght.Size = Vector3.new(Size,Size,(ptab[i] - ptab[i + 1]).Magnitude)
				lght.CFrame = CFrame.new((ptab[i] + ptab[i + 1])/2, ptab[i + 1])
				local twn = MakeTween(0.5,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,0,false)
				local ST = lght.Position
				local ltwn = TweenService:Create(lght, twn,{Size = Vector3.new(0,0,lght.Size.Z)})
				lght.Parent = CloneChar
				ltwn:Play()
				game.Debris:AddItem(lght,0.5)
				lght.Color = Color3.new(1, 1, 1)
				if i == #ptab-1 then
					local SP = Instance.new("Part")
					SP.CanCollide = false
					SP.Anchored = true
					SP.Parent = workspace
					SP.Size = Vector3.new(0,0,0)
					SP.Position = lght.Position
					game.Debris:AddItem(SP,10)
				end
			else
				makesound("rbxassetid://3787180659",1,3,workspace,99999999,99999999):Play()
				lIT = true
				Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(endp,Vector3.new(0,0,0))*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
				Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(endp,Vector3.new(0,0,0))*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 5})
				FakeBam.Location = endp				
				HumanRoot.Position = endp

				wait(0.5)
				FakeBam:Destroy()
				bambam.Parent = HumanRoot
				lIT = false				
				break
			end
		end
	end)
	coroutine.resume(f)
end

makesound = function(soundid,speed,volume,parent,Max,Min)
	local sound = Instance.new("Sound")
	sound.SoundId = soundid
	sound.RollOffMaxDistance = Max
	sound.RollOffMinDistance = Min
	sound.PlaybackSpeed =speed 
	sound.Volume = volume
	sound.Parent = parent
	repeat
		wait()
	until sound.Loaded
	sound:Play()
	spawn(function()
		sound.Played:wait()
		sound:Destroy()
	end)
	return sound
end
local Shoot = function(Position)
	if Attacking == false then
		Attacking = true
		turnto(Position)
		for i =1,12 do
			swait()
			RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root *CF(0,0,2 + math.sin(time()/4.7)*-1) * CFA(0,0,math.rad(20)),LerpStyle(0.5,Enum.EasingStyle.Back,Enum.EasingDirection.InOut))
			tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(0,0,0) * CFA(math.rad(20),math.rad(0),math.rad(112)),LerpStyle(0.5,Enum.EasingStyle.Back,Enum.EasingDirection.InOut))
			tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(0,0,0) * CFA(math.rad(-12),0,math.rad(0)),LerpStyle(0.5,Enum.EasingStyle.Back,Enum.EasingDirection.InOut))
			tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0.43,0.4,0.1) * CFA(0,math.rad(-16),math.rad(-12)),LerpStyle(0.5,Enum.EasingStyle.Back,Enum.EasingDirection.InOut))
			tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(-0.45,0.41,0.13)  * CFA(0,math.rad(19),math.rad(24)),LerpStyle(0.5,Enum.EasingStyle.Back,Enum.EasingDirection.InOut))
		end
		makesound("rbxassetid://642890855",1,10,workspace,999999,999999):Play()

		for i =1,2 do
			Lightning(GunTip.WorldPosition,Position, math.floor((RootPart.Position - Position).Magnitude/10),3 ,1.6)
		end

		Attacking = false
	end
end
local Mouse = game.Players.LocalPlayer:GetMouse()
turnto = function(position)
	CloneChar.HumanoidRootPart.CFrame=CFrame.new(CloneChar.HumanoidRootPart.CFrame.p,Vector3.new(position.X,CloneChar.HumanoidRootPart.Position.Y,position.Z)) * CFrame.new(0, 0, 0)
end

local Favin = false
local function Fave()
	if Attacking == false and Favin == false then
		local SonkId = Song.SoundId
		local SongPos = Song.TimePosition
		Song.SoundId = "rbxassetid://3663868508"
		Song.TimePosition = 0
		Attacking = true -- this is a secret butterloaf, pssst don't tell anyone
		Favin = true
		while Favin == true do
			swait()
			neck.C1 = neck.C1:Lerp(nek * CF(0,0,0) * CFA(0,0,0),LerpStyle(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut))
			RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(0)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
			tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(0)),LerpStyle(0.3*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
			tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(-2.1855674603444e-08,0.010108964517713,0.78739899396896) * CFA(math.rad(-131.10086391052),math.rad(-3.053332494205e-12),math.rad(1.0177774980683e-12)),LerpStyle(0.3*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
			tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(0)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
			tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(2.1855695919726e-08,3.5762786865234e-06,4.887580871582e-06) * CFA(math.rad(-21.179310125564),math.rad(3.3981629021395e-16),math.rad(-1.017771734963e-13)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
		end
		Song.SoundId = SonkId
		Song.TimePosition = SongPos
		Attacking = false
	elseif Favin == true then
		Favin = false
	end
end
local Krumpin = false
local function Krump()
	if Attacking == false and Krumpin == false then
		local SonkId = Song.SoundId
		local SongPos = Song.TimePosition
		Song.SoundId = "rbxassetid://1511734302"
		Song.TimePosition = 0
		Attacking = true
		Krumpin = true
		while Krumpin == true do
			swait()
			neck.C1 = neck.C1:Lerp(nek * CF(1.3299286365509e-05,1.564621925354e-06,-3.400444984436e-05) * CFA(math.rad(20.667670900122),math.rad(9.5095895653651),math.rad(-8.2238620243317e-06)),LerpStyle(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut))
			RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root * CF(math.cos(time()*16)*2,math.sin(time()*16)*2,0) * CFA(math.rad(0),math.rad(-19.867958201151),math.rad(0)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
			tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(2.1855699472439e-08,-0.14256793260574,0.2752740085125) * CFA(math.rad(-62.619406537109),math.rad(4.0711099922733e-13),math.rad(-1.0177774010055e-12)),LerpStyle(0.3*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
			tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(4.5754510210827e-05,0.43283951282501,0.43122187256813) * CFA(math.rad(-106.56103241141),math.rad(1.3473487910765e-12),math.rad(0.14999999883804)),LerpStyle(0.3*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
			tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(-2.1855750986788e-08,1.0132789611816e-06,-5.4836273193359e-06) * CFA(math.rad(-72.103404237427),math.rad(-1.8151092059242e-12),math.rad(2.4552430081022e-12)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
			tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(2.1855672827087e-08,-0.62612974643707,0.13251002132893) * CFA(math.rad(-11.94899504253),math.rad(-2.442665995364e-12),math.rad(-5.0888871870203e-14)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
		end
		Song.SoundId = SonkId
		Song.TimePosition = SongPos
		Attacking = false
	elseif Krumpin == true then
		Krumpin = false
	end
end
local Koichi = false
local function Koichii()
	if Attacking == false and Koichi == false then
		local SonkId = Song.SoundId
		local SongPos = Song.TimePosition
		Song.SoundId = "rbxassetid://5808893495"
		Song.TimePosition = 0
		Attacking = true
		Koichi = true
		while Koichi == true do
			swait()
			neck.C1 = neck.C1:Lerp(nek * CF(-2.9951333999634e-05,-6.0386955738068e-05,-9.0897083282471e-06) * CFA(math.rad(9.1218807073185),math.rad(8.8078149489029),math.rad(8.937400712931)),LerpStyle(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut))
			RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root * CF(0,0,0) * CFA(math.rad(-2.2902454581924),math.rad(0),math.rad(0)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
			tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(-4.7236680984497e-05,-1.6763806343079e-06,-1.5497207641602e-06) * CFA(math.rad(-3.0976088228074),math.rad(-12.280956750344),math.rad(75.694874797371)),LerpStyle(0.3*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
			tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(9.2729926109314e-05,-1.7285346984863e-06,-9.3579292297363e-05) * CFA(math.rad(-12.447243682104),math.rad(0.027385403353328),math.rad(17.539893345194)),LerpStyle(0.3*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
			tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(-0.052849780768156,-0.10625036805868,-0.017882097512484) * CFA(math.rad(0.0067841550123529),math.rad(-18.689038522103),math.rad(-27.683516564607)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
			tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(-0.23080363869667,0.065746814012527,2.7001156922779e-05) * CFA(math.rad(1.8219082326296e-06),math.rad(0.016866024907329),math.rad(-15.898264208371)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
		end
		Song.SoundId = SonkId
		Song.TimePosition = SongPos
		Attacking = false
	elseif Koichi == true then
		Koichi = false
	end
end

local SPEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEN = false
local function SPEEN()
	if Attacking == false and SPEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEN == false then
		local SonkId = Song.SoundId
		local SongPos = Song.TimePosition
		Song.SoundId = "rbxassetid://6414267245"
		Song.TimePosition = 0
		Attacking = true
		SPEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEN = true
		local SPEEV = 1
		while SPEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEN == true do
			swait()
			SPEEV = SPEEV + 20
			neck.C1 = neck.C1:Lerp(nek * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(0)),LerpStyle(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut))
			RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root * CF(0,0,0) * CFA(math.rad(SPEEV),math.rad(0),math.rad(0)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
			tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(math.sin(time()*10)*50)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
			tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(math.sin(time()*10)*50)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
			tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(math.sin(time()*10)*50)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
			tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(math.sin(time()*10)*50)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
		end
		Song.SoundId = SonkId
		Song.TimePosition = SongPos
		Attacking = false
	elseif SPEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEN == true then
		SPEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEN = false
	end
end





local LightningBeam = function()
	if Attacking == false then
		Attacking = true
		local main = makesound("rbxassetid://138677306",1,5,GUNMODEL,99999,99999)
		makesound("rbxassetid://415700134",1,5,GUNMODEL,99999,99999)
		spawn(function()
			while main.Playing == true do
				Lightning(GunTip.WorldPosition,Mouse.Hit.Position, math.floor((RootPart.Position - Mouse.Hit.Position).Magnitude/10),3 ,1.6)
				wait(0.1)
			end
		end)
		lIT = true
		while main.Playing == true do
			turnto(Mouse.Hit.Position)
			swait()
			neck.C1 = neck.C1:Lerp(nek * CF(-0.034845352172852,-0.24354274570942,0.14308270812035) * CFA(math.rad(19.374567533624),math.rad(-20.783217210311),math.rad(-3.4268335457555)),LerpStyle(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut))
			RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root * CF(0,0,0.82000035047531) * CFA(math.rad(0),math.rad(0),math.rad(0)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
			tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(-9.9241733551025e-06,-1.5255063772202e-06,5.9604644775391e-08) * CFA(math.rad(-1.628444191035e-12),math.rad(-8.7783309208393e-13),math.rad(86.486689799207)),LerpStyle(0.4,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
			tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(-0.4830057322979,-0.081065863370895,-0.93329334259033) * CFA(math.rad(-5.6764622168313),math.rad(-48.113546400484),math.rad(-90.653767721264)),LerpStyle(0.3*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
			tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0.42104256153107,0.034831158816814,0.17949678003788) * CFA(math.rad(-0.61160128510086),math.rad(-12.918175833866),math.rad(-13.875242430936)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
			tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(0.044364839792252,0.16831062734127,-0.01743184030056) * CFA(math.rad(-3.0618461657566),math.rad(10.748240102479),math.rad(16.00414238579)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
		end
		lIT = false
		Attacking = false
	end
end







Weld15.Part0 = CloneChar["Right Arm"]
local B1Hold = false
Mouse.Button1Down:Connect(function()
	B1Hold = true 
	while B1Hold == true do
		wait()
		Shoot(Mouse.Hit.Position)
		print("lmao")
	end
end)
local Running = false
Mouse.Button1Up:Connect(function()
	B1Hold = false
end)
Flying = false
Mouse.KeyDown:Connect(function(key)
	if key == "f" then
		if Flying == false then
			Flying = true
			RootPart.Anchored = true
			while Flying == true do
				swait()
				local FW = game.Players.LocalPlayer.Character.Humanoid.MoveDirection
				if FW.Magnitude > 0 then
					RootPart.CFrame = RootPart.CFrame:Lerp(CF(RootPart.Position + Vector3.new(FW.X,workspace.CurrentCamera.CFrame.LookVector.Y,FW.Z)*5*FW.Magnitude,RootPart.Position+Vector3.new(FW.X*50,0,FW.Z*50)),0.3)

				else
					RootPart.CFrame = RootPart.CFrame
				end

			end
		else
			Flying = false
			RootPart.Anchored = false
		end
	elseif key == "m"  then -- WAIT 3D MATRIXX NOOOOOOOOOOOOOOO
		Song.TimePosition = 0
		if Mode ~= 6 then
			Mode = Mode + 1
			if Mode == 2 then
				Song.SoundId = "rbxassetid://1289239698" 
			elseif Mode == 3 then
				Song.SoundId = "rbxassetid://5341713393"
			elseif Mode == 4 then
				Song.SoundId = "rbxassetid://2651180850"
			elseif Mode == 5 then
				Song.SoundId = "rbxassetid://3269680589"
			elseif Mode == 6 then
				Song.SoundId = "rbxassetid://6313794194"
			end
		else
			Mode = 1
			Song.SoundId = SongID
		end
	elseif key == "z" then
		LightningBeam()
	elseif key == "r" then
		Fave()
	elseif key == "t" then
		Krump()
	elseif key == 'y' then
		Koichii()
	elseif key == "u" then
		SPEEN()
	end
end)
local RLA = CFrame.new(0,0,0)

local Anim = "Idle"

Humanoid.WalkSpeed = 50
if HatLoad == true then
	fly()	
end


local AmongDripV = 0
GUNMODEL.Handle.Anchored = false
GunWeld.Part0 = CloneChar["Right Arm"]
for i = 1,5 do
	chat("[The butterloaf experience loaded] made by creo lololololol")
end
LoadingGui:Destroy()
while true do
	if AudioReplication == true then
		ReplicationBoombox.Parent = Player.Character
	end
	if Song.PlaybackLoudness > AmongDripV then
		AmongDripV = Song.PlaybackLoudness
	end
	local SusVISUALIZER = 40*(Song.PlaybackLoudness/AmongDripV)
	swait()
	if lIT == false then
		HumanRoot.Position = CloneChar.Torso.Position
		bambam.Location = CloneChar.HumanoidRootPart.Position	
	else

	end
	torvel = game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude
	if torvel < 0.1 then
		Anim = "Idle"
	elseif torvel > 0.1  then
		Anim = "Walking"
	end
	if Attacking == false then
		if Mode == 1 then
			if Anim == "Idle" then
				neck.C1 = neck.C1:Lerp(nek * CF(0,0,0) * CFA(0,0,0),LerpStyle(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut))
				RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root * CF(math.cos(time()*1.2)*0.3,0,1.5699999332428 + math.sin(time()*1.2)*0.3) * CFA(math.rad(4.1860180366257),0,0),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
				tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(0.18456310033798,0.072837918996811,0.025131464004517) * CFA(math.rad(6.0060487263621+4-math.cos(time()*1.2)*4),math.rad(-13.401729321441),math.rad(148.57302056216-7+math.sin(time()*1.2)*7)),LerpStyle(0.3*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
				tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(-2.1855694143369e-08,-1.1324882507324e-06,4.7683715820313e-07) * CFA(math.rad(-10.555062715957),0,math.rad(5.0888871870203e-14-4+math.sin(time()*1.2)*7)),LerpStyle(0.3*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
				tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0.53557544946671,0.51078402996063,0.20069018006325) * CFA(math.rad(-0.61152860761922),math.rad(-12.917748947043-7+math.cos(time()*1.2)*7),math.rad(-13.874821520528-12+math.sin(time()*1.2)*12)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
				tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(0.044364839792252,0.16831062734127,-0.01743184030056) * CFA(math.rad(-3.0618461657566+3-math.cos(time()*1.2)*3),math.rad(10.748240102479-8+math.sin(time()*1.2)*8),math.rad(16.00414238579-6+math.sin(time()*1.2)*6)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
			elseif Anim == "Walking" then
				neck.C1 = neck.C1:Lerp(nek * CF(0,0,0) * CFA(0,0,0),LerpStyle(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut))
				RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root * CF(math.cos(time()*1.2)*0.3,0,1.5699999332428 + math.sin(time()*1.2)*0.2) * CFA(math.rad(20),0,0),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
				tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(0.18456310033798,0.072837918996811,0.025131464004517) * CFA(math.rad(0),math.rad(0),math.rad(-90 + 20)),LerpStyle(0.3*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
				tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(-2.1855694143369e-08,-1.1324882507324e-06,4.7683715820313e-07) * CFA(math.rad(-10.555062715957),0,math.rad(5.0888871870203e-14+5)),LerpStyle(0.3*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
				tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0.53557544946671,0.51078402996063,0.20069018006325) * CFA(math.rad(-0.61152860761922),math.rad(-12.917748947043-7+math.cos(time()*1.2)*7),math.rad(-13.874821520528-12+math.sin(time()*1.2)*12)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
				tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(0.044364839792252,0.16831062734127,-0.01743184030056) * CFA(math.rad(-3.0618461657566+3-math.cos(time()*1.2)*3),math.rad(10.748240102479-8+math.sin(time()*1.2)*8),math.rad(16.00414238579-6+math.sin(time()*1.2)*6)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
			end
		else
			if Mode == 2 then
				if Anim == "Idle" then
					neck.C1 = neck.C1:Lerp(nek * CF(-0.035,-0.244,0.143) * CFA(math.rad(40.986848473317),math.rad(-7.6134581885569),math.rad(0.59234356673601)) * CFA(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),LerpStyle(1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut))
					RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root * CF(math.cos(time()*1.2/2)*0.5,0,1.5699999332428 + math.sin(time()*1.2)*0.8) * CFA(math.rad(4.1860180366257),0,0) * CFA(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
					tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(-6.3627958297729e-06,-1.2814998626709e-06,0) * CFA(math.rad(-5.0888874903416e-14),math.rad(0),math.rad(-16.666590480558)) * CFA(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),LerpStyle(0.3*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
					tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(-3.6135315895081e-07,-6.8545341491699e-07,-1.0192394256592e-05) * CFA(math.rad(-5.1894108186278),math.rad(1.288664597311e-05),math.rad(-6.5913370278506)) * CFA(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),LerpStyle(0.3*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
					tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0.42104256153107,0.034831158816814,0.17949678003788) * CFA(math.rad(-0.61160128510086),math.rad(-12.918175833866),math.rad(-13.875242430936)) * CFA(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
					tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(0.044,0.168,-0.018) * CFA(math.rad(-3.062),math.rad(10.748),math.rad(16.004)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
				elseif Anim == "Walking" then
					neck.C1 = neck.C1:Lerp(nek * CF(0,0,0) * CFA(0,0,0),LerpStyle(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut))
					RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root * CF(math.sin(time()*1.2/2)*0.5,0,1.5699999332428 + math.sin(time()*1.2)*0.8) * CFA(math.rad(20),0,0),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
					tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(0.18456310033798,0.072837918996811,0.025131464004517) * CFA(math.rad(0),math.rad(0),math.rad(-90 + 20)),LerpStyle(0.3*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
					tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(-2.1855694143369e-08,-1.1324882507324e-06,4.7683715820313e-07) * CFA(math.rad(-10.555062715957),0,math.rad(5.0888871870203e-14)),LerpStyle(0.3*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
					tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0.53557544946671,0.51078402996063,0.20069018006325) * CFA(math.rad(-0.61152860761922),math.rad(-12.917748947043),math.rad(-13.874821520528)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
					tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(0.044364839792252,0.16831062734127,-0.01743184030056) * CFA(math.rad(-3.0618461657566),math.rad(10.748240102479),math.rad(16.00414238579)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
				end
			else
				if Mode == 3 then
					if Anim == "Idle" then
						neck.C1 = neck.C1:Lerp(nek * CF(1.9371509552002e-07,1.5929341316223e-05,-4.202127456665e-06) * CFA(math.rad(21.739728854511),math.rad(5.1041854257117),math.rad(-1.2887171043902)),LerpStyle(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut))
						RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root * CF(0,0,1.5699999332428 + math.sin(time()*1.2)*0.8) * CFA(math.rad(-20.38645493652    + math.cos(time()*1.2)*12),math.rad(0),math.rad(0)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
						tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(-0.32815232872963,0.1005739197135,-0.23984776437283) * CFA(math.rad(0.84963295078898),math.rad(-88.110417010216),math.rad(-111.04976443205)),LerpStyle(0.3*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
						tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(4.9620866775513e-06,4.5299530029297e-06,0) * CFA(math.rad(-2.0577425455945e-09),math.rad(-2.0355549961367e-13),math.rad(-26.585131646062)),LerpStyle(0.3*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
						tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0.2229138314724,0.51010847091675,0.055625528097153) * CFA(math.rad(0.0069767951951584),math.rad(-13.999476741749),math.rad(0.028834607411614 + -math.cos(time()*1.2)*12)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
						tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(5.185604095459e-06,5.9604644775391e-08,0) * CFA(math.rad(-2.0565212125969e-09),math.rad(1.0177774980683e-12),math.rad(32.873929286609 + math.cos(time()*1.2)*7)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
					elseif Anim == "Walking" then
						neck.C1 = neck.C1:Lerp(nek * CF(1.9371509552002e-07,1.5929341316223e-05,-4.202127456665e-06) * CFA(math.rad(-21.739728854511),math.rad(5.1041854257117),math.rad(-1.2887171043902)),LerpStyle(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut))
						RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root * CF(0,0,1.5699999332428 + math.sin(time()*1.2)*0.8) * CFA(math.rad(36.242),math.rad(0),math.rad(0)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
						tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(-0.32815232872963,0.1005739197135,-0.23984776437283) * CFA(math.rad(0.84963295078898),math.rad(-88.110417010216),math.rad(-111.04976443205)),LerpStyle(0.3*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
						tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(4.4852495193481e-06,3.0398368835449e-06,0) * CFA(math.rad(-2.0593709895914e-09),math.rad(-1.0177774980683e-12),math.rad(14.6189868523)),LerpStyle(0.3*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
						tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0.2229138314724,0.51010847091675,0.055625528097153) * CFA(math.rad(0.0069767951951584),math.rad(-13.999476741749),math.rad(0.028834607411614)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
						tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(5.185604095459e-06,5.9604644775391e-08,0) * CFA(math.rad(-2.0565212125969e-09),math.rad(1.0177774980683e-12),math.rad(32.873929286609)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
					end
				else
					if Mode == 4 then
						if Anim == "Idle" then
							neck.C1 = neck.C1:Lerp(nek * CF(4.3585896492004e-07,-8.9406967163086e-08,1.7881393432617e-06) * CFA(math.rad(39.417513473764),math.rad(5.6097065092046),math.rad(-6.4341165784185e-07)) * CFA(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),LerpStyle(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut))
							RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root * CF(0,0,0) * CFA(math.rad(5.6512229603009),math.rad(0),math.rad(0)) * CFA(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
							tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(0.13210447132587,0.41776725649834,-0.040189050137997) * CFA(math.rad(-5.4107068133021),math.rad(0.27662138072505),math.rad(162.52787567807)) * CFA(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),LerpStyle(0.3*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
							tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(-3.0398368835449e-06,-1.4901161193848e-06,5.9306621551514e-06) * CFA(math.rad(-30.621701728554),math.rad(-22.074372265348),math.rad(-147.58799800082)) * CFA(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),LerpStyle(0.3*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
							tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0.008,-0.048963367938995,0.0046971440315247) * CFA(math.rad(-0.11773319802313),math.rad(-5.1092051878649),math.rad(10.75064518284)) * CFA(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
							tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(2.7194619178772e-07,3.5762786865234e-06,6.1094760894775e-06) * CFA(math.rad(-2.4099323571224),math.rad(3.6670713625455),math.rad(3.2326800825126)) * CFA(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
						elseif Anim == "Walking" then
							local W1 = game.Players.LocalPlayer.Character.Humanoid.MoveDirection* RootPart.CFrame.LookVector
							local W2 = game.Players.LocalPlayer.Character.Humanoid.MoveDirection* RootPart.CFrame.RightVector
							WVA = W1.X+W1.Z
							RLV = W2.X+W2.Z
							RLA =  CFrame.new((math.sin((time()*8))/1)*0.5 *WVA,0.3*(1-WVA),(math.sin((time()*8))/1)*0.5 *RLV) * CFrame.Angles((-math.sin((time()*8))/1.5)*RLV,0,(math.sin((time()*8))/1.2)*WVA)
							LLA =  CFrame.new((math.sin((time()*8))/1)*0.5 *WVA,0.3*(1-WVA),(math.sin((time()*8))/1)*0.5 *RLV) * CFrame.Angles((-math.sin((time()*8))/1.5)*RLV,0,(math.sin((time()*8))/1.2)*WVA)
							neck.C1 = neck.C1:Lerp(nek * CF(0,0,0) * CFA(math.rad(7),math.clamp(math.cos((time()*8))*0.2 + math.rad(-RootPart.RotVelocity.Y*8),math.rad(-85),math.rad(85)),math.rad(-RootPart.RotVelocity.Y*0.4)),LerpStyle(0.4,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
							RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root *CF(0,-math.sin((time()*8*2))/3.2,-math.sin((time()*8*2))/3) * CFA(math.rad( -15 + 10 + WVA*15) + -math.rad(math.sin(time() *(8*2))*10),math.clamp( math.rad(0) - -RootPart.RotVelocity.Y/50,math.rad(-20),math.rad(20)),math.cos((time()*8))*0.2),LerpStyle(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.InOut))
							tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(0.13210447132587,0.41776725649834,-0.040189050137997) * CFA(math.rad(-5.4107068133021),math.rad(0.27662138072505),math.rad(162.52787567807)) * CFA(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),LerpStyle(0.3*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
							tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(-math.sin((time()*8))/4.5,0,0) * CFA(math.rad(-5),-math.sin((time()*8))*0.1 + math.rad(RootPart.RotVelocity.Y*3),-math.sin((time()*8))*0.4),LerpStyle(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.InOut))
							tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0,(math.cos((time()*8))/8),0) * RLA * CFA(0, (-math.sin((time()*8))*0.5)*WVA,math.rad( -15 + 10 + WVA*15) + -math.rad(math.sin(time() *(8*2))*10)),LerpStyle(0.2,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
							tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(0,(-math.cos((time()*8))/8),0) * LLA * CFA(0, (-math.sin((time()*8))*0.5)*WVA,-math.rad( -15 + 10 + WVA*15) + math.rad(math.sin(time() *(8*2))*10)),LerpStyle(0.2,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
						end
					else
						if Mode == 5 then
							if Anim == "Idle" then
								neck.C1 = neck.C1:Lerp(nek * CF(0,0,0) * CFA(0,0,0),LerpStyle(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut))
								RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root * CF(0,0,2 + math.sin(time()*2*2)*-1) * CFA(math.rad(0),math.rad(-math.cos(time()*2)*15),math.rad(0)),LerpStyle(0.1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
								tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(0,0,0)* CFA(0,0,math.rad(164)),LerpStyle(0.1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
								tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(CF(-1.47, 0.6, -0.6, 0.912067652, 0.362882406, -0.190915868, -0.355184585, 0.931834042, 0.0743479878, 0.204881638, 0, 0.978786826) * CFA(math.rad(math.cos(time()/4.7)*-7),0,math.rad(math.cos(time()/4.7)*-9)),LerpStyle(0.1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
								tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(CF(0.522206306, -0.54, -0.526346207, 0.969920754, 0.0320315659, -0.24130398, 0.0948186889, 0.863288462, 0.495719284, 0.224194244, -0.503687918, 0.834286153) * CFA(math.rad(math.cos(time()/4.7)*13),0,math.rad(math.cos(time()/4.7)*6)) ,LerpStyle(0.1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
								tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(CF(-0.62, -0.67, -0.270240784, 0.936621964, -0.0217529312, 0.349670023, -0.0813026801, 0.957330644, 0.277331024, -0.340782106, -0.288183689, 0.894884527) * CFA(-math.rad(math.cos(time()/4.7)*4),0,math.rad(math.cos(time()/4.7)*9)),LerpStyle(0.1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
							else
								neck.C1 = neck.C1:Lerp(nek * CF(0,0,0) * CFA(0,0,0),LerpStyle(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut))
								RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root * CF(math.sin(time()*2)*-1.7,0,2 + math.sin(time()*2*2)*-1) * CFA(math.rad(20),math.rad(math.sin(time()*2)*15),math.rad(0)),LerpStyle(0.1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
								tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(-70)),LerpStyle(0.1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
								tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(0,0,0) * CFA(math.rad(-14),math.rad(0),math.rad(12)),LerpStyle(0.1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
								tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0.43,0.4,0.1) * CFA(0,math.rad(-16),math.rad(-12)),LerpStyle(0.5,Enum.EasingStyle.Back,Enum.EasingDirection.InOut))
								tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(-0.45,0.41,0.13)  * CFA(0,math.rad(19),math.rad(24)),LerpStyle(0.5,Enum.EasingStyle.Back,Enum.EasingDirection.InOut))
							end
						else
							if Mode == 6 then
								if Anim == "Idle" then
									neck.C1 = neck.C1:Lerp(nek * CF(0,1,-0.5) * CFA(math.rad(0),math.rad(0),math.rad(0)),LerpStyle(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut))
									RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root * CF(0,0,0) * CFA(math.rad(6.6123927935144+SusVISUALIZER),math.rad(0),math.rad(0)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
									tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(-1,0,-1) * CFA(math.rad(0),math.rad(0),math.rad(0)),LerpStyle(0.3*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
									tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(1,0,-1) * CFA(math.rad(0),math.rad(0),math.rad(0)),LerpStyle(0.3*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
									tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(-0.00052611529827118,0.0058164596557617,0.14987951517105) * CFA(math.rad(-2.2198240734154),math.rad(-0.19714184442755),math.rad(7.8304430532044+SusVISUALIZER)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
									tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(5.0812959671021e-06,0.0012486577033997,0.079992741346359) * CFA(math.rad(-1.9869835649399),math.rad(0.19068892982769),math.rad(-9.8769137238338-SusVISUALIZER)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
								else
									neck.C1 = neck.C1:Lerp(nek * CF(0,1,-0.5) * CFA(math.rad(0),math.rad(0),math.rad(0)),LerpStyle(1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut))
									RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root * CF(0,0,0) * CFA(math.rad(6.6123927935144),math.rad(0),math.rad(0)),LerpStyle(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
									tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(-1,0,-1) * CFA(math.rad(0),math.rad(0),math.rad(0)),LerpStyle(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
									tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(1,0,-1) * CFA(math.rad(0),math.rad(0),math.rad(0)),LerpStyle(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
									tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(math.sin(time()*40)*90)),LerpStyle(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
									tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(math.sin(time()*40)*90)),LerpStyle(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
								end
							end
						end
					end
				end

			end
		end
	end
end

--neck.C1 = neck.C1:Lerp(nek * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(0)),LerpStyle(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut))
--RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(0)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
--tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(0)),LerpStyle(0.3*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
--tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(0)),LerpStyle(0.3*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
--tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(0)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
--tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(0)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))

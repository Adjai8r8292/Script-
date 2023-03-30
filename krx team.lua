local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "KRX - TEAM", HidePremium = true, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Karakter",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Karakter"
})

Tab:AddButton({
	Name = "fly",
	Callback = function()
	loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
      		print("button pressed")
  	end    
})

Tab:AddButton({
	Name = "İnfiniteyield",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
      		print("button pressed")
  	end    
})

Tab:AddButton({
	Name = "Keyboard",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
      		print("button pressed")
  	end    
})

local mm2 = Window:MakeTab({
	Name = "mm2",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = mm2:AddSection({
	Name = "mm2 script"
})

mm2:AddButton({
	Name = "mm2 panel",
	Callback = function()
	loadstring(game:GetObjects("rbxassetid://4001118261")[1].Source)()
      		print("button pressed")
  	end    
})

mm2:AddButton({
	Name = "elipcse",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Ethanoj1/EclipseMM2/master/Script", true))()
      		print("button pressed")
  	end    
})

mm2:AddButton({
	Name = "mm2 esp",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Ihaveash0rtnamefordiscord/Releases/main/MurderMystery2HighlightESP"))(' Watermelon ?')
      		print("button pressed")
  	end    
})

mm2:AddButton({
	Name = "mm2 admin panel",
	Callback = function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/MarsQQ/ScriptHubScripts/master/MM2%20Admin%20Panel'),true))()
      		print("button pressed")
  	end    
})

Tab:AddButton({
	Name = "Shiftlock",
	Callback = function()
	-- Gui to Lua
-- Version: 3.2

-- Instances:

local ShiftlockStarterGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")

--Properties:

ShiftlockStarterGui.Name = "Shiftlock (StarterGui)"
ShiftlockStarterGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ShiftlockStarterGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ShiftlockStarterGui
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.Position = UDim2.new(0.921914339, 0, 0.552375436, 0)
ImageButton.Size = UDim2.new(0.0636147112, 0, 0.0661305636, 0)
ImageButton.SizeConstraint = Enum.SizeConstraint.RelativeXX
ImageButton.Image = "http://www.roblox.com/asset/?id=182223762"

-- Scripts:

local function TLQOYN_fake_script() -- ImageButton.ShiftGUI 
	local script = Instance.new('LocalScript', ImageButton)

	local MobileCameraFramework = {}
	local players = game:GetService("Players")
	local runservice = game:GetService("RunService")
	local CAS = game:GetService("ContextActionService")
	local player = players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local root = character:WaitForChild("HumanoidRootPart")
	local humanoid = character.Humanoid
	local camera = workspace.CurrentCamera
	local button = script.Parent
	
	--Visiblity
	uis = game:GetService("UserInputService")
	ismobile = uis.TouchEnabled
	button.Visible = ismobile
	
	local states = {
		OFF = "rbxasset://textures/ui/mouseLock_off@2x.png",
		ON = "rbxasset://textures/ui/mouseLock_on@2x.png"
	}
	local MAX_LENGTH = 900000
	local active = false
	local ENABLED_OFFSET = CFrame.new(1.7, 0, 0)
	local DISABLED_OFFSET = CFrame.new(-1.7, 0, 0)
	local function UpdateImage(STATE)
		button.Image = states[STATE]
	end
	local function UpdateAutoRotate(BOOL)
		humanoid.AutoRotate = BOOL
	end
	local function GetUpdatedCameraCFrame(ROOT, CAMERA)
		return CFrame.new(root.Position, Vector3.new(CAMERA.CFrame.LookVector.X * MAX_LENGTH, root.Position.Y, CAMERA.CFrame.LookVector.Z * MAX_LENGTH))
	end
	local function EnableShiftlock()
		UpdateAutoRotate(false)
		UpdateImage("ON")
		root.CFrame = GetUpdatedCameraCFrame(root, camera)
		camera.CFrame = camera.CFrame * ENABLED_OFFSET
	end
	local function DisableShiftlock()
		UpdateAutoRotate(true)
		UpdateImage("OFF")
		camera.CFrame = camera.CFrame * DISABLED_OFFSET
		pcall(function()
			active:Disconnect()
			active = nil
		end)
	end
	UpdateImage("OFF")
	active = false
	function ShiftLock()
		if not active then
			active = runservice.RenderStepped:Connect(function()
				EnableShiftlock()
			end)
		else
			DisableShiftlock()
		end
	end
	local ShiftLockButton = CAS:BindAction("ShiftLOCK", ShiftLock, false, "On")
	CAS:SetPosition("ShiftLOCK", UDim2.new(0.8, 0, 0.8, 0))
	button.MouseButton1Click:Connect(function()
		if not active then
			active = runservice.RenderStepped:Connect(function()
				EnableShiftlock()
			end)
		else
			DisableShiftlock()
		end
	end)
	return MobileCameraFramework
	
end
coroutine.wrap(TLQOYN_fake_script)()
local function OMQRQRC_fake_script() -- ShiftlockStarterGui.LocalScript 
	local script = Instance.new('LocalScript', ShiftlockStarterGui)

	local Players = game:GetService("Players")
	local UserInputService = game:GetService("UserInputService")
	local Settings = UserSettings()
	local GameSettings = Settings.GameSettings
	local ShiftLockController = {}
	while not Players.LocalPlayer do
		wait()
	end
	local LocalPlayer = Players.LocalPlayer
	local Mouse = LocalPlayer:GetMouse()
	local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
	local ScreenGui, ShiftLockIcon, InputCn
	local IsShiftLockMode = true
	local IsShiftLocked = true
	local IsActionBound = false
	local IsInFirstPerson = false
	ShiftLockController.OnShiftLockToggled = Instance.new("BindableEvent")
	local function isShiftLockMode()
		return LocalPlayer.DevEnableMouseLock and GameSettings.ControlMode == Enum.ControlMode.MouseLockSwitch and LocalPlayer.DevComputerMovementMode ~= Enum.DevComputerMovementMode.ClickToMove and GameSettings.ComputerMovementMode ~= Enum.ComputerMovementMode.ClickToMove and LocalPlayer.DevComputerMovementMode ~= Enum.DevComputerMovementMode.Scriptable
	end
	if not UserInputService.TouchEnabled then
		IsShiftLockMode = isShiftLockMode()
	end
	local function onShiftLockToggled()
		IsShiftLocked = not IsShiftLocked
		ShiftLockController.OnShiftLockToggled:Fire()
	end
	local initialize = function()
		print("enabled")
	end
	function ShiftLockController:IsShiftLocked()
		return IsShiftLockMode and IsShiftLocked
	end
	function ShiftLockController:SetIsInFirstPerson(isInFirstPerson)
		IsInFirstPerson = isInFirstPerson
	end
	local function mouseLockSwitchFunc(actionName, inputState, inputObject)
		if IsShiftLockMode then
			onShiftLockToggled()
		end
	end
	local function disableShiftLock()
		if ScreenGui then
			ScreenGui.Parent = nil
		end
		IsShiftLockMode = false
		Mouse.Icon = ""
		if InputCn then
			InputCn:disconnect()
			InputCn = nil
		end
		IsActionBound = false
		ShiftLockController.OnShiftLockToggled:Fire()
	end
	local onShiftInputBegan = function(inputObject, isProcessed)
		if isProcessed then
			return
		end
		if inputObject.UserInputType ~= Enum.UserInputType.Keyboard or inputObject.KeyCode == Enum.KeyCode.LeftShift or inputObject.KeyCode == Enum.KeyCode.RightShift then
		end
	end
	local function enableShiftLock()
		IsShiftLockMode = isShiftLockMode()
		if IsShiftLockMode then
			if ScreenGui then
				ScreenGui.Parent = PlayerGui
			end
			if IsShiftLocked then
				ShiftLockController.OnShiftLockToggled:Fire()
			end
			if not IsActionBound then
				InputCn = UserInputService.InputBegan:connect(onShiftInputBegan)
				IsActionBound = true
			end
		end
	end
	GameSettings.Changed:connect(function(property)
		if property == "ControlMode" then
			if GameSettings.ControlMode == Enum.ControlMode.MouseLockSwitch then
				enableShiftLock()
			else
				disableShiftLock()
			end
		elseif property == "ComputerMovementMode" then
			if GameSettings.ComputerMovementMode == Enum.ComputerMovementMode.ClickToMove then
				disableShiftLock()
			else
				enableShiftLock()
			end
		end
	end)
	LocalPlayer.Changed:connect(function(property)
		if property == "DevEnableMouseLock" then
			if LocalPlayer.DevEnableMouseLock then
				enableShiftLock()
			else
				disableShiftLock()
			end
		elseif property == "DevComputerMovementMode" then
			if LocalPlayer.DevComputerMovementMode == Enum.DevComputerMovementMode.ClickToMove or LocalPlayer.DevComputerMovementMode == Enum.DevComputerMovementMode.Scriptable then
				disableShiftLock()
			else
				enableShiftLock()
			end
		end
	end)
	LocalPlayer.CharacterAdded:connect(function(character)
		if not UserInputService.TouchEnabled then
			initialize()
		end
	end)
	if not UserInputService.TouchEnabled then
		initialize()
		if isShiftLockMode() then
			InputCn = UserInputService.InputBegan:connect(onShiftInputBegan)
			IsActionBound = true
		end
	end
	enableShiftLock()
	return ShiftLockController
	
end
coroutine.wrap(OMQRQRC_fake_script)()
      		print("button pressed")
  	end    
})

Tab:AddButton({
	Name = "fps boost",
	Callback = function()
	-- Made by RIP#6666
_G.Settings = {
    Players = {
        ["Ignore Me"] = true, -- Ignore your Character
        ["Ignore Others"] = true -- Ignore other Characters
    },
    Meshes = {
        Destroy = false, -- Destroy Meshes
        LowDetail = true -- Low detail meshes (NOT SURE IT DOES ANYTHING)
    },
    Images = {
        Invisible = true, -- Invisible Images
        LowDetail = false, -- Low detail images (NOT SURE IT DOES ANYTHING)
        Destroy = false, -- Destroy Images
    },
    Other = {
        ["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparkles
        ["No Camera Effects"] = true, -- Disables all PostEffect's (Camera/Lighting Effects)
        ["No Explosions"] = true, -- Makes Explosion's invisible
        ["No Clothes"] = true, -- Removes Clothing from the game
        ["Low Water Graphics"] = true, -- Removes Water Quality
        ["No Shadows"] = true, -- Remove Shadows
        ["Low Rendering"] = true, -- Lower Rendering
        ["Low Quality Parts"] = true -- Lower quality parts
    }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))()
      		print("button pressed")
  	end    
})

Tab:AddButton({
	Name = "korblox (ayagina takmayi unutma)",
	Callback = function()
	-- hats https://www.roblox.com/catalog?Category=1&CreatorName=DuckXander&CreatorType=Group&salesTypeFilter=1

-- script below
-- | Made by GROUD

function Align(Part0,Part1,Position,Angle)
    local AlignPos = Instance.new('AlignPosition', Part1);
    AlignPos.Parent.CanCollide = false;
    AlignPos.ApplyAtCenterOfMass = true;
    AlignPos.MaxForce = 67752;
    AlignPos.MaxVelocity = math.huge/9e110;
    AlignPos.ReactionForceEnabled = false;
    AlignPos.Responsiveness = 200;
    AlignPos.RigidityEnabled = false;
    local AlignOri = Instance.new('AlignOrientation', Part1);
    AlignOri.MaxAngularVelocity = math.huge/9e110;
    AlignOri.MaxTorque = 67752;
    AlignOri.PrimaryAxisOnly = false;
    AlignOri.ReactionTorqueEnabled = false;
    AlignOri.Responsiveness = 200;
    AlignOri.RigidityEnabled = false;
    local AttachmentA=Instance.new('Attachment',Part1);
    local AttachmentB=Instance.new('Attachment',Part0);
    AttachmentA.Name = "BruhA"
    AttachmentB.Name = "BruhB"
    AttachmentB.Orientation = Angle
    AttachmentB.Position = Position
    AlignPos.Attachment0 = AttachmentA;
    AlignPos.Attachment1 = AttachmentB;
    AlignOri.Attachment0 = AttachmentA;
    AlignOri.Attachment1 = AttachmentB;
end

User = game:GetService("Players").LocalPlayer
Body = User.Character
Soul = Body.Humanoid

FakeLeg = Body.RightUpperLeg:Clone()
FakeLeg.Transparency = 1
Body.RightUpperLeg:Destroy()
FakeLeg.Parent = Body
Body.RightUpperLeg.RightUpperLeg:Destroy()

local Korblox = Body["Recolor (For Korblox)"]
Korblox.Handle.Massless = true
Korblox.Handle:BreakJoints()

Align(FakeLeg,Korblox.Handle,Vector3.new(0,.25,0),Vector3.new(0,0,0))

game:GetService("RunService").Heartbeat:connect(function(t)
    if Korblox:FindFirstChild("Handle", true) then
        Korblox.Handle.Velocity = Vector3.new(0, 30,0)
    end;
end)
      		print("button pressed")
  	end    
})

Tab:AddButton({
	Name = "fps",
	Callback = function()
	local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local logo = Instance.new("TextLabel")
local skiddedlabel = Instance.new("TextLabel")
local credit = Instance.new("TextLabel")
local booster2 = Instance.new("TextButton")
local booster1 = Instance.new("TextButton")
local hide = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.432935894, 0, 0.0453987792, 0)
Frame.Size = UDim2.new(0, 676, 0, 455)
Frame.Active = true
Frame.Draggable = true

logo.Name = "logo"
logo.Parent = Frame
logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
logo.BorderColor3 = Color3.fromRGB(255, 255, 255)
logo.Size = UDim2.new(0, 200, 0, 50)
logo.Font = Enum.Font.SourceSans
logo.Text = "FPS+"
logo.TextColor3 = Color3.fromRGB(0, 0, 0)
logo.TextScaled = true
logo.TextSize = 14.000
logo.TextWrapped = true

skiddedlabel.Name = "skiddedlabel"
skiddedlabel.Parent = Frame
skiddedlabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
skiddedlabel.BorderColor3 = Color3.fromRGB(255, 255, 255)
skiddedlabel.Position = UDim2.new(0, 0, 0.890109897, 0)
skiddedlabel.Size = UDim2.new(0, 200, 0, 50)
skiddedlabel.Font = Enum.Font.SourceSans
skiddedlabel.Text = "Everythings Skidded"
skiddedlabel.TextColor3 = Color3.fromRGB(0, 0, 0)
skiddedlabel.TextScaled = true
skiddedlabel.TextSize = 14.000
skiddedlabel.TextWrapped = true

credit.Name = "credit"
credit.Parent = Frame
credit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
credit.BorderColor3 = Color3.fromRGB(255, 255, 255)
credit.Position = UDim2.new(0.703129292, 0, 0.890109897, 0)
credit.Size = UDim2.new(0, 200, 0, 50)
credit.Font = Enum.Font.SourceSans
credit.Text = "Made by TheMagicPiston"
credit.TextColor3 = Color3.fromRGB(0, 0, 0)
credit.TextScaled = true
credit.TextSize = 14.000
credit.TextWrapped = true

booster2.Name = "booster2"
booster2.Parent = Frame
booster2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
booster2.Position = UDim2.new(0.351169914, 0, 0.443956077, 0)
booster2.Size = UDim2.new(0, 200, 0, 50)
booster2.Font = Enum.Font.SourceSans
booster2.Text = "Booster 2"
booster2.TextColor3 = Color3.fromRGB(0, 0, 0)
booster2.TextSize = 14.000
booster2.MouseButton1Down:connect(function()
	local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
	local g = game
	local w = g.Workspace
	local l = g.Lighting
	local t = w.Terrain
	t.WaterWaveSize = 0
	t.WaterWaveSpeed = 0
	t.WaterReflectance = 0
	t.WaterTransparency = 0
	l.GlobalShadows = false
	l.FogEnd = 9e9
	l.Brightness = 0
	settings().Rendering.QualityLevel = "Level01"
	for i, v in pairs(g:GetDescendants()) do
		if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
			v.Material = "Plastic"
			v.Reflectance = 0
		elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
			v.Transparency = 1
		elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
			v.Lifetime = NumberRange.new(0)
		elseif v:IsA("Explosion") then
			v.BlastPressure = 1
			v.BlastRadius = 1
		elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
			v.Enabled = false
		elseif v:IsA("MeshPart") then
			v.Material = "Plastic"
			v.Reflectance = 0
			v.TextureID = 10385902758728957
		end
	end
	for i, e in pairs(l:GetChildren()) do
		if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
			e.Enabled = false
		end
	end
end)

booster1.Name = "booster1"
booster1.Parent = Frame
booster1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
booster1.Position = UDim2.new(0.351169914, 0, 0.303296715, 0)
booster1.Size = UDim2.new(0, 200, 0, 50)
booster1.Font = Enum.Font.SourceSans
booster1.Text = "Booster 1"
booster1.TextColor3 = Color3.fromRGB(0, 0, 0)
booster1.TextSize = 14.000
booster1.MouseButton1Down:connect(function()
	_G.Settings = {
		Players = {
			["Ignore Me"] = true, -- Ignore your Character
			["Ignore Others"] = true -- Ignore other Characters
		},
		Meshes = {
			Destroy = false, -- Destroy Meshes
			LowDetail = true -- Low detail meshes (NOT SURE IT DOES ANYTHING)
		},
		Images = {
			Invisible = true, -- Invisible Images
			LowDetail = false, -- Low detail images (NOT SURE IT DOES ANYTHING)
			Destroy = false, -- Destroy Images
		},
		["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparkles
		["No Camera Effects"] = true, -- Disables all PostEffect's (Camera/Lighting Effects)
		["No Explosions"] = true, -- Makes Explosion's invisible
		["No Clothes"] = true, -- Removes Clothing from the game
		["Low Water Graphics"] = true, -- Removes Water Quality
		["No Shadows"] = true, -- Remove Shadows
		["Low Rendering"] = true, -- Lower Rendering
		["Low Quality Parts"] = true -- Lower quality parts
	}
	local Players = game:GetService("Players")
	local BadInstances = {"DataModelMesh", "FaceInstance", "ParticleEmitter", "Trail", "Smoke", "Fire", "Sparkles", "PostEffect", "Explosion", "Clothing", "BasePart"}
	local CanBeEnabled = {"ParticleEmitter", "Trail", "Smoke", "Fire", "Sparkles", "PostEffect"}
	local function PartOfCharacter(Instance)
		for i, v in pairs(Players:GetPlayers()) do
			if v.Character and Instance:IsDescendantOf(v.Character) then
				return true
			end
		end
		return false
	end
	local function ReturnDescendants()
		local Descendants = {}
		WaitNumber = 5000
		if _G.Settings.Players["Ignore Others"] then
			for i, v in pairs(game:GetDescendants()) do
				if not v:IsDescendantOf(Players) and not PartOfCharacter(v) then
					for i2, v2 in pairs(BadInstances) do
						if v:IsA(v2) then
							table.insert(Descendants, v)
						end
					end
				end
				if i == WaitNumber then
					task.wait()
					WaitNumber = WaitNumber + 5000
				end
			end
		elseif _G.Settings.Players["Ignore Me"] then
			for i, v in pairs(game:GetDescendants()) do
				if not v:IsDescendantOf(Players) and not v:IsDescendantOf(ME.Character) then
					for i2, v2 in pairs(BadInstances) do
						if v:IsA(v2) then
							table.insert(Descendants, v)
						end
					end
				end
				if i == WaitNumber then
					task.wait()
					WaitNumber = WaitNumber + 5000
				end
			end
		end
		return Descendants
	end
	local function CheckIfBad(Instance)
		if not Instance:IsDescendantOf(Players) and not PartOfCharacter(Instance) then
			if Instance:IsA("DataModelMesh") then
				if _G.Settings.Meshes.LowDetail then
					sethiddenproperty(Instance, "LODX", Enum.LevelOfDetailSetting.Low)
					sethiddenproperty(Instance, "LODY", Enum.LevelOfDetailSetting.Low)
				elseif _G.Settings.Meshes.Destroy then
					Instance:Destroy()
				end
			elseif Instance:IsA("FaceInstance") then
				if _G.Settings.Images.Invisible then
					Instance.Transparency = 1
				elseif _G.Settings.Images.LowDetail then
					Instance.Shiny = 1
				elseif _G.Settings.Images.Destroy then
					Instance:Destroy()
				end
			elseif table.find(CanBeEnabled, Instance.ClassName) then
				if _G.Settings["No Particles"] or (_G.Settings.Other and _G.Settings.Other["No Particles"]) then
					Instance.Enabled = false
				end
			elseif Instance:IsA("Explosion") then
				if _G.Settings["No Explosions"] or (_G.Settings.Other and _G.Settings.Other["No Explosions"]) then
					Instance.Visible = false
				end
			elseif Instance:IsA("Clothing") then
				if _G.Settings["No Clothes"] or (_G.Settings.Other and _G.Settings.Other["No Clothes"]) then
					Instance:Destroy()
				end
			elseif Instance:IsA("BasePart") then
				if _G.Settings["Low Quality Parts"] or (_G.Settings.Other and _G.Settings.Other["Low Quality Parts"]) then
					Instance.Material = Enum.Material.Plastic
					Instance.Reflectance = 0
				end
			end
		end
	end
	if _G.Settings["Low Water Graphics"] or (_G.Settings.Other and _G.Settings.Other["Low Water Graphics"]) then
		workspace:FindFirstChildOfClass("Terrain").WaterWaveSize = 0
		workspace:FindFirstChildOfClass("Terrain").WaterWaveSpeed = 0
		workspace:FindFirstChildOfClass("Terrain").WaterReflectance = 0
		workspace:FindFirstChildOfClass("Terrain").WaterTransparency = 0
	end
	if _G.Settings["No Shadows"] or (_G.Settings.Other and _G.Settings.Other["No Shadows"]) then
		game:GetService("Lighting").GlobalShadows = false
		game:GetService("Lighting").FogEnd = 9e9
	end
	if _G.Settings["Low Rendering"] or (_G.Settings.Other and _G.Settings.Other["Low Rendering"]) then
		settings().Rendering.QualityLevel = 1
	end
end)

hide.Name = "hide"
hide.Parent = Frame
hide.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
hide.BorderColor3 = Color3.fromRGB(255, 255, 255)
hide.Position = UDim2.new(0.703129292, 0, 0, 0)
hide.Size = UDim2.new(0, 200, 0, 50)
hide.Font = Enum.Font.SourceSans
hide.Text = "To hide gui press p"
hide.TextColor3 = Color3.fromRGB(0, 0, 0)
hide.TextScaled = true
hide.TextSize = 14.000
hide.TextWrapped = true

-- Scripts:

local function EOOUOQ_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	player = game.Players.LocalPlayer
	
	player:GetMouse().KeyDown:Connect(function(key)
		if key == "p" and script.Parent.Visible == false then
			script.Parent.Visible = true
		else
			if key == "p" and script.Parent.Visible == true then
				script.Parent.Visible = false
			end
		end
	end)
end
coroutine.wrap(EOOUOQ_fake_script)()
      		print("button pressed")
  	end    
})

local oyunlar = Window:MakeTab({
	Name = "oyunlar",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = oyunlar:AddSection({
	Name = "Oyunlar"
})

oyunlar:AddButton({
	Name = "İce hub (Brookhaven)",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))() 
      		print("button pressed")
  	end    
})

Tab:AddButton({
	Name = "zombie yürüyüş",
	Callback = function()
	while true do
local Animate = game.Players.LocalPlayer.Character.Animate
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
game.Players.LocalPlayer.Character.Humanoid.Jump = false
wait(1)
end
      		print("button pressed")
  	end    
})

Tab:AddButton({
	Name = "Vampire yürüyüş",
	Callback = function()
	while true do
local Animate = game.Players.LocalPlayer.Character.Animate
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=10921320299"
game.Players.LocalPlayer.Character.Humanoid.Jump = false
wait(1)
end
      		print("button pressed")
  	end    
})
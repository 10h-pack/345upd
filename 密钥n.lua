local ScreenGui = Instance.new("ScreenGui")

local UI = Instance.new("Frame")

local Title = Instance.new("TextLabel")

local Frame = Instance.new("Frame")

local Key = Instance.new("TextBox")

local Start = Instance.new("TextButton")


ScreenGui.Parent = game.CoreGui

ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling


UI.Name = "6卡密系统"

UI.Parent = ScreenGui

UI.Active = true

UI.BackgroundColor3 = Color3.new(0, 0, 0)

UI.BackgroundTransparency = 0

UI.BorderSizePixel = 3

UI.Position = UDim2.new(0.5, -150, 0.5, -67)

UI.Size = UDim2.new(0, 260, 0, 250)

UI.Draggable = true


Title.Name = "Title"

Title.Parent = UI

Title.BackgroundColor3 = Color3.new(68, 68, 68)

Title.BackgroundTransparency = 1

Title.BorderSizePixel = 2

Title.Position = UDim2.new(0, 0, 0.02, 0)

Title.Size = UDim2.new(1, 0, 0, 50)

Title.Font = Enum.Font.SourceSans

Title.Text = "密钥系统"

Title.TextColor3 = Color3.new(0, 0, 255)

Title.TextScaled = true

Title.TextSize = 14

Title.TextWrapped = true


Frame.Parent = Title

Frame.BackgroundColor3 = Color3.new(0, 0, 255)

Frame.BorderSizePixel = 0

Frame.Position = UDim2.new(0.07, 0, 0.9, 0)

Frame.Size = UDim2.new(0.85, 0, 0, 6)


Key.Name = "Key"

Key.Parent = UI

Key.BackgroundColor3 = Color3.new(1, 1, 1)

Key.BorderSizePixel = 0

Key.Position = UDim2.new(0.1, 0, 0.31, 0)

Key.Size = UDim2.new(0.8, 0, 0, 50)

Key.Font = Enum.Font.SourceSans

Key.PlaceholderText = "输入钥密"

Key.Text = ""

Key.TextColor3 = Color3.new(0, 0, 0)

Key.TextScaled = true

Key.TextSize = 14

Key.TextWrapped = true


Start.Name = "Start"

Start.Parent = UI

Start.BackgroundColor3 = Color3.new(0, 0, 255)

Start.BackgroundTransparency = 0

Start.BorderSizePixel = 2

Start.Position = UDim2.new(0.25, 0, 0.65, 0)

Start.Size = UDim2.new(0.5, 0, 0, 45)

Start.Font = Enum.Font.Gotham

Start.Text = "检查卡密"

Start.TextColor3 = Color3.new(0, 0, 0)

Start.TextScaled = true

Start.TextSize = 10

Start.TextWrapped = true


Start.MouseButton1Click:Connect(function()

if Key.Text == "USNDYS645" then

ScreenGui:Destroy()


local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/VeaMSRZK"))()
local Window = OrionLib:MakeWindow({Name = "6", HidePremium = false, SaveConfig = true,IntroText = "loading", ConfigFolder = "4646646"})
local about = Window:MakeTab({
    Name = "6脚本",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
about:AddParagraph("小白&柳絮联合制作")	
about:AddParagraph("您的用户名:"," "..game.Players.LocalPlayer.Name.."")
about:AddParagraph("您的注入器:"," "..identifyexecutor().."")
about:AddParagraph("脚本为免费脚本，请勿拿去圈钱，圈钱的人我操你妈——小白")
about:AddParagraph("此脚本是缝合脚本，永久更新，部分脚本为自做")
about:AddParagraph("圈钱的人腻湿不湿愁奈拢,大庞茂,窝熙望腻遍乘哒旁冒——柳絮")			
local Tab = Window:MakeTab({
    Name = "blair",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/MythHubOfficial/Blair/refs/heads/main/MYTHONTOP'))()
end
})   
Tab:AddButton({
	Name = "2汉化",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/wdwahDWGU/DWAHUBUHD/refs/heads/main/MSDUIWQQWD"))()
		end
})
local Tab = Window:MakeTab({
    Name = "通用",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
			Tab:AddButton({
	Name = "自瞄",
	Callback = function()
local fov = 100 local smoothness = 10 local crosshairDistance = 5 local RunService = game:GetService("RunService") local UserInputService = game:GetService("UserInputService") local Players = game:GetService("Players") local Cam = game.Workspace.CurrentCamera local FOVring = Drawing.new("Circle") FOVring.Visible = true FOVring.Thickness = 2 FOVring.Color = Color3.fromRGB(0, 255, 0) FOVring.Filled = false FOVring.Radius = fov FOVring.Position = Cam.ViewportSize / 2 local Player = Players.LocalPlayer local PlayerGui = Player:WaitForChild("PlayerGui") local ScreenGui = Instance.new("ScreenGui") ScreenGui.Name = "FovAdjustGui" ScreenGui.Parent = PlayerGui local Frame = Instance.new("Frame") Frame.Name = "MainFrame" Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30) Frame.BorderColor3 = Color3.fromRGB(128, 0, 128) Frame.BorderSizePixel = 2 Frame.Position = UDim2.new(0.3, 0, 0.3, 0) Frame.Size = UDim2.new(0.4, 0, 0.4, 0) Frame.Active = true Frame.Draggable = true Frame.Parent = ScreenGui local MinimizeButton = Instance.new("TextButton") MinimizeButton.Name = "MinimizeButton" MinimizeButton.Text = "-" MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255) MinimizeButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50) MinimizeButton.Position = UDim2.new(0.9, 0, 0, 0) MinimizeButton.Size = UDim2.new(0.1, 0, 0.1, 0) MinimizeButton.Parent = Frame local isMinimized = false MinimizeButton.MouseButton1Click:Connect(function() isMinimized = not isMinimized if isMinimized then Frame:TweenSize(UDim2.new(0.1, 0, 0.1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true) MinimizeButton.Text = "+" else Frame:TweenSize(UDim2.new(0.4, 0, 0.4, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true) MinimizeButton.Text = "-" end end) local FovLabel = Instance.new("TextLabel") FovLabel.Name = "FovLabel" FovLabel.Text = "自瞄范围" FovLabel.TextColor3 = Color3.fromRGB(255, 255, 255) FovLabel.BackgroundTransparency = 1 FovLabel.Position = UDim2.new(0.1, 0, 0.1, 0) FovLabel.Size = UDim2.new(0.8, 0, 0.2, 0) FovLabel.Parent = Frame local FovSlider = Instance.new("TextBox") FovSlider.Name = "FovSlider" FovSlider.Text = tostring(fov) FovSlider.TextColor3 = Color3.fromRGB(255, 255, 255) FovSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) FovSlider.Position = UDim2.new(0.1, 0, 0.3, 0) FovSlider.Size = UDim2.new(0.8, 0, 0.2, 0) FovSlider.Parent = Frame local SmoothnessLabel = Instance.new("TextLabel") SmoothnessLabel.Name = "SmoothnessLabel" SmoothnessLabel.Text = "自瞄平滑度" SmoothnessLabel.TextColor3 = Color3.fromRGB(255, 255, 255) SmoothnessLabel.BackgroundTransparency = 1 SmoothnessLabel.Position = UDim2.new(0.1, 0, 0.5, 0) SmoothnessLabel.Size = UDim2.new(0.8, 0, 0.2, 0) SmoothnessLabel.Parent = Frame local SmoothnessSlider = Instance.new("TextBox") SmoothnessSlider.Name = "SmoothnessSlider" SmoothnessSlider.Text = tostring(smoothness) SmoothnessSlider.TextColor3 = Color3.fromRGB(255, 255, 255) SmoothnessSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) SmoothnessSlider.Position = UDim2.new(0.1, 0, 0.7, 0) SmoothnessSlider.Size = UDim2.new(0.8, 0, 0.2, 0) SmoothnessSlider.Parent = Frame local CrosshairDistanceLabel = Instance.new("TextLabel") CrosshairDistanceLabel.Name = "CrosshairDistanceLabel" CrosshairDistanceLabel.Text = "自瞄预判距离" CrosshairDistanceLabel.TextColor3 = Color3.fromRGB(255, 255, 255) CrosshairDistanceLabel.BackgroundTransparency = 1 CrosshairDistanceLabel.Position = UDim2.new(0.1, 0, 0.9, 0) CrosshairDistanceLabel.Size = UDim2.new(0.8, 0, 0.2, 0) CrosshairDistanceLabel.Parent = Frame local CrosshairDistanceSlider = Instance.new("TextBox") CrosshairDistanceSlider.Name = "CrosshairDistanceSlider" CrosshairDistanceSlider.Text = tostring(crosshairDistance) CrosshairDistanceSlider.TextColor3 = Color3.fromRGB(255, 255, 255) CrosshairDistanceSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) CrosshairDistanceSlider.Position = UDim2.new(0.1, 0, 1.1, 0) CrosshairDistanceSlider.Size = UDim2.new(0.8, 0, 0.2, 0) CrosshairDistanceSlider.Parent = Frame local targetCFrame = Cam.CFrame local function updateDrawings() local camViewportSize = Cam.ViewportSize FOVring.Position = camViewportSize / 2 FOVring.Radius = fov end local function onKeyDown(input) if input.KeyCode == Enum.KeyCode.Delete then RunService:UnbindFromRenderStep("FOVUpdate") FOVring:Remove() end end UserInputService.InputBegan:Connect(onKeyDown) local function getClosestPlayerInFOV(trg_part) local nearest = nil local last = math.huge local playerMousePos = Cam.ViewportSize / 2 for _, player in ipairs(Players:GetPlayers()) do if player ~= Players.LocalPlayer then local part = player.Character and player.Character:FindFirstChild(trg_part) if part then local ePos, isVisible = Cam:WorldToViewportPoint(part.Position) local distance = (Vector2.new(ePos.x, ePos.y) - playerMousePos).Magnitude if distance < last and isVisible and distance < fov then last = distance nearest = player end end end end return nearest end RunService.RenderStepped:Connect(function() updateDrawings() local closest = getClosestPlayerInFOV("Head") if closest and closest.Character:FindFirstChild("Head") then local targetCharacter = closest.Character local targetHead = targetCharacter.Head local targetRootPart = targetCharacter:FindFirstChild("HumanoidRootPart") local isMoving = targetRootPart.Velocity.Magnitude > 0.1 local targetPosition if isMoving then targetPosition = targetHead.Position + (targetHead.CFrame.LookVector * crosshairDistance) else targetPosition = targetHead.Position end targetCFrame = CFrame.new(Cam.CFrame.Position, targetPosition) else targetCFrame = Cam.CFrame end Cam.CFrame = Cam.CFrame:Lerp(targetCFrame, 1 / smoothness) end) FovSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then local newFov = tonumber(FovSlider.Text) if newFov then fov = newFov else FovSlider.Text = tostring(fov) end end end) SmoothnessSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then local newSmoothness = tonumber(SmoothnessSlider.Text) if newSmoothness then smoothness = newSmoothness else SmoothnessSlider.Text = tostring(smoothness) end end end) CrosshairDistanceSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then local newCrosshairDistance = tonumber(CrosshairDistanceSlider.Text) if newCrosshairDistance then crosshairDistance = newCrosshairDistance else CrosshairDistanceSlider.Text = tostring(crosshairDistance) end end end)			
	end
})
				Name = "透视",
	Callback = function()
	local Players = game:GetService("Players"):GetChildren()
local RunService = game:GetService("RunService")
local highlight = Instance.new("Highlight")
highlight.Name = "Highlight"

for i, v in pairs(Players) do
    repeat wait() until v.Character
    if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
        local highlightClone = highlight:Clone()
        highlightClone.Adornee = v.Character
        highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
        highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        highlightClone.Name = "Highlight"
    end
end

game.Players.PlayerAdded:Connect(function(player)
    repeat wait() until player.Character
    if not player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
        local highlightClone = highlight:Clone()
        highlightClone.Adornee = player.Character
        highlightClone.Parent = player.Character:FindFirstChild("HumanoidRootPart")
        highlightClone.Name = "Highlight"
    end
end)

game.Players.PlayerRemoving:Connect(function(playerRemoved)
    playerRemoved.Character:FindFirstChild("HumanoidRootPart").Highlight:Destroy()
end)

RunService.Heartbeat:Connect(function()
    for i, v in pairs(Players) do
        repeat wait() until v.Character
        if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
            local highlightClone = highlight:Clone()
            highlightClone.Adornee = v.Character
            highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
            highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlightClone.Name = "Highlight"
            task.wait()
        end
end
end)
	end 
})

Tab:AddButton({
	Name = "复制当前坐标",
	Callback = function()
setclipboard(tostring(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame))			
	end
})			
Tab:AddButton({
	Name = "获取免费罗宝",
	Callback = function()
local plr = game.Players.LocalPlayer
local char = plr.Character
local hum = char:FindFirstChildOfClass("Humanoid")
local t = tick()
local action = ""
local torsorot = 0
if hum:FindFirstChild("Animator") then
hum.Animator:Destroy()
end

hum.WalkSpeed = 0


local song = Instance.new("Sound", char)
song.SoundId = "rbxassetid://1883633498"
song.Volume = 1
song.TimePosition = 3
song:Play()
function createJoint(wp0, wp1, wc0x, wc0y, wc0z, wc1x, wc1y, wc1z, name)
	local joint = Instance.new("Motor6D", wp0)
	joint.Part0 = wp0
	joint.Part1 = wp1
	joint.C0 = CFrame.new(wc0x, wc0y, wc0z)
        joint.C1 = CFrame.new(wc1x, wc1y, wc1z)
        joint.Name = name
	return joint
end

local RS = createJoint(char.Torso, char["Right Arm"], 1.5, 0.5, 0, 0, 0.5, 0, "Right Shoulder")
local TS = createJoint(char.HumanoidRootPart, char.Torso, 0, 0, 0, 0, 0, 0, "RootJoint")
local LS = createJoint(char.Torso, char["Left Arm"], -1.5, 0.5, 0, 0, 0.5, 0, "Left Shoulder")
local RH = createJoint(char.Torso, char["Right Leg"], 0.5, -1, 0, 0, 1, 0, "Right Hip")
local LH = createJoint(char.Torso, char["Left Leg"], -0.5, -1, 0, 0, 1, 0, "Left Hip")
local NK = createJoint(char.Torso, char.Head, 0, 1, 0, 0, -1/2, 0, "Neck")

local rsc0 = RS.C0
local lsc0 = LS.C0
local tsc0 = TS.C0
local rhc0 = RH.C0
local lhc0 = LH.C0
local nkc0 = NK.C0

local gun = Instance.new("Part", char)
gun.Size = Vector3.new(1, 1, 1)
gun.Anchored = false
gun.CFrame = CFrame.new(0, 10, 0)
gun.BrickColor = BrickColor.new("Black")
gun:BreakJoints()
local gunMesh = Instance.new("SpecialMesh", gun)
gunMesh.MeshId = "rbxassetid://430697201"
gunMesh.Scale = Vector3.new(1, 1, 1)

local gunWeld = Instance.new("Weld", gun)
gunWeld.Part0 = char["Right Arm"]
gunWeld.Part1 = gun
gunWeld.C0 = CFrame.new(0, -1.2, -0.3) * CFrame.Angles(0, 0, math.rad(90))
* CFrame.Angles(math.rad(-90), 0, 0)
* CFrame.Angles(0, math.rad(180), 0)


TS.C0 = CFrame.new(0, 10000, 0)
game:GetService("RunService").RenderStepped:connect(function()
t = t + 0.5
if action == "IGotAGun" then
local speed = 0.3
torsorot = torsorot + 45
NK.C0 = NK.C0:lerp(nkc0, speed)
TS.C0 = TS.C0:lerp(tsc0 * CFrame.Angles(math.rad(torsorot), 0, 0)
* CFrame.new(0, -math.cos(t/5)/10/2, 0), speed)
RS.C0 = RS.C0:lerp(rsc0 * CFrame.new(0, math.sin(t/5)/10/2, 0) 
* CFrame.Angles(math.rad(90), 0, 0), speed)
LS.C0 = LS.C0:lerp(lsc0 *  CFrame.new(0, math.sin(t/5)/10/2, 0) 
* CFrame.Angles(math.rad(-5), 0, math.rad(5)), speed)
RH.C0 = RH.C0:lerp(rhc0 * CFrame.new(0, math.cos(t/5)/10/2, 0), speed)
LH.C0 = LH.C0:lerp(lhc0 * CFrame.new(0, math.cos(t/5)/10/2, 0), speed)
elseif action == "IGotAGun2" then
local speed = 0.3

NK.C0 = NK.C0:lerp(nkc0, speed)
TS.C0 = TS.C0:lerp(tsc0 * CFrame.Angles(0, 0, 0)
* CFrame.new(0, -math.cos(t/5)/10/2, 0), speed)
RS.C0 = RS.C0:lerp(rsc0 * CFrame.new(0, math.sin(t/5)/10/2, 0) 
* CFrame.Angles(math.rad(90), 0, 0), speed)
LS.C0 = LS.C0:lerp(lsc0 *  CFrame.new(0, math.sin(t/5)/10/2, 0) 
* CFrame.Angles(math.rad(-5), 0, math.rad(5)), speed)
RH.C0 = RH.C0:lerp(rhc0 * CFrame.new(0, math.cos(t/5)/10/2, 0), speed)
LH.C0 = LH.C0:lerp(lhc0 * CFrame.new(0, math.cos(t/5)/10/2, 0), speed)
elseif action == "CoufCouf" then
local speed = 1
NK.C0 = NK.C0:lerp(nkc0 * CFrame.Angles(math.rad(math.random(-360, 360)), 
math.rad(math.random(-360, 360)), 
math.rad(math.random(-360, 360))), speed)
TS.C0 = TS.C0:lerp(tsc0 * CFrame.new(0, -math.cos(t/5)/10/2, 0), speed)
RS.C0 = RS.C0:lerp(rsc0 * CFrame.Angles(math.rad(math.random(-360, 360)), 
math.rad(math.random(-360, 360)), 
math.rad(math.random(-360, 360))), speed)
LS.C0 = LS.C0:lerp(lsc0 * CFrame.Angles(math.rad(math.random(-360, 360)), 
math.rad(math.random(-360, 360)), 
math.rad(math.random(-360, 360))), speed)
RH.C0 = RH.C0:lerp(rhc0 * CFrame.Angles(math.rad(math.random(-360, 360)), 
math.rad(math.random(-360, 360)), 
math.rad(math.random(-360, 360))), speed)
LH.C0 = LH.C0:lerp(lhc0 * CFrame.Angles(math.rad(math.random(-360, 360)), 
math.rad(math.random(-360, 360)), 
math.rad(math.random(-360, 360))), speed)
elseif action == "Sleep" then
local speed = 1 
NK.C0 = NK.C0:lerp(nkc0 * CFrame.Angles(0, math.rad(10), 0), speed)
TS.C0 = TS.C0:lerp(tsc0 * CFrame.new(0, -0.5, 1) 
* CFrame.Angles(math.rad(90), 0, 0), speed)
RS.C0 = RS.C0:lerp(rsc0 * CFrame.Angles(0, 0, math.rad(60)), speed)
LS.C0 = LS.C0:lerp(lsc0 * CFrame.Angles(0, 0, math.rad(-45)), speed)
RH.C0 = RH.C0:lerp(rhc0 * CFrame.Angles(0, 0, math.rad(20)), speed)
LH.C0 = LH.C0:lerp(lhc0 * CFrame.Angles(0, 0, math.rad(-40)), speed)
elseif action == "WakeUp" then
local speed = 0.3
NK.C0 = NK.C0:lerp(nkc0 * CFrame.Angles(math.rad(-10), 0, 0), speed)
TS.C0 = TS.C0:lerp(tsc0 * CFrame.new(0, 0, 0.5), speed)
RS.C0 = RS.C0:lerp(rsc0 * CFrame.Angles(0, 0, math.rad(-20)), speed)
LS.C0 = LS.C0:lerp(lsc0 * CFrame.Angles(0, 0, math.rad(20)), speed)
RH.C0 = RH.C0:lerp(rhc0 * CFrame.Angles(math.rad(90), 0, math.rad(20)), speed)
LH.C0 = LH.C0:lerp(lhc0 * CFrame.Angles(math.rad(90), 0, math.rad(-20)), speed)
elseif action == "Whehw" then
local speed = 1
NK.C0 = NK.C0:lerp(nkc0 * CFrame.Angles(math.random(-360, 360),math.random(-360, 360), math.random(-360, 360)), speed)
TS.C0 = TS.C0:lerp(tsc0 * CFrame.new(0, 0, 0.5), speed)
RS.C0 = RS.C0:lerp(rsc0 * CFrame.Angles(math.random(-360, 360),math.random(-360, 360), math.random(-360, 360)), speed)
LS.C0 = LS.C0:lerp(lsc0 * CFrame.Angles(math.random(-360, 360),math.random(-360, 360), math.random(-360, 360)), speed)
RH.C0 = RH.C0:lerp(rhc0 * CFrame.Angles(math.rad(90), 0, math.rad(20)), speed)
LH.C0 = LH.C0:lerp(lhc0 * CFrame.Angles(math.rad(90), 0, math.rad(-20)), speed)
elseif action == "Julioliolio" then
local speed = 1
NK.C0 = NK.C0:lerp(nkc0 * CFrame.Angles(math.random(-360, 360),math.random(-360, 360), math.random(-360, 360)), speed)
TS.C0 = TS.C0:lerp(tsc0 * CFrame.Angles(math.random(-360, 360),math.random(-360, 360), math.random(-360, 360)), speed)
RS.C0 = RS.C0:lerp(rsc0 * CFrame.Angles(math.random(-360, 360),math.random(-360, 360), math.random(-360, 360)), speed)
LS.C0 = LS.C0:lerp(lsc0 * CFrame.Angles(math.random(-360, 360),math.random(-360, 360), math.random(-360, 360)), speed)
RH.C0 = RH.C0:lerp(rhc0 * CFrame.Angles(math.random(-360, 360),math.random(-360, 360), math.random(-360, 360)), speed)
LH.C0 = LH.C0:lerp(lhc0 * CFrame.Angles(math.random(-360, 360),math.random(-360, 360), math.random(-360, 360)), speed)
elseif action == "ICan" then
local speed = 1
NK.C0 = NK.C0:lerp(nkc0 * CFrame.Angles(0, math.rad(20), 0), speed)
TS.C0 = TS.C0:lerp(tsc0 * CFrame.Angles(0, math.rad(-20), 0)
* CFrame.new(0, -math.cos(t/5)/10/2, 0), speed)
RS.C0 = RS.C0:lerp(rsc0 * CFrame.new(0, math.sin(t/5)/10/2, 0) 
* CFrame.Angles(math.rad(-5), 0, 0), speed)
LS.C0 = LS.C0:lerp(lsc0 *  CFrame.new(0, math.sin(t/5)/10/2, 0) 
* CFrame.Angles(math.rad(90), 0, math.rad(-5)), speed)
RH.C0 = RH.C0:lerp(rhc0 * CFrame.new(0, math.cos(t/5)/10/2, 0), speed)
LH.C0 = LH.C0:lerp(lhc0 * CFrame.new(0, math.cos(t/5)/10/2, 0), speed)
elseif action == "ICan2" then
local speed = 0.4
NK.C0 = NK.C0:lerp(nkc0 * CFrame.Angles(0, math.rad(20), 0), speed)
TS.C0 = TS.C0:lerp(tsc0 * CFrame.Angles(0, math.rad(-20), 0)
* CFrame.new(0, -math.cos(t/5)/10/2, 0), speed)
RS.C0 = RS.C0:lerp(rsc0 * CFrame.new(0, math.sin(t/5)/10/2, 0) 
* CFrame.Angles(math.rad(-5), 0, 0), speed)
LS.C0 = LS.C0:lerp(lsc0 *  CFrame.new(0, math.sin(t/5)/10/2, 0) 
* CFrame.Angles(math.rad(90), 0, math.rad(-5)), speed)
RH.C0 = RH.C0:lerp(rhc0 * CFrame.new(0, math.cos(t/5)/10/2, 0), speed)
LH.C0 = LH.C0:lerp(lhc0 * CFrame.new(0, math.cos(t/5)/10/2, 0), speed)
elseif action == "ICant" then
local speed = 0.4
NK.C0 = NK.C0:lerp(nkc0 * CFrame.Angles(0, math.rad(20), 0), speed)
TS.C0 = TS.C0:lerp(tsc0 * CFrame.Angles(0, math.rad(-20), 0)
* CFrame.new(0, -math.cos(t/5)/10/2, 0), speed)
RS.C0 = RS.C0:lerp(rsc0 * CFrame.new(0, math.sin(t/5)/10/2, 0) 
* CFrame.Angles(math.rad(-5), 0, 0), speed)
LS.C0 = LS.C0:lerp(lsc0 *  CFrame.new(0, math.sin(t/5)/10/2, 0) 
* CFrame.Angles(math.rad(90), 0, math.rad(-70)), speed)
RH.C0 = RH.C0:lerp(rhc0 * CFrame.new(0, math.cos(t/5)/10/2, 0), speed)
LH.C0 = LH.C0:lerp(lhc0 * CFrame.new(0, math.cos(t/5)/10/2, 0), speed)
elseif action == "BabyJeans" then
NK.C0 = nkc0
TS.C0 = tsc0 * CFrame.new(0, 8, 0)
LS.C0 = lsc0
RS.C0 = rsc0
LH.C0 = lhc0
RH.C0 = rhc0
elseif action == "YouAndYour" then
local speed = 1
NK.C0 = NK.C0:lerp(nkc0 * CFrame.Angles(0, -math.rad(20), 0), speed)
TS.C0 = TS.C0:lerp(tsc0 * CFrame.Angles(0, math.rad(20), 0)
* CFrame.new(0, -math.cos(t/5)/10/2, 0), speed)
RS.C0 = RS.C0:lerp(rsc0 * CFrame.new(0, math.sin(t/5)/10/2, 0) 
* CFrame.Angles(math.rad(90), 0, math.rad(20)), speed)
LS.C0 = LS.C0:lerp(lsc0 *  CFrame.new(0, math.sin(t/5)/10/2, 0), speed)
RH.C0 = RH.C0:lerp(rhc0 * CFrame.new(0, math.cos(t/5)/10/2, 0), speed)
LH.C0 = LH.C0:lerp(lhc0 * CFrame.new(0, math.cos(t/5)/10/2, 0), speed)
elseif action == "Painis" then
local speed = 0.4
NK.C0 = NK.C0:lerp(nkc0 * CFrame.Angles(math.rad(-20), 0, 0), speed)
TS.C0 = TS.C0:lerp(tsc0 * CFrame.Angles(0, 0, 0)
* CFrame.new(0, -math.cos(t/5)/10/2, 0), speed)
RS.C0 = RS.C0:lerp(rsc0 * CFrame.new(-0.5, -0.1, 0)
 * CFrame.Angles(math.rad(10), 0, math.rad(-45)), speed)
LS.C0 = LS.C0:lerp(lsc0 * CFrame.new(0.5, -0.1, 0)
* CFrame.Angles(math.rad(10), 0, math.rad(45)), speed)
RH.C0 = RH.C0:lerp(rhc0 * CFrame.new(0, math.cos(t/5)/10/2, 0), speed)
LH.C0 = LH.C0:lerp(lhc0 * CFrame.new(0, math.cos(t/5)/10/2, 0), speed)
elseif action == "Impoopments" then
local speed = 1
NK.C0 = NK.C0:lerp(nkc0, speed)
TS.C0 = TS.C0:lerp(tsc0, speed)
RS.C0 = RS.C0:lerp(rsc0 * CFrame.Angles(math.rad(math.random(-360, 360)), 
math.rad(math.random(-360, 360)), 
math.rad(math.random(-360, 360))), speed)
LS.C0 = LS.C0:lerp(lsc0 * CFrame.Angles(math.rad(math.random(-360, 360)), 
math.rad(math.random(-360, 360)), 
math.rad(math.random(-360, 360))), speed)
RH.C0 = RH.C0:lerp(rhc0, speed)
LH.C0 = LH.C0:lerp(lhc0, speed)
elseif action == "Normal" then
local speed = 1
NK.C0 = nkc0
TS.C0 = tsc0
LS.C0 = lsc0
RS.C0 = rsc0
LH.C0 = lhc0
RH.C0 = rhc0
elseif action == "Jooj" then
NK.C0 = nkc0 * CFrame.new(math.random(-10, 10)/10, math.random(-10, 10)/10, math.random(-10, 10)/10)
TS.C0 = tsc0 * CFrame.new(math.random(-10, 10)/10, math.random(-10, 10)/10, math.random(-10, 10)/10)
LS.C0 = lsc0 * CFrame.new(math.random(-10, 10)/10, math.random(-10, 10)/10, math.random(-10, 10)/10)
LH.C0 = lhc0 * CFrame.new(math.random(-10, 10)/10, math.random(-10, 10)/10, math.random(-10, 10)/10)
RS.C0 = rsc0 * CFrame.new(math.random(-10, 10)/10, math.random(-10, 10)/10, math.random(-10, 10)/10)
RH.C0 = rhc0 * CFrame.new(math.random(-10, 10)/10, math.random(-10, 10)/10, math.random(-10, 10)/10)
elseif action == "Upsidedown" then
local speed = 1
NK.C0 = nkc0
TS.C0 = tsc0 * CFrame.Angles(0, 0, math.rad(180))
LS.C0 = lsc0
RS.C0 = rsc0
LH.C0 = lhc0
RH.C0 = rhc0
elseif action == "CAAC" then
local speed = 0.1
NK.C0 = nkc0
TS.C0 = TS.C0:lerp(tsc0 * CFrame.new(0, 4, 0), speed)
LS.C0 = lsc0
RS.C0 = rsc0
LH.C0 = lhc0
RH.C0 = rhc0
end
end)


action = "IGotAGun"
wait(0.5)
action = "IGotAGun2"
wait(2.9)
action = "CoufCouf"
local part = Instance.new("Part", char)
part.Anchored = true
part.Material = "Neon"
part.BrickColor = BrickColor.new("New Yeller")
part.CanCollide = false
part.Size = Vector3.new(0.1, 0.1, 10000)
for i = 1, 16 do


part.CFrame = CFrame.new(char.HumanoidRootPart.Position, Vector3.new(math.random(-100, 100), math.random(-100, 100),math.random(-100, 100))) 
wait(0.5/16)

end
part:Destroy()
gun:Destroy()
local bed = Instance.new("Part", char)
bed.Anchored = false
bed.CanCollide = false
bed.Size = Vector3.new(4, 8, 2)
bed:BreakJoints()
local bedmesh = Instance.new("SpecialMesh", bed)
bedmesh.Scale = Vector3.new(0.4, 0.5, 0.4)
bedmesh.MeshId = "rbxassetid://473508427"
bedmesh.TextureId = "rbxassetid://473508936"
local bedweld = Instance.new("Weld", bed)
bedweld.Part0 = char.HumanoidRootPart
bedweld.Part1 = bed
bedweld.C0 = CFrame.new(0, -1.35, 1) * CFrame.Angles(0, math.rad(-180), 0)
* CFrame.Angles(math.rad(-90), 0, 0)
action = "Sleep"
wait(0.25)
action = "WakeUp"
wait(0.5)
action = "Whehw"
wait(0.7)
action = "Julioliolio"
for i = 1, 16 do
bedweld.C0 = CFrame.new(0, -1.35, 1) * CFrame.Angles(0, math.rad(-180), 0)
* CFrame.Angles(math.rad(-90) + math.random(-360, 360), math.random(-360, 360), math.random(-360, 360))
wait(1/16)
end
bed:Destroy()
action = "ICan"
wait(0.2)
action = "ICant"
wait(0.25)
action = "ICan2"
wait(0.2)
action = "ICant"
wait(0.35)
action = "BabyJeans"
local baby = Instance.new("Part", char)
baby.Size = Vector3.new(2, 2, 1)
baby.Anchored = false
baby.CanCollide = false
baby:BreakJoints()

local baby2 = Instance.new("SpecialMesh", baby)
baby2.MeshId = "rbxassetid://430300723"
baby2.Scale = Vector3.new(5, 5, 5)
baby2.TextureId = "rbxassetid://430300725"

local babyweld = Instance.new("Weld", baby)
babyweld.Part0 = char.Torso
babyweld.Part1 = baby
babyweld.C0 = CFrame.new(0, -1, 0) 
* CFrame.Angles(0, math.rad(180), 0)
wait(0.5)
baby2.TextureId = "rbxassetid://140688857"
wait(1.1)
baby:Destroy()
action = "YouAndYour"
wait(0.5)
action = "Painis"
wait(0.4)
action = "Impoopments"
wait(1)

local pp = Instance.new("Part", char)
pp.Size = Vector3.new(1, 1, 1)
pp.Anchored = true
pp.CanCollide = false
pp.BrickColor = char.Torso.BrickColor
pp:BreakJoints()
pp.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, -1, 0)

for i = 1, 20 do
pp.Size = pp.Size + Vector3.new(0, 0, 2)
pp.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, -1, -i)
wait(0.5/20)
end
pp:Destroy()
action = "Jooj"
wait(1.7)
action = "Normal"
wait(0.5)
action = "Upsidedown"
wait(0.5)
action = "Normal"
TS.C0 = tsc0 * CFrame.new(0, 10, 0)
local caac = Instance.new("Part", char)
caac.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, -1, 0)
caac.Anchored = true
caac.CanCollide = true
caac.Size = Vector3.new(8, 4, 1)
caac:BreakJoints()
local caactext = Instance.new("SurfaceGui", caac)
caactext.Adornee = caac
local caactext2 = Instance.new("TextLabel", caactext)
caactext2.Size = UDim2.new(1, 0, 1, 0)
caactext2.TextScaled = true
caactext2.Text = "CAAC"
caactext2.Font = "Legacy"
action = "CAAC"
wait(1.7)
coroutine.resume(coroutine.create(function()
for i = 1, 100 do
if char.Head ~= nil then
char.Head.Mesh.Scale = char.Head.Mesh.Scale + Vector3.new(1, 1, 1)
end
wait(0.5/100)
end
end))
wait(1)
caac.Anchored = false
char.Head:Destroy()
local sound = Instance.new("Sound", char.Torso)
sound.SoundId = "rbxassetid://440431180"
sound.Volume = 1
sound:Play()

local explosion = Instance.new("Explosion", char)
explosion.BlastRadius = 1
explosion.BlastPressure = 9000
explosion.Position = char.Torso.Position			
	end
})
	local Tab = Window:MakeTab({
    Name = "IY",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
	Tab:AddButton({
	Name = "执行IY",
	Callback = function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()		
	end
})
	
	local about = Window:MakeTab({
    Name = "IY指令库(部分)",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
	
Tab:AddButton({
	Name = "飞行",
	Callback = function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\34\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\83\76\120\100\97\75\112\119\34\41\40\41\10")()
end
})    
Tab:AddButton({
	Name = "死亡笔记",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/krlpl/dfhj/main/%E6%AD%BB%E4%BA%A1%E7%AC%94%E8%AE%B0.txt"))()
end
})    
Tab:AddButton({
	Name = "子追",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/1AJ69eRG"))()
end
})  
Tab:AddButton({
	Name = "飞车",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/63T0fkBm"))()
end
})    
Tab:AddButton({
	Name = "无限跳跃",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
end
})    
Tab:AddButton({
	Name = "自杀",
	Callback = function()
game.Players.LocalPlayer.Character.Humanoid.Health=0
end
})    
Tab:AddButton({
	Name = "Anti-AFK",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))()
end
})    
Tab:AddButton({
	Name = "键盘",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt"))()
end
})    

Tab:AddSlider({

	Name = "跳跃高度",

	Min = 50,

	Max = 200,

	Default = 50,

	Color = Color3.fromRGB(255,255,255),

	Increment = 1,

	ValueName = "数值",

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value

	end    

})
Tab:AddTextbox({

	Name = "移动速度设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
		
		OrionLib:MakeNotification({
                    Name = "成功设置速度:  "..game.Players.LocalPlayer.Character.Humanoid.WalkSpeed.."   |速度",
                    Content = "成功",
                    Time = 3
                })
	end
})
Tab:AddTextbox({
	Name = "重力设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.Gravity = Value
		
		OrionLib:MakeNotification({
                    Name = "成功设置重力:  "..game.Workspace.Gravity.."   |重力",
                    Content = "成功",
                    Time = 3
                })
	end
})
Tab:AddTextbox({
	Name = "跳跃高度设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
		
		OrionLib:MakeNotification({
                    Name = "成功设置跳跃高度:  "..game.Players.LocalPlayer.Character.Humanoid.WalkSpeed.."   |高度",
                    Content = "成功",
                    Time = 3
                })
	end
})


Tab:AddToggle({
	Name = "夜视",
	Default = false,
	Callback = function(Value)
		if Value then

		    game.Lighting.Ambient = Color3.new(1, 1, 1)

		else

		    game.Lighting.Ambient = Color3.new(0, 0, 0)		    		    

		end

	end	
})
Tab:AddButton({
	Name = "光影",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
end
})    
	local Tab = Window:MakeTab({
    Name = "IY",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
	Tab:AddButton({
	Name = "执行IY",
	Callback = function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()		
	end
})
	local about = Window:MakeTab({
    Name = "IY指令",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
	about:AddParagraph("noclip(穿墙)")
about:AddParagraph("goto 玩家名(传送到玩家处)")
about:AddParagraph("fly 速度(飞行)")

local Tab = Window:MakeTab({
    Name = "dex和spy",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "dex1",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end
})    
Tab:AddButton({
	Name = "dex2",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/IlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIl/Script/main/Tools/DarkDexV3.lua", true))()
end
})    
Tab:AddButton({
	Name = "spy1",
	Callback = function()
getgenv().Spy="汉化Spy"
loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/refs/heads/main/spy%E6%B1%89%E5%8C%96%20(1).txt"))()
end
})    
Tab:AddButton({
	Name = "spy2",
	Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/atoyayaya/jsnwusiwksbsu/main/spy')))()
end
})    
local Tab = Window:MakeTab({
    Name = "doors",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "生成rush",
	Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/DOORS-Custom-Entity-S*er-V2-21705"))()
end
})    
Tab:AddButton({
	Name = "mspaintXK汉化",
	Callback = function()
getgenv().Spy="mspaint" loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoXuAnZang/XKscript/refs/heads/main/DOORS.txt"))()
end
})    
Tab:AddButton({
	Name = "十字架",
	Callback = function()
  loadstring(game:HttpGet("https://pastebin.com/raw/FCSyG6Th"))()
end
})   
Tab:AddButton({
	Name = "夜视仪",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/4Vsv1Xwn"))()
end
})    
local Tab = Window:MakeTab({
    Name = "内脏与黑火药",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\67\104\105\110\97\81\89\47\83\99\114\105\112\116\115\47\77\97\105\110\47\71\66"))()
end
})    
local Tab = Window:MakeTab({
    Name = "极速传奇",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet('\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\98\111\121\115\99\112\47\98\101\116\97\47\109\97\105\110\47\37\69\57\37\56\48\37\57\70\37\69\53\37\66\65\37\65\54\37\69\55\37\56\50\37\66\56\37\69\56\37\66\53\37\66\55\46\108\117\97'))()
		end
		}) 
	
		local Tab = Window:MakeTab({
    Name = "造船寻宝",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
		Tab:AddButton({
	Name = "刷钱",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/Lyy77rnr",true))()
end
})    
Tab:AddToggle({
    Name = "刷钱2(自做,柳絮制作,小白修复)",
    Default = false,
    Callback = function(Value)
while Value do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-51.5656433, 65.0000458, 1369.09009, 1, 0, 0, 0, 1, 0, 0, 0, 1)
--1号门
task.wait(0.5)--间隔0.5秒    
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-51.5656433, 65.0000458, 2139.09009, 1, 0, 0, 0, 1, 0, 0, 0, 1)    
--2号门
task.wait(0.5)--间隔0.5秒
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-51.5656433, 65.0000458, 2909.09009, 1, 0, 0, 0, 1, 0, 0, 0, 1)
--3号门
    task.wait(0.5)--间隔0.5秒
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-51.5656433, 65.0000458, 3679.09009, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  --4号门  
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-51.5656433, 65.0000458, 5219.08984, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  --5号门
  task.wait(0.5)--一样(下面这种一样的没有注释)
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-51.5656433, 65.0000458, 5989.08984, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  --6号门
  task.wait(0.5)
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-51.5656433, 65.0000458, 5219.08984, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  --7号门
  task.wait(0.5)
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-51.5656433, 65.0000458, 5989.08984, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  --8号门
  task.wait(0.5)
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-51.5656433, 65.0000458, 6759.08984, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  --9号门
  task.wait(0.5)
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-51.5656433, 65.0000458, 7529.08984, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  --10号门
  task.wait(0.5)
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-51.5656433, 65.0000458, 8299.08984, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  --11号门
task.wait(0.7)							
  game.Players.LocalPlayer.Character.Humanoid.Health=0
  task.wait(5)
end
end})			
			
		local Tab = Window:MakeTab({
    Name = "evade",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
		Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/9Strew/roblox/main/gamescripts/evade.lua'))()
end
})    
		Tab:AddButton({
	Name = "2",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Evade"))()
end
})    
local Tab = Window:MakeTab({
    Name = "SBC",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/10h-pack/345upd/refs/heads/main/SSBC.lua"))()
end
})    
local Tab = Window:MakeTab({
    Name = "周五夜放克",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/main.lua",true))()			
	end
})
local Tab = Window:MakeTab({
    Name = "餐厅大亨",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "无限钱(可用性未知)",
	Callback = function()
getgenv().ev = ev or {}
ev.Do = false
wait(.1)
ev.Do = true

function getPlayerTycoon()
   for _,obj in pairs(workspace.Tycoons:GetChildren()) do
       if obj.Factory.Player.Value == game.Players.LocalPlayer then return obj.Factory end
   end
end

local tyc = getPlayerTycoon()
function makePurchaseandSell()
   workspace.Events.ItemPurchase:InvokeServer(0,'cgz',0)
   workspace.Events.Building.PlaceObject:FireServer({workspace.Furniture.Counter5, "Normal", Vector3.new(-76, 3.4, 216), 270, "cgz"}, true)
   workspace.Events.Building.RemoveFurniture:InvokeServer(tyc.PlacedItems.Finished.Counter5, 3, true)
end

while ev.Do and wait() do makePurchaseandSell() end			
	end
})
Tab:AddButton({
	Name = "2",
	Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/LUXURY-ITEMS-Restaurant-Tycoon-2-OP-AutoFarm-9904"))()			
	end
})
Tab:AddButton({
	Name = "3(有卡密不推荐)",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/toosiwhip/snake-hub/main/restaurant-tycoon-2.lua"))()			
	end
})
Tab:AddButton({
	Name = "4",
	Callback = function()
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()
local w = library:CreateWindow("餐厅大亨2汉化版")
local b = w:CreateFolder("主页")
b:Button("玩家快速烹饪",function()
    local Cooking = game.Players.LocalPlayer.PlayerScripts.CookingNew
local CookProgress = require(Cooking.CookProgress)
local MultiClick = require(Cooking.InputDetectors.MultiClick)
local MouseMovement = require(Cooking.InputDetectors.MouseMovement)
local MouseSpin = require(Cooking.InputDetectors.MouseSpin)

local run = CookProgress.run
CookProgress.run = function(...)
  local ARGS = {...}
  ARGS[3] = 0
  return run(unpack(ARGS))
end

MultiClick.start = function(...)
  ({...})[3]()
end

MouseMovement.start = function(...)
  ({...})[3]()
end

MouseSpin.start = function(...)
  ({...})[3]()
end
end)
Tab:Button("一键收钱",function()
    warn("Requiring API")do
  loadstring(game:HttpGet("https://pastebin.com/raw/KMc6aBky"))();
end warn("API Loaded")

local child = object.child
local descendant = object.descendant
local check = object.check

local Tycoon = game.Players.LocalPlayer.Tycoon.Value
descendant.foreach(Tycoon.Items.OftenFiltered.Surface,"Bill",function(Bill)
  local Settings = {
          ["name"] = "CollectBill",
          ["model"] = Bill.Parent
  }
 
  game.ReplicatedStorage.Events.ClientTycoonInput:FireServer(Tycoon,Settings)
end)

local Connection,Code = descendant.on_add(Tycoon.Items.OftenFiltered.Surface,function(Bill)
  check.it(Bill.Name == "Bill",function()
      local Settings = {
              ["name"] = "CollectBill",
              ["model"] = Bill.Parent
      }
     
      game.ReplicatedStorage.Events.ClientTycoonInput:FireServer(Tycoon,Settings)
  end)
end)
end)
Tab:Button("npc自动烹饪",function()
    local chiefInstantCook = true
local npcReach = true

local Client = game.Players.LocalPlayer
local PS = Client.PlayerScripts
local Module = require(PS.ClientMain.Replications.Workers.WalkDummy)
local Worker = require(PS.CookingNew.WorkerComponents.WorkerDefault)
local M1 = require(PS.ClientMain.Replications.Customers.GetNPCFolder)



if npcReach then
   hookfunction(Module,function()
       return task.wait()
   end)
end

if chiefInstantCook then
   Worker.event = function(...)
      local args = {...}
      local npc = M1.GetNPCFolder(args[1]).ClientWorkers:FindFirstChild(args[2])
      local M2 = game.ReplicatedStorage.MiscModules.CookingSharedCharacter:FindFirstChild(args[4])
      if M2 then
          require(M2).finishInteract(npc,args[3],args[4])
      end
      return
   end
end
end)
			
	end
})
local Tab = Window:MakeTab({
    Name = "战争大亨",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "剑客(需要加剑客群组名称:剑客)",
	Callback = function()
Sword_Guest_V7 = "欢迎使用剑客V7"	
Sword_Guest__V7 = "作者_初夏"	
Sword_Guest___V7 = "剑客QQ群155160100"	
loadstring(game:HttpGet("https://raw.githubusercontent.com/Zer0neK/Hello/refs/heads/main/SG-V7"))()			
	end
})
			local Tab = Window:MakeTab({
    Name = "伐木大亨2",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "白",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/noob616161/KphoooOooooOoOo-wprfbdksorbfKvsdcIUH-194jddJ-___-_-lIlIIIllIIIlllIIIIlIlIIlIllIIIllllllIllllllIIIl/main/bai/%E4%BC%90%E6%9C%A8"))()			
	end
})
			Tab:AddButton({
	Name = "luaware汉化",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/LuaWare.lua", true))()			
	end
					
})
			local Tab = Window:MakeTab({
    Name = "恶魔学",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
			Tab:AddButton({
	Name = "1汉化"
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/wdwahDWGU/DWAHUBUHD/refs/heads/main/WDVHQVEH'))()		
	end
})
else
ScreenGui:Destroy()
StarterGui:SetCore("SendNotification", {
        Title = "密钥错误",
        Text = "玩家:"..localPlayer.Name.."臭煞笔,腻石补诗奈隆",
        Duration = 7,
    })			
    end
end)

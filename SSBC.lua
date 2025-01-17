local Library = loadstring(game:HttpGet("https://pastebin.com/raw/Q5DRf1AG",true))()

local Forums = Library.new('DarkTheme')
formus.Name = "formus"
formus.Parent = Library
 formus.Position = UDim2.new(0.326148063,0,0.29880476,0)
formus.Draggable = true
local preview = Forums:NewSection("传送")
local preview1 = Forums:NewSection("辅助")

preview:NewButton("传送A", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2293.44336, 21.3265343, 1058.2572, -0.015537858, 0.999517143, 0.0269091763, -0.995784104, -0.0130354166, -0.0907967985, -0.0904021859, -0.0282065235, 0.99550581)
--A点传送
end)
preview:NewButton("B点传送", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1337.44312, 10.4819765, -1061.43372, 4.36306e-05, 0.99959904, 0.0283192005, -1.00000012, 4.36306e-05, 6.1839819e-07, -6.1839819e-07, -0.0283192005, 0.99959892)
--B点传送
end)
preview:NewButton("C点传送", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-154.356369, -38.6096306, 523.15979, 5.8889389e-05, 0.999629557, 0.0272208191, -1.00000012, 5.8889389e-05, 8.01868737e-07, -8.01868737e-07, -0.0272208191, 0.999629438)
--C点传送
end)
preview:NewButton("D点传送", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1259.6543, 74.3424225, -1028.86328, 5.8889389e-05, 0.999629557, 0.0272208191, -1.00000012, 5.8889389e-05, 8.01868737e-07, -8.01868737e-07, -0.0272208191, 0.999629438)
--D点传送
end)
preview:NewButton("E点传送", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2613.46143, -16.5042343, 447.08844, -6.04391098e-05, 0.999631047, 0.0271597952, -1, -5.87701797e-05, -6.18426129e-05, -6.02221116e-05, -0.0271597989, 0.999631107)
--E点传送
end)
preview1:NewButton("透视", function()
local settings = {
    Color = Color3.fromRGB(255, 0, 0),
    Size = 15,
    Transparency = 1, -- 1 Visible - 0 Not Visible
    AutoScale = true
}

local space = game:GetService("Workspace")
local player = game:GetService("Players").LocalPlayer
local camera = space.CurrentCamera

local function NewText(color, size, transparency)
    local text = Drawing.new("Text")
    text.Visible = false
    text.Text = ""
    text.Position = Vector2.new(0, 0)
    text.Color = color
    text.Size = size
    text.Center = true
    text.Transparency = transparency
    return text
end

local function Visibility(state, lib)
    for u, x in pairs(lib) do
        x.Visible = state
    end
end

local function Size(size, lib)
    for u, x in pairs(lib) do
        x.Size = size
    end
end

for i, v in pairs(game:GetService("Players"):GetPlayers()) do
    local library = {
        name = NewText(settings.Color, settings.Size, settings.Transparency)
    }
    local function ESP()
        local connection
        connection = game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v.Name ~= player.Name and v.Character.Humanoid.Health > 0 then
                local HumanoidRootPart_Pos, OnScreen = camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                if OnScreen then
                    library.name.Text = v.Name
                    library.name.Position = Vector2.new(HumanoidRootPart_Pos.X, HumanoidRootPart_Pos.Y)
                    --// AutoScale
                    if settings.AutoScale then
                        local distance = (Vector3.new(camera.CFrame.X, camera.CFrame.Y, camera.CFrame.Z) - v.Character.HumanoidRootPart.Position).magnitude
                        local textsize = math.clamp(1/distance*1000, 2, 30) -- 2 is min text size, 30 is max text size, change to your liking
                        Size(textsize, library)
                    else 
                        Size(settings.Size, library)
                    end
                    --//--
                    Visibility(true, library)
                else 
                    Visibility(false, library)
                end
            else 
                Visibility(false, library)
                if game.Players:FindFirstChild(v.Name) == nil then
                    connection:Disconnect()
                end
            end
        end)
    end
    coroutine.wrap(ESP)()
end

game.Players.PlayerAdded:Connect(function(newplr)
    print(newplr)
    local library = {
        name = NewText(settings.Color, settings.Size, settings.Transparency)
    }
    local function ESP()
        local connection
        connection = game:GetService("RunService").RenderStepped:Connect(function()
            if newplr.Character ~= nil and newplr.Character:FindFirstChild("Humanoid") ~= nil and newplr.Character:FindFirstChild("HumanoidRootPart") ~= nil and newplr.Name ~= player.Name and newplr.Character.Humanoid.Health > 0 then
                local HumanoidRootPart_Pos, OnScreen = camera:WorldToViewportPoint(newplr.Character.HumanoidRootPart.Position)
                if OnScreen then
                    library.name.Text = newplr.Name
                    library.name.Position = Vector2.new(HumanoidRootPart_Pos.X, HumanoidRootPart_Pos.Y)
                    --// AutoScale
                    if settings.AutoScale then
                        local distance = (Vector3.new(camera.CFrame.X, camera.CFrame.Y, camera.CFrame.Z) - newplr.Character.HumanoidRootPart.Position).magnitude
                        local textsize = math.clamp(1/distance*1000, 2, 30) -- 2 is min text size, 20 is max text size, change to your liking
                        Size(textsize, library)
                    else 
                        Size(settings.Size, library)
                    end
                    --//--
                    Visibility(true, library)
                else 
                    Visibility(false, library)
                end
            else 
                Visibility(false, library)
                if game.Players:FindFirstChild(newplr.Name) == nil then
                    connection:Disconnect()
                end
            end
        end)
    end
    coroutine.wrap(ESP)()
end)
end)
preview1:NewButton("自瞄", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20Aimbot.lua"))()
end)
preview1:Slider("跳跃高度!", "JumpPower", game.Players.LocalPlayer.Character.Humanoid.JumpPower, 50, 400, false, function(Jump)
  spawn(function() while task.wait() do game.Players.LocalPlayer.Character.Humanoid.JumpPower = Jump end end)
end)
preview1:Slider("步行速度!", "WalkSpeed", game.Players.LocalPlayer.Character.Humanoid.WalkSpeed, 16, 400, false, function(Speed)
  spawn(function() while task.wait() do game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Speed end end)
end)
preview1:Button("飞行v3",function()
  loadstring(game:HttpGet'https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt')()
  end)
  preview1:Button("反挂机v2",function()
  loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))()
  end)



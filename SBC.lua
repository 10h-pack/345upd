local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/XiaoYunCN/UWU/main/Library%2FSilent%20ui'))()
local Window = Library:new("SBC 10h_pack制作");
local GX = Main:section("SBC",true)
local QU = Main:section("ESP",true)
about:Button("摧毁界面", function()
    game:GetService("CoreGui")["frosty is cute"]:Destroy()
end)
General:Toggle("穿墙(可用)", "NoClip", false, function(NC)
  local Workspace = game:GetService("Workspace") local Players = game:GetService("Players") if NC then Clipon = true else Clipon = false end Stepped = game:GetService("RunService").Stepped:Connect(function() if not Clipon == false then for a, b in pairs(Workspace:GetChildren()) do if b.Name == Players.LocalPlayer.Name then for i, v in pairs(Workspace[Players.LocalPlayer.Name]:GetChildren()) do if v:IsA("BasePart") then v.CanCollide = false end end end end else Stepped:Disconnect() end end)
end)
General:Button("透视", function()
  local Players = game:GetService("Players"):GetChildren() local RunService = game:GetService("RunService") local highlight = Instance.new("Highlight") highlight.Name = "Highlight" for i, v in pairs(Players) do repeat wait() until v.Character if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then local highlightClone = highlight:Clone() highlightClone.Adornee = v.Character highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart") highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop highlightClone.Name = "Highlight" end end game.Players.PlayerAdded:Connect(function(player) repeat wait() until player.Character if not player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then local highlightClone = highlight:Clone() highlightClone.Adornee = player.Character highlightClone.Parent = player.Character:FindFirstChild("HumanoidRootPart") highlightClone.Name = "Highlight" end end) game.Players.PlayerRemoving:Connect(function(playerRemoved) playerRemoved.Character:FindFirstChild("HumanoidRootPart").Highlight:Destroy() end) RunService.Heartbeat:Connect(function() for i, v in pairs(Players) do repeat wait() until v.Character if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then local highlightClone = highlight:Clone() highlightClone.Adornee = v.Character highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart") highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop highlightClone.Name = "Highlight" task.wait() end end end)
end) 
GX:Button("A点传送",function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2293.44336, 21.3265343, 1058.2572, -0.015537858, 0.999517143, 0.0269091763, -0.995784104, -0.0130354166, -0.0907967985, -0.0904021859, -0.0282065235, 0.99550581)
--A点传送
end)
GX:Button("B点传送",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1337.44312, 10.4819765, -1061.43372, 4.36306e-05, 0.99959904, 0.0283192005, -1.00000012, 4.36306e-05, 6.1839819e-07, -6.1839819e-07, -0.0283192005, 0.99959892)
--B点传送
end)
GX:Button("C点传送",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-154.356369, -38.6096306, 523.15979, 5.8889389e-05, 0.999629557, 0.0272208191, -1.00000012, 5.8889389e-05, 8.01868737e-07, -8.01868737e-07, -0.0272208191, 0.999629438)
--C点传送
end)
GX:Button("D点传送",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1259.6543, 74.3424225, -1028.86328, 5.8889389e-05, 0.999629557, 0.0272208191, -1.00000012, 5.8889389e-05, 8.01868737e-07, -8.01868737e-07, -0.0272208191, 0.999629438)
--D点传送
end)
GX:Button("E点传送",function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2613.46143, -16.5042343, 447.08844, -6.04391098e-05, 0.999631047, 0.0271597952, -1, -5.87701797e-05, -6.18426129e-05, -6.02221116e-05, -0.0271597989, 0.999631107)
--E点传送
end)
GX:Button("子弹追踪",function()
  loadstring(game:HttpGet("https://pastebin.com/raw/1AJ69eRG"))()
end)

QU:Toggle("人物显示", "RWXS", false, function(RWXS)
    getgenv().enabled = RWXS getgenv().filluseteamcolor = true getgenv().outlineuseteamcolor = true getgenv().fillcolor = Color3.new(1, 0, 0) getgenv().outlinecolor = Color3.new(1, 1, 1) getgenv().filltrans = 0.5 getgenv().outlinetrans = 0.5 loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/RobloxScripts/main/Highlight-ESP.lua"))()
end)


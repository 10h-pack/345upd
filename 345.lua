













local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/VeaMSRZK"))()
local Window = OrionLib:MakeWindow({Name = "6", HidePremium = false, SaveConfig = true,IntroText = "loading", ConfigFolder = "4646646"})
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
loadstring(game:HttpGet("https://raw.githubusercontent.com/wdwahDWGU/DWAHUBUHD/refs/heads/main/UEWJIQBW"))()
end
})
local Tab = Window:MakeTab({
    Name = "通用",
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
	Name = "IY",
	Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end
})    
Tab:AddButton({
	Name = "光影",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
end
})    



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

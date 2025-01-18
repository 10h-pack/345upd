local OrionLib = loadstring(game:HttpGet(('https://pastebin.com/raw/VeaMSRZK')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "卡密", HidePremium = false, SaveConfig = false, IntroEnabled = false})

_G.Key = "USNDYS645"--←密码
_G.KeyInput = "string"

local Tab = Window:MakeTab({
	Name = "密钥",
	Icon = "",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "输入密钥",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "检查密钥!",
	Callback = function()
      		if _G.KeyInput == _G.Key then
            OrionLib:MakeNotification({
                Name = "密钥正确",
                Content = "请稍等!",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            		loadstring(game:HttpGet("https://raw.githubusercontent.com/10h-pack/345upd/refs/heads/main/345.lua"))()
			

            OrionLib:Destroy()
            else
                OrionLib:MakeNotification({
                    Name = "错误",
                    Content = "密钥错误!",
                    Image = "rbxassetid://4483345998",
                    Time = 5
                
                })
        end
  	end    
})

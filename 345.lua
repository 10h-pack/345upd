local whitelist = loadstring(game:HttpGet("https://raw.githubusercontent.com/10h-pack/345upd/refs/heads/main/whitelist.lua", true))()

if not whitelist[game.Players.LocalPlayer.Name] then
    game.Players.LocalPlayer:Kick("验证失败")
    return
end
game.StarterGui:SetCore("SendNotification", {
    Title = "验证成功",
    Text = "66",
    Duration = 5
})













local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/VeaMSRZK"))()
local Window = OrionLib:MakeWindow({Name = "345555555555", HidePremium = false, SaveConfig = true,IntroText = "345", ConfigFolder = "4646646"})
local Tab = Window:MakeTab({
    Name = "功能分类名",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "外国恐鬼症",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/MythHubOfficial/Blair/refs/heads/main/MYTHONTOP'))()
end
})   
Tab:AddButton({
	Name = "国内恐鬼",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/wdwahDWGU/DWAHUBUHD/refs/heads/main/UEWJIQBW"))()
end
})     
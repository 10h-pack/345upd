local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local WhitelistedPlayers = {
    ["10h_pack"] = true,
    ["LXPPduo"] = true,  
    ["10h_pack1"] = true
    ["qwaszxcv85"] = true
}

local function IsWhitelisted(player)
    return WhitelistedPlayers[player.Name] or false
end

local localPlayer = Players.LocalPlayer

local isLocalPlayerWhitelisted = IsWhitelisted(localPlayer)

if isLocalPlayerWhitelisted then
    StarterGui:SetCore("SendNotification", {
        Title = "白名单认证",
        Text = "玩家:"..localPlayer.Name.."，检测完毕白名单玩家，稍后会加载脚本",
        Duration = 7,
    })
    loadstring(game:HttpGet("https://raw.githubusercontent.com/10h-pack/345upd/refs/heads/main/345.lua"))()    
else
    localPlayer:Kick("bro")
end

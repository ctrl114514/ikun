local CoreGui = game:GetService("StarterGui")CoreGui:SetCore("SendNotification", {    Title = "神委🇨🇳",    Text = "耐心等待（反挂机已开启）",    Duration = 5, })print("反挂机开启")		local vu = game:GetService("VirtualUser")		game:GetService("Players").LocalPlayer.Idled:connect(function()		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)		   wait(1)		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)		end)
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/ctrl114514/shenwei/main/Orion')))()
local Window = OrionLib:MakeWindow({Name = "神委🇨🇳", HidePremium = false, SaveConfig = false, IntroText = "欢迎使用", ConfigFolder = "欢迎使用"})

local Tab = Window:MakeTab({
    Name = "👑脚本公告👑",
    Icon = "rbxassetid://7734068321",
    PremiumOnly = false
})

Tab:AddParagraph("作者","神委")
Tab:AddLabel("作者QQ：847391661")
Tab:AddLabel("此脚本完全免费")

local Tab = Window:MakeTab({
	Name = "⭐通用功能⭐",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "光影",
  Default = false,
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ctrl114514/shenwei/main/Graphics"))()
  end
})

Tab:AddButton({
	Name = "超高画质",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ctrl114514/shenwei/main/Graphics2"))()
end
})    

Tab:AddButton({
  Name = "旋转",
  Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/ctrl114514/shenwei/main/spin', true))()
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
	Name = "飞车",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ctrl114514/shenwei/main/flycar"))()
	end
})

Tab:AddButton({
	Name = "爬墙",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ctrl114514/shenwei/main/climb"))()
end
})

Tab:AddButton({
    Name = "动画",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ctrl114514/shenwei/main/animation"))()
    end
})

Tab:AddButton({
	Name = "踏空行走（配上无限跳效果更佳）",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/ctrl114514/shenwei/main/Float'))()
	end
})

Tab:AddButton({
	Name = "无限跳（配上踏空行走效果更佳）",
    Default = false,
	Callback = function(Value)
loadstring(game:HttpGet("https://raw.githubusercontent.com/ctrl114514/shenwei/main/jump", true))()
	end
})

Tab:AddButton({
	Name = "fe指令",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ctrl114514/shenwei/main/infiniteyield"))()
end
})  

local player = Window:MakeTab({
	Name = "👁玩家👁",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

player:AddTextbox({
	Name = "移动速度",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end
})

player:AddTextbox({
	Name = "跳跃高度",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end
})

player:AddTextbox({
	Name = "重力设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.Gravity = Value
	end
})

player:AddButton({
	Name = "👻穿墙（暂时关闭）",
	Callback = function()
      	loadstring(game:HttpGet(""))()
  	end
})

player:AddButton({
	Name = "🚀飞行",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/ctrl114514/shenwei/main/fly"))()
  	end
})

player:AddButton({
	Name = "透视",
	Callback = function()
      	local FillColor = Color3.fromRGB(175,25,255)
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.5
local OutlineColor = Color3.fromRGB(255,255,255)
local OutlineTransparency = 0

local CoreGui = game:FindService("CoreGui")
local Players = game:FindService("Players")
local lp = Players.LocalPlayer
local connections = {}

local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

local function Highlight(plr)
    local Highlight = Instance.new("Highlight")
    Highlight.Name = plr.Name
    Highlight.FillColor = FillColor
    Highlight.DepthMode = DepthMode
    Highlight.FillTransparency = FillTransparency
    Highlight.OutlineColor = OutlineColor
    Highlight.OutlineTransparency = 0
    Highlight.Parent = Storage
    
    local plrchar = plr.Character
    if plrchar then
        Highlight.Adornee = plrchar
    end

    connections[plr] = plr.CharacterAdded:Connect(function(char)
        Highlight.Adornee = char
    end)
end

Players.PlayerAdded:Connect(Highlight)
for i,v in next, Players:GetPlayers() do
    Highlight(v)
end

Players.PlayerRemoving:Connect(function(plr)
    local plrname = plr.Name
    if Storage[plrname] then
        Storage[plrname]:Destroy()
    end
    if connections[plr] then
        connections[plr]:Disconnect()
    end
end)
  	end
})

player:AddButton({
	Name = "传送玩家",
	Callback = function()
      	loadstring(game:HttpGet(("https://raw.githubusercontent.com/ctrl114514/shenwei/main/tp")))()
  	end
})

player:AddButton({
	Name = "玩家进入提示",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/ctrl114514/shenwei/main/bbn"))()
  	end
})

local Tab = Window:MakeTab({
	Name = "🍎海贼王🍎",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "1",
  Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Minhtriettt/Free-Script/main/MTriet-Hub.lua"))()
  end
})

local Tab = Window:MakeTab({
	Name = "🔴刀刃球🔴",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "红圈格挡",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ctrl114514/shenwei/main/bladeball"))()
  end
})

local Tab = Window:MakeTab({
    Name = "👋巴掌大战👋",
    Icon = "rbxassetid://7734068321",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "1",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Slap_Battles/main/Slap_Battles.lua"))()
    end
})

local Tab = Window:MakeTab({
    Name = "🌟脚本中心🌟",
    Icon = "rbxassetid://7734068321",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "XC脚本中心",
    Callback = function()
    loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\103\101\109\120\72\119\65\49"))()
    end
})



OrionLib:Init()
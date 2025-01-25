local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
Rayfield:Notify({
   Title = "我们信息",
   Content = "⚠️当前冻梨-Evade正在测试,未录入正式版!⚠️ \n💍Auxiliary:Xiao Yun-CN.💍 \n👑 Codeby:OAO_CNikunawa.👑 \n🍞Apprentice:B&Z-X.🍞 \n📶加入我们:yileinayyds114514 (微信号)📶"
   Duration = 10,
   Image = 4483362458,
})
--local WindUI = loadstring(game:HttpGet("https://tree-hub.vercel.app/api/UI/WindUI"))()
local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Roblox-user/Raw.DL-HUB.Main/refs/heads/main/Wind-UI.Lua"))()
local notifs =loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
local changelog = game:HttpGet("https://raw.githubusercontent.com/CF-Trail/random/main/.x.vr.e.hi/misc/clogevade.lua")
local esp =loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/SimpleHighlightESP.lua"))()
Rayfield:Notify({
   Title = "正在加载功能…0/9",
   Content = "请等待约10秒!",
   Duration = 4,
   Image = 4483362458,
})

repeat
        task.wait()
until workspace.Game.Players:FindFirstChild(game.Players.LocalPlayer.Name)
repeat
        task.wait()
until workspace.Game.Players:FindFirstChild(game.Players.LocalPlayer.Name):FindFirstChild("HumanoidRootPart")

local eventTaunts = {
        "CursedFlashlight",
        "WerewolfHowl",
        "Tombstone",
        "Baghead",
        "DemonHorns",
        "Candlehead",
        "ImpaledHead",
        "WitchHat",
        "DualBoneSwords",
        "LavaLamp",
        "SpiderInfestation",
        "PumpItUp",
        "VampireOutfit",
        "OminousDemise",
        "BlueHallowedFace",
        "GreenHallowedFace",
        "OrangeHallowedFace",
        "GhostCatcher",
        "DemonWings",
        "CandleLamp",
        "FungalOvergrowth",
        "Reanimated",
        "ToxicInferno",
        "Monoculi",
        "WretchedWings",
        "PhantomBlades",
        "AmethystStaff",
        "GhostAbduction",
        "Telespell",
        "Thriller",
        "BluefirePortal",
        "HellfirePortal",
        "SeekingEye",
        "EyeCorruption",
        "Necromonicon",
        "FrightFunk",
        "BlueUFOAbduction",
        "PinkUFOAbduction",
        "Cauldronhead",
        "HellishGrip",
        "HauntedIredescence",
        "CobwebTrap",
        "MechanicalScythe",
        "DragonSkull",
        "GhostFriend",
        "SpilledCauldron",
        "WardingLantern",
        "RockinStride",
        "Rockin'Stride",
        "DarkTendrils",
        "AlchemistBelt",
        "Frankenstein",
        "ElectrifyingGuitar",
        "BatVision",
        "BananaSuit",
        "EyeIllusions",
        "BroomOfDoom",
        "BloodMoon"
}

getgenv().respawning = false
getgenv().flly = false
getgenv().cframespeed = false
getgenv().cfspeed = 0
getgenv().autobuy = false

function f()
        UIS = game:GetService("UserInputService")
        while getgenv().cframespeed and task.wait() do
                if getgenv().cfspeed ~= getgenv().cfspeed then
                        break
                end
                repeat
                        task.wait()
                until game.Players.LocalPlayer.Character or workspace.Game.Players:FindFirstChild(game.Players.LocalPlayer.Name)
                You = game.Players.LocalPlayer.Character or workspace.Game.Players:FindFirstChild(game.Players.LocalPlayer.Name)
                hrp = You:WaitForChild("HumanoidRootPart", 0.1)
                if not hrp then
                        repeat
                                task.wait()
                        until You:FindFirstChild('HumanoidRootPart')
                end
                hrp = You.HumanoidRootPart
                if UIS:IsKeyDown(Enum.KeyCode.W) then
                        hrp.CFrame =
                hrp.CFrame * CFrame.new(0, 0, -getgenv().cfspeed)
                end
                if UIS:IsKeyDown(Enum.KeyCode.A) then
                        hrp.CFrame =
            hrp.CFrame * CFrame.new(-getgenv().cfspeed, 0, 0)
                end
                if UIS:IsKeyDown(Enum.KeyCode.S) then
                        hrp.CFrame =
                hrp.CFrame * CFrame.new(0, 0, getgenv().cfspeed)
                end
                if UIS:IsKeyDown(Enum.KeyCode.D) then
                        hrp.CFrame =
                hrp.CFrame * CFrame.new(getgenv().cfspeed, 0, 0)
                end
        end
end

function bb()
        while getgenv().breakbots do
                n = math.random(1, 10000000)
                z = math.random(200, 8000)
                x = math.random(1, 10000000)
                if not getgenv().breakbots then
                        break
                end
                if game:GetService("Workspace").Game:WaitForChild('Map'):WaitForChild('Parts'):FindFirstChild("KillBricks") then
                        game:GetService("Workspace").Game:WaitForChild('Map').KillBricks:Destroy()
                end
                task.wait()
                game.Workspace.Game.Players:WaitForChild(game.Players.LocalPlayer.Name):WaitForChild("HumanoidRootPart").CFrame =
            CFrame.new(0, z, 0)
        end
end

function annoydown()
        if annoydowned then
                makeNotification("warning", "秋枫 | 自动重生", "在1秒后重生")
        end
        while task.wait() do
                if not getgenv().annoydowned then
                        break
                end
                pcall(
            function()
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(250, 250, 250)
                        for i, v in next, game:GetService("Workspace").Game.Players:GetDescendants() do
                                if
                        v.IsA(v, "NumberValue") and v.Name == "Downed" and
                            not v.Parent.Parent.Parent:FindFirstChild("CarriedBy") and
                            game.Players[v.Parent.Parent.Parent.Name].Settings.CanBeCarried.Value == true
                     then
                                        local holder = v.Parent.Parent.Parent.Name
                                        local hold = workspace.Game.Players[holder]
                                        scrip =
                            require(
                            game:GetService("ReplicatedStorage").ModuleStorage.Interact.Interactions.Revive.Revive
                        )
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(hold.HumanoidRootPart.Position)
                                        task.wait(0.3)
                                        game:GetService("ReplicatedStorage").Events.Revive.CarryPlayer:FireServer(holder)
                                        task.wait(0.3)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 3000, 0)
                                        task.wait(0.2)
                                        game:GetService("ReplicatedStorage").Events.Revive.CarryPlayer:FireServer(holder, true)
                                        task.wait(0.3)
                                end
                        end
                end
        )
        end
end

function makeNotification(type, head, body)
        notifs.new(type, head, body, true, 5)
end

function Simple_Create(base, name, trackername, studs)
        local bb = Instance.new("BillboardGui", game.CoreGui)
        bb.Adornee = base
        bb.ExtentsOffset = Vector3.new(0, 1, 0)
        bb.AlwaysOnTop = true
        bb.Size = UDim2.new(0, 6, 0, 6)
        bb.StudsOffset = Vector3.new(0, 1, 0)
        bb.Name = trackername
        local frame = Instance.new("Frame", bb)
        frame.ZIndex = 10
        frame.BackgroundTransparency = 0.3
        frame.Size = UDim2.new(1, 0, 1, 0)
        frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        local txtlbl = Instance.new("TextLabel", bb)
        txtlbl.ZIndex = 10
        txtlbl.BackgroundTransparency = 1
        txtlbl.Position = UDim2.new(0, 0, 0, -48)
        txtlbl.Size = UDim2.new(1, 0, 10, 0)
        txtlbl.Font = "ArialBold"
        txtlbl.FontSize = "Size12"
        txtlbl.Text = name
        txtlbl.TextStrokeTransparency = 0.5
        txtlbl.TextColor3 = Color3.fromRGB(255, 0, 0)
end

function ClearESP(espname)
        for _, v in pairs(game.CoreGui:GetChildren()) do
                if v.Name == espname and v:isA("BillboardGui") then
                        v:Destroy()
                end
        end
end

function nowaterdmg(t)
        for i, v in next, t:GetChildren() do
                if v.IsA(v, 'BasePart') then
                        v.CanTouch = false
                end
        end
end

game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
        if flly then
                repeat
                        task.wait()
                until char:FindFirstChild('HumanoidRootPart')
                task.wait(3)
                loadstring(game:HttpGet("https://raw.githubusercontent.com/CF-Trail/random/main/bypassedfly.lua"))()
        end
end)
Rayfield:Notify({
   Title = "加载中…1/9",
   Content = "功能待选已加载!",
   Duration = 2,
   Image = 4483362458,
})
local Window = WindUI:CreateWindow({
    Title = "冻梨 | Evade",
    Icon = "cloud",
    Author = "Q3E4[私]  V.免费版",
    Folder = "CloudHub",
    Size = UDim2.fromOffset(580, 460),
    KeySystem = {
        Key = "Q3E4-yyds!",
        Note = "冻梨 Evade | Q3E4-yyds!",
        URL = "Q3E4-yyds!",
        SaveKey = true, 
    }, 
    Transparent = true,
    Theme = "Rose",
    SideBarWidth = 200,
    HasOutline = true,
})

Window:EditOpenButton({
    Title = "[冻梨 | Evade]",
    Icon = "image-upscale",
    CornerRadius = UDim.new(0,10),
    StrokeThickness = 3,
    Color = ColorSequence.new(
        Color3.fromHex("FF0F7B"),
        Color3.fromHex("F89B29")
    )
})

local Highlights_Active = false;
local AI_ESP = false;
local GodMode_Enabled = false;
local No_CamShake = false;

-- Anti AFK
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do v:Disable() end

-- Simple Text ESP
function Simple_Create(base, name, trackername, studs)
    local bb = Instance.new('BillboardGui', game.CoreGui)
    bb.Adornee = base
    bb.ExtentsOffset = Vector3.new(0,1,0)
    bb.AlwaysOnTop = true
    bb.Size = UDim2.new(0,6,0,6)
    bb.StudsOffset = Vector3.new(0,1,0)
    bb.Name = trackername

    local frame = Instance.new('Frame', bb)
    frame.ZIndex = 10
    frame.BackgroundTransparency = 0.3
    frame.Size = UDim2.new(1,0,1,0)
    frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)

    local txtlbl = Instance.new('TextLabel', bb)
    txtlbl.ZIndex = 10
    txtlbl.BackgroundTransparency = 1
    txtlbl.Position = UDim2.new(0,0,0,-48)
    txtlbl.Size = UDim2.new(1,0,10,0)
    txtlbl.Font = 'ArialBold'
    txtlbl.FontSize = 'Size12'
    txtlbl.Text = name
    txtlbl.TextStrokeTransparency = 0.5
    txtlbl.TextColor3 = Color3.fromRGB(255, 0, 0)

    local txtlblstud = Instance.new('TextLabel', bb)
    txtlblstud.ZIndex = 10
    txtlblstud.BackgroundTransparency = 1
    txtlblstud.Position = UDim2.new(0,0,0,-35)
    txtlblstud.Size = UDim2.new(1,0,10,0)
    txtlblstud.Font = 'ArialBold'
    txtlblstud.FontSize = 'Size12'
    txtlblstud.Text = tostring(studs) .. " 米"
    txtlblstud.TextStrokeTransparency = 0.5
    txtlblstud.TextColor3 = Color3.new(255,255,255)
end

-- Clear ESP
function ClearESP(espname)
    for _,v in pairs(game.CoreGui:GetChildren()) do
        if v.Name == espname and v:isA('BillboardGui') then
            v:Destroy()
        end
    end
end
getgenv().Settings = {
    moneyfarm = false,
    afkfarm = false,
    NoCameraShake = false,
    Downedplayeresp = false,
    AutoRespawn = false,
    TicketFarm = false,
    Speed = 1450,
    Jump = 3,
    reviveTime = 3,
    DownedColor = Color3.fromRGB(255,0,0),
    PlayerColor = Color3.fromRGB(255,170,0),

    stats = {
        TicketFarm = {
            earned = nil,
            duration = 0
        },

        TokenFarm = {
            earned = nil,
            duration = 0
        }
    }
}
Rayfield:Notify({
   Title = "加载中…2/9",
   Content = "窗口已加载!",
   Duration = 2,
   Image = 4483362458,
})
local homeTab = Window:Tab({
    Title = "主页",
    Icon = "house",
})
homeTab:Section({ 
    Title = "编码者:Q3E4",
    TextSize = 22,
})
local playerTab = Window:Tab({
    Title = "玩家",
    Icon = "rbxassetid://7743875962",
})
local Slider = playerTab:Slider({
    Title = "速度(不回拉)",
    Desc = "支持Evade的速度修改",
    Step = 1,
    Value = {
        Min = 16,
        Max = 1450,
        Default = 16,
    },
    Callback = function(ws)
    getgenv().cfspeed = ws
    end
})
local Slider = playerTab:Slider({
    Title = "跳跃高度",
    Desc = "支持Evade的不回拉跳跃",
    Step = 1,
    Value = {
        Min = 3,
        Max = 500,
        Default = 3,
    },
    Callback = function(Value)
      Settings.Jump = Value
    end
})
local Button = playerTab:Toggle({
    Title = "内置行走速度",
    Callback = function(c)
        getgenv().cframespeed = c
                f()
    end,
})
Rayfield:Notify({
   Title = "加载中…3/9",
   Content = "主页已加载",
   Duration = 2,
   Image = 4483362458,
})
local MainTab = Window:Tab({
    Title = "功能",
    Icon = "snowflake",
})
local Button = MainTab:Toggle({
    Title = "自动刷礼物",
    Callback = function(TF)
        getgenv().tf = TF
                if tf then
                        makeNotification(
                        "warning",
                        "秋枫 | 注意⚠️",
                        '你会在1秒后开始刷礼物!'
                    )
                    wait(1)
                        part = Instance.new("Part", workspace)
                        part.Anchored = true
                        part.CFrame = CFrame.new(100, 496, 100)
                end
                while task.wait(0.5) and getgenv().tf do
                        if not tf then
                                break
                        end
                        local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
                        local tickets = workspace.Game.Effects.Tickets
                        local hrp = char:WaitForChild("HumanoidRootPart", 3)
                        if hrp == nil then
                                return
                        end
                        hrp.CFrame = CFrame.new(100, 500, 100)
                        for i, v in next, tickets:GetDescendants() do
                                if v.IsA(v, "BasePart") and v.Name == "HumanoidRootPart" then
                                        hrp.CFrame = CFrame.new(v.Position)
                                end
                        end
                end
    end,
})
MainTab:Button({
    Title = "获取回合结束时间(测试)",
    Callback = function()
makeNotification(
                "Info",
                "秋枫 | 地图",
                '地图结束时间是: ' .. game.Players.LocalPlayer.PlayerGui:WaitForChild("HUD").Center.Vote.Info.Read.Timer.Text
            )
    end
})
MainTab:Button({
    Title = "无视水减速",
    Callback = function()
if getgenv().nodmg then
                        return
                end
                getgenv().nodmg = true
                nowaterdmg(game.Players.LocalPlayer.Character)
                game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
                        repeat
                                task.wait()
                        until char:FindFirstChild('HumanoidRootPart')
                        nowaterdmg(char)
                end)
    end
})
local Button = MainTab:Toggle({
    Title = "飞行(可用)已绕过飞行拉回",
    Callback = function(flyy)
        getgenv().flly = flyy
                if getgenv().flly then
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/CF-Trail/random/main/bypassedfly.lua"))()
                else
                        for i, v in next, workspace:GetChildren() do
                                if v.IsA(v, "BasePart") and v.Name ~= "Terrain" then
                                        v:Destroy()
                                end
                        end
                end
    end,
})
local Button = MainTab:Toggle({
    Title = "无敌模式(测试版)",
    Callback = function(bool)
            GodMode_Enabled = bool;
    if bool then 
        local Character = Player.Character or Player.CharacterAdded:Wait()
        local Hum = Character:WaitForChild("Humanoid")
        Hum.Parent = nil;
        Hum.Parent = Char;
    end
    end,
})
local Button = MainTab:Toggle({
    Title = "自动跳跳(测试版)",
    Callback = function(Value)
  Jump = Value
        game.UserInputService.JumpRequest:Connect(function()
            if Jump then
                game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
            end
        end)
  end
})
MainTab:Button({
    Title = "高亮",
    Callback = function()
           Game.Lighting.Brightness = 4
        Game.Lighting.FogEnd = 1000
        Game.Lighting.GlobalShadows = false
    Game.Lighting.ClockTime = 12
    end
})
MainTab:Button({
    Title = "移除障碍(减少卡顿)",
    Callback = function()
workspace.Game.Map.InvisParts:ClearAllChildren()
    end
})
local Button = MainTab:Toggle({
    Title = "无相机抖动",
    Callback = function(State)
    Settings.NoCameraShake = State
    end,
})
local Button = MainTab:Toggle({
    Title = "自动恢复(慢)3秒后",
    Callback = function(State)
     if State then
        workspace.Game.Settings:SetAttribute("ReviveTime", 3)
    else
        workspace.Game.Settings:SetAttribute("ReviveTime", Settings.reviveTime)
    end
    end,
})
local Button = MainTab:Toggle({
    Title = "自动重生1(不推荐)  不能和2开",
    Callback = function(State)
          Settings.AutoRespawn = State
    end,
})
local Button = MainTab:Toggle({
    Title = "自动重生2(推荐)  不能和1开",
    Callback = function(x)
          getgenv().respawning = x
                while task.wait(1) and respawning do
                        if getgenv().respawning then
                                break
                        end
                        local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
                        local stats = char:WaitForChild("StatChanges", 3)
                        if stats == nil then
                                return
                        end
                        if stats:FindFirstChild("Speed") and stats:FindFirstChild("Speed"):FindFirstChild("Downed") then
                                game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
                        end
                end
    end,
})
MainTab:Button({
    Title = "重生",
    Callback = function()
    game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
    end
})
Rayfield:Notify({
   Title = "加载中…4/9",
   Content = "功能已加载!",
   Duration = 2,
   Image = 4483362458,
})
local espTab = Window:Tab({
    Title = "绘制",
    Icon = "rbxassetid://4483345998",
})

 local Button = espTab:Toggle({
    Title = "绘制Bot",
    Callback = function(besp)
       getgenv().botesp  = besp
                task.spawn(
                function()
                        while task.wait() do
                                ClearESP('AI_Tracker')
                                if not getgenv().botesp then
                                        break
                                end
                                pcall(function()
                                        local GamePlayers = workspace.Game.Players
                                        for i, v in pairs(GamePlayers:GetChildren()) do
                                                if not game.Players:FindFirstChild(v.Name) then
                                                        Simple_Create(v.HumanoidRootPart, v.Name, "AI_Tracker")
                                                end
                                        end
                                end)
                        end
                end
            )
    end,
})
 local Button = espTab:Toggle({
    Title = "绘制倒地",
    Callback = function(desp)
          getgenv().downesp = desp
                task.spawn(
                function()
                        while task.wait() do
                                ClearESP('Downed_ESP')
                                if not getgenv().downesp then
                                        break
                                end
                                pcall(function()
                                        local GamePlayers = workspace:WaitForChild("Game", 1337).Players
                                        for i, v in pairs(GamePlayers:GetChildren()) do
                                                if v:GetAttribute('Downed') then
                                                        Simple_Create(v.HumanoidRootPart, '倒地玩家: ' .. v.Name, "Downed_ESP")
                                                end
                                        end
                                end)
                        end
                end
            )
    end,
})
Rayfield:Notify({
   Title = "加载中…5/9",
   Content = "绘制已加载!",
   Duration = 2,
   Image = 4483362458,
})
 local TPTab = Window:Tab({
    Title = "服务器",
    Icon = "rbxassetid://7734053426",
})
TPTab:Section({ 
    Title = "目标传送!",
    TextSize = 22,
})
TPTab:Button({
    Title = "传送到倒地玩家",
    Callback = function()
for i, v in next, workspace.Game.Players:GetChildren() do
                        if v:GetAttribute('Downed') then
                                pcall(function()
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position)
                                end)
                        end
                end
    end
})
TPTab:Button({
    Title = "传送到目标地点(可以做任务)",
    Callback = function()
hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
                if workspace.Game.Map.Parts:FindFirstChild("Objectives") then
                        for i, v in next, workspace.Game.Map.Parts.Objectives:GetChildren() do
                                if v.IsA(v, "Model") then
                                        hrp.CFrame = CFrame.new(v:FindFirstChildWhichIsA("BasePart").Position)
                                end
                        end
                end
    end
})

TPTab:Section({ 
    Title = "服务器传送!",
    TextSize = 22,
})
TPTab:Button({
    Title = "主游戏",
    Callback = function()
        local TeleportService = game:GetService('TeleportService')
        GameId = 9872472334
        TeleportService:Teleport(GameId, game.Players.LocalPlayer)
    end
})
TPTab:Button({
    Title = "非正式",
    Callback = function()
        local TeleportService = game:GetService('TeleportService')
        GameId = 10662542523
        TeleportService:Teleport(GameId, game.Players.LocalPlayer)
    end
})
TPTab:Button({
    Title = "社交",
    Callback = function()
        local TeleportService = game:GetService('TeleportService')
        GameId = 10324347967
        TeleportService:Teleport(GameId, game.Players.LocalPlayer)
    end
})
TPTab:Button({
    Title = "大团队",
    Callback = function()
        local TeleportService = game:GetService('TeleportService')
        GameId = 10324346056
        TeleportService:Teleport(GameId, game.Players.LocalPlayer)
    end
})
TPTab:Button({
    Title = "玩家死亡赛",
    Callback = function()
        local TeleportService = game:GetService('TeleportService')
        GameId = 110539706691
        TeleportService:Teleport(GameId, game.Players.LocalPlayer)
    end
})
TPTab:Button({
    Title = "仅限VC",
    Callback = function()
        local TeleportService = game:GetService('TeleportService')
        GameId = 10808838353
        TeleportService:Teleport(GameId, game.Players.LocalPlayer)
    end
})
Rayfield:Notify({
   Title = "加载中…7/9",
   Content = "服务器已加载!",
   Duration = 2,
   Image = 4483362458,
})
local MPTab = Window:Tab({
    Title = "其他功能",
    Icon = "box",
})
local Button = MPTab:Toggle({
    Title = "刷生存",
    Callback = function(bbb)
        getgenv().breakbots = bbb
                bb()
    end,
})
local Button = MPTab:Toggle({
    Title = "没有倒地声音",
    Callback = function(down)
        getgenv().annoydowned = down
                annoydown()
    end,
})
local Button = MPTab:Toggle({
    Title = "工具无限使用耐久",
    Callback = function(state)
        getgenv().tspam = callback
                while tspam and task.wait() do
                        if not tspam then
                                break
                        end
                        for i, v in next, workspace.Game.Players:GetChildren() do
                                if v and v:FindFirstChild('Equip') then
                                        v:FindFirstChild('Equip'):InvokeServer(2)
                                        continue
                                else
                                        continue
                                end
                        end
                end
    end,
})
Rayfield:Notify({
   Title = "加载中…8/9",
   Content = "其他功能已加载!",
   Duration = 2,
   Image = 4483362458,
})
local WindowTab = Window:Tab({
    Title = "设置",
    Icon = "settings",
})

WindUI:AddTheme({
    Name = "Halloween",

    Accent = "#331400",
    Outline = "#400000",

    Text = "#EAEAEA",
    PlaceholderText = "#AAAAAA"
})

WindUI:SetTheme("Rose")

local HttpService = game:GetService("HttpService")

local folderPath = "WindUI"
makefolder(folderPath)

local function SaveFile(fileName, data)
    local filePath = folderPath .. "/" .. fileName .. ".json"
    local jsonData = HttpService:JSONEncode(data)
    writefile(filePath, jsonData)
end

local function LoadFile(fileName)
    local filePath = folderPath .. "/" .. fileName .. ".json"
    if isfile(filePath) then
        local jsonData = readfile(filePath)
        return HttpService:JSONDecode(jsonData)
    end
end

local function ListFiles()
    local files = {}
    for _, file in ipairs(listfiles(folderPath)) do
        local fileName = file:match("([^/]+)%.json$")
        if fileName then
            table.insert(files, fileName)
        end
    end
    return files
end

WindowTab:Section({ Title = "个性设置" })

local themeValues = {}
for name, _ in pairs(WindUI:GetThemes()) do
    table.insert(themeValues, name)
end

local themeDropdown = WindowTab:Dropdown({
    Title = "选择主题",
    Multi = false,
    AllowNone = false,
    Value = nil,
    Values = themeValues,
    Callback = function(theme)
        WindUI:SetTheme(theme)
            WindUI:Notify({
            Title = "您选择了",
            Content = "切换到主题: "..theme,
            Duration = 5,
        })
    end
})
themeDropdown:Select(WindUI:GetCurrentTheme())

local ToggleTransparency = WindowTab:Toggle({
    Title = "是否透明",
    Callback = function(e)
        Window:ToggleTransparency(e)
    end,
    Value = WindUI:GetTransparency()
})

WindowTab:Section({ Title = "创建文件" })

local fileNameInput = ""
WindowTab:Input({
    Title = "文件名称",
    PlaceholderText = "输入",
    Callback = function(text)
        fileNameInput = text
                WindUI:Notify({
            Title = "提示",
            Content = "已创建文件: "..text,
            Duration = 5,
        })
    end
})

WindowTab:Button({
    Title = "创建文件",
    Callback = function()
        if fileNameInput ~= "" then
            SaveFile(fileNameInput, { Transparent = WindUI:GetTransparency(), Theme = WindUI:GetCurrentTheme() })
        end
    end
})

WindowTab:Section({ Title = "加载文件" })

local filesDropdown
local files = ListFiles()

filesDropdown = WindowTab:Dropdown({
    Title = "选择文件",
    Multi = false,
    AllowNone = true,
    Values = files,
    Callback = function(selectedFile)
        fileNameInput = selectedFile
                WindUI:Notify({
            Title = "提示",
            Content = "您已选择: "..selectedFile,
            Duration = 5,
        })
    end
})

WindowTab:Button({
    Title = "加载选择的文件",
    Callback = function()
        if fileNameInput ~= "" then
            local data = LoadFile(fileNameInput)
            if data then
                WindUI:Notify({
                    Title = "文件已加载!",
                    Content = "加载位置: " .. HttpService:JSONEncode(data),
                    Duration = 5,
                })
                if data.Transparent then 
                    Window:ToggleTransparency(data.Transparent)
                    ToggleTransparency:SetValue(data.Transparent)
                end
                if data.Theme then WindUI:SetTheme(data.Theme) end
            end
        end
    end
})

WindowTab:Button({
    Title = "覆盖当前文件(如果你选错了就覆盖)",
    Callback = function()
        if fileNameInput ~= "" then
            SaveFile(fileNameInput, { Transparent = WindUI:GetTransparency(), Theme = WindUI:GetCurrentTheme() })
        end
    end
})

WindowTab:Button({
    Title = "刷新列表",
    Callback = function()
        filesDropdown:Refresh(ListFiles())
    end
})
Rayfield:Notify({
   Title = "加载中…9/9!",
   Content = "设置已加载!",
   Duration = 2,
   Image = 4483362458,
})
game:GetService("Players").PlayerAdded:Connect(function(Player)
    Player.CharacterAdded:Connect(function(Char)
        if Highlights_Active then
            ESP:AddOutline(Char)
            ESP:AddNameTag(Char)
        end
    end)
end)
    if GodMode_Enabled then
        Hum.Parent = nil;
        Hum.Parent = Char;
    end

local FindAI = function()
    for _,v in pairs(WorkspacePlayers:GetChildren()) do
        if not Players:FindFirstChild(v.Name) then
            return v
        end
    end
end


local GetDownedPlr = function()
    for i,v in pairs(WorkspacePlayers:GetChildren()) do
        if v:GetAttribute("Downed") then
            return v
        end
    end
end

--Shitty Auto farm 
local revive = function()
    local downedplr = GetDownedPlr()
    if downedplr ~= nil and downedplr:FindFirstChild('HumanoidRootPart') then
        task.spawn(function()
            while task.wait() do
                if localplayer.Character then
                    workspace.Game.Settings:SetAttribute("ReviveTime", 2.2)
                    localplayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(downedplr:FindFirstChild('HumanoidRootPart').Position.X, downedplr:FindFirstChild('HumanoidRootPart').Position.Y + 3, downedplr:FindFirstChild('HumanoidRootPart').Position.Z)
                    task.wait()
                    game:GetService("ReplicatedStorage").Events.Revive.RevivePlayer:FireServer(tostring(downedplr), false)
                    task.wait(4.5)
                    game:GetService("ReplicatedStorage").Events.Revive.RevivePlayer:FireServer(tostring(downedplr), true)
                    game:GetService("ReplicatedStorage").Events.Revive.RevivePlayer:FireServer(tostring(downedplr), true)
                    game:GetService("ReplicatedStorage").Events.Revive.RevivePlayer:FireServer(tostring(downedplr), true)
                    break
                end
            end
        end)
    end
end

--Kiriot
Esp:AddObjectListener(WorkspacePlayers, {
    Color =  Color3.fromRGB(255,0,0),
    Type = "Model",
    PrimaryPart = function(obj)
        local hrp = obj:FindFirstChild('HRP')
        while not hrp do
            wait()
            hrp = obj:FindFirstChild('HRP')
        end
        return hrp
    end,
    Validator = function(obj)
        return not game.Players:GetPlayerFromCharacter(obj)
    end,
    CustomName = function(obj)
        return '[AI] '..obj.Name
    end,
    IsEnabled = "NPCs",
})

--[[Esp:AddObjectListener(game:GetService("Workspace").Game.Effects.Tickets, {
    CustomName = "Ticket",
    Color = Color3.fromRGB(41,180,255),
    IsEnabled = "TicketEsp"??!
})]]

--Tysm CJStylesOrg
Esp.Overrides.GetColor = function(char)
   local GetPlrFromChar = Esp:GetPlrFromChar(char)
   if GetPlrFromChar then
       if Settings.Downedplayeresp and GetPlrFromChar.Character:GetAttribute("Downed") then
           return Settings.DownedColor
       end
   end
   return Settings.PlayerColor
end

local old
old = hookmetamethod(game,"__namecall",newcclosure(function(self,...)
    local Args = {...}
    local method = getnamecallmethod()
    if tostring(self) == 'Communicator' and method == "InvokeServer" and Args[1] == "update" then
        return Settings.Speed, Settings.Jump 
    end
    return old(self,...)
end))

local formatNumber = (function(value) -- //Credits: https://devforum.roblox.com/t/formatting-a-currency-label-to-include-commas/413670/3
        value = tostring(value)
        return value:reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
end)

function Format(Int) -- // Credits: https://devforum.roblox.com/t/converting-secs-to-hsec/146352
        return string.format("%02i", Int)
end

function convertToHMS(Seconds)
        local Minutes = (Seconds - Seconds%60)/60
        Seconds = Seconds - Minutes*60
        local Hours = (Minutes - Minutes%60)/60
        Minutes = Minutes - Hours*60
        return Format(Hours).."H "..Format(Minutes).."M "..Format(Seconds)..'S'
end

task.spawn(function()
    while task.wait(1) do
        --if Settings.TicketFarm then
        --    Settings.stats.TicketFarm.duration += 1
        --end
        if Settings.moneyfarm then
            Settings.stats.TokenFarm.duration += 1
        end 
    end
end)

--local gettickets = localplayer:GetAttribute('Tickets')
local GetTokens = localplayer:GetAttribute('Tokens')

localplayer:GetAttributeChangedSignal('Tickets'):Connect(function()
    --local tickets = tostring(gettickets - localplayer:GetAttribute('Tickets'))
    --local cleanvalue = string.split(tickets, "-")
    Settings.stats.TicketFarm.earned = cleanvalue[2]
end)

localplayer:GetAttributeChangedSignal('Tokens'):Connect(function()
    local tokens = tostring(GetTokens - localplayer:GetAttribute('Tokens'))
    local cleanvalue = string.split(tokens, "-")
    print(cleanvalue[2])
    Settings.stats.TokenFarm.earned = cleanvalue[2]
end)

localplayer:GetAttributeChangedSignal('Tokens'):Connect(function()
    local tokens = tostring(GetTokens - localplayer:GetAttribute('Tokens'))
    local cleanvalue = string.split(tokens, "-")
    print(cleanvalue[2])
    Settings.stats.TokenFarm.earned = cleanvalue[2]
end)

task.spawn(function()
    while task.wait() do
        if Settings.TicketFarm then
            TypeLabelC5:Set('Ticket Farm')
            DurationLabelC5:Set('Duration:'..convertToHMS(Settings.stats.TicketFarm.duration))
            EarnedLabelC5:Set('Earned:'.. formatNumber(Settings.stats.TicketFarm.earned))
            --TicketsLabelC5:Set('Total Tickets: '..localplayer:GetAttribute('Tickets'))

            if game.Players.LocalPlayer:GetAttribute('InMenu') ~= true and localplayer:GetAttribute('Dead') ~= true then
                for i,v in pairs(game:GetService("Workspace").Game.Effects.Tickets:GetChildren()) do
                    localplayer.Character.HumanoidRootPart.CFrame = CFrame.new(v:WaitForChild('HumanoidRootPart').Position)
                end
            else
                task.wait(2)
                game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
            end
            if localplayer.Character and localplayer.Character:GetAttribute("Downed") then
                game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
                task.wait(2)
            end
        end
    end
end)


task.spawn(function()
    while task.wait() do
        if Settings.AutoRespawn then
             if localplayer.Character and localplayer.Character:GetAttribute("Downed") then
                game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
             end
        end

        if Settings.NoCameraShake then
            localplayer.PlayerScripts.CameraShake.Value = CFrame.new(0,0,0) * CFrame.new(0,0,0)
        end
        if Settings.moneyfarm then
            TypeLabelC5:Set('Money Farm')
            DurationLabelC5:Set('Duration:'..convertToHMS(Settings.stats.TokenFarm.duration))
            EarnedLabelC5:Set('Earned:'.. formatNumber(Settings.stats.TokenFarm.earned))
            --TicketsLabelC5:Set('Total Tokens: '..formatNumber(localplayer:GetAttribute('Tokens')))

            if localplayer:GetAttribute("InMenu") and localplayer:GetAttribute("Dead") ~= true then
                game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
            end
            if localplayer.Character and localplayer.Character:GetAttribute("Downed") then
                game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
                task.wait(3)
            else
                revive()
                task.wait(1)
            end

        end
        if Settings.moneyfarm == false and Settings.afkfarm and localplayer.Character:FindFirstChild('HumanoidRootPart') ~= nil then
            localplayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(6007, 7005, 8005)
        end
    end
end)

--Infinite yield's Anti afk
local GC = getconnections or get_signal_cons
        if GC then
                for i,v in pairs(GC(localplayer.Idled)) do
                        if v["Disable"] then
                                v["Disable"](v)
                        elseif v["Disconnect"] then
                                v["Disconnect"](v)
                        end
                end
        else
                localplayer.Idled:Connect(function()
                        local VirtualUser = game:GetService("VirtualUser")
                        VirtualUser:CaptureController()
                        VirtualUser:ClickButton2(Vector2.new())
                end)
        end

Rayfield:Notify({
   Title = "加载完成✅",
   Content = "欢迎你的使用!",
   Duration = 6.5,
   Image = 4483362458,
})
           --[[]
          SB
         全家
        死光
       看我
      全家
     死光
    Q3
   E4
  他
⬇️
不
算
[]]
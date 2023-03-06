repeat wait() until game:IsLoaded()
repeat wait() until game:GetService("Players")
repeat wait() until game:GetService("Players").LocalPlayer
repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui
repeat wait() until game:GetService("ReplicatedStorage").Effect.Container

if not game:IsLoaded() then
	local GameLoadGui = Instance.new("Message",workspace)
	GameLoadGui.Text = "Wait Game Loading"
	game.Loaded:Wait()
	GameLoadGui:Destroy()
	task.wait(10)
end

repeat wait()
    pcall(function()
        if _G.Team == "Pirates" then
            for i,v in pairs({"MouseButton1Click","MouseButton1Down","Activated"}) do
                for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton[v])) do
                    v.Function()
                end
            end
        elseif _G.Team == "Marines" then
            for i,v in pairs({"MouseButton1Click","MouseButton1Down","Activated"}) do
                for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton[v])) do
                    v.Function()
                end
            end
        else
            for i,v in pairs({"MouseButton1Click","MouseButton1Down","Activated"}) do
                for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton[v])) do
                    v.Function()
                end
            end
        end
    end)
until game.Players.localPlayer.Neutral == false

-- [ Shadow Hub Script Configs! ]

_G.Settings = {
    Main = {
        -- [ Main ]
        ["Auto Farm Level"] = false,
        ["Mob Aura"] = false,
        -- [ Mastery ]
        ["Auto Farm Fruit"] = false,
        ["Auto Farm Gun"] = false,
        -- [ Second Sea ]
        ["Auto Second Sea"] = false,
        -- [ Third Sea ]
        ["Auto Fully Third Sea"] = false,
        -- [ Saber ]
        ["Auto Fully Saber"] = false,
        -- [ Eltie Hunter ]
        ["Auto Elite Hunter"] = false,
        -- [ Cake Prince ]
        ["Auto Cake Prince"] = false,
        -- [ Dough King v2 ] 
        ["Auto Dough King V2"] = false,
        -- [ Rainbow Haki ]
        ["Auto Rainbow Haki"] = false,
        -- [ Bone ]
        ["Auto Trade Bone"] = false,
        -- [ Buy Legendary Sword ]
        ["Auto Legendary Sword"] = false,
        -- [ Buy Legendary Haki ]
        ["Auto Color Haki"] = false,
        -- [ Automatics Second Sea ]
        ["Auto Swan Glasses"] = false,
        -- [ Ken V2 ]
        ["Auto Ken-Haki V2"] = false,
        -- [ Muskeeter Hat ]
        ["Auto Musketeer Hat"] = false,
        -- [ Holy Torch ]
        ["Auto Holy Torch"] = false,
        -- [ Serpent Bow ]
        ["Auto Serpent Bow"] = false,
        -- [ Swords ]
        ["Auto Buddy Sword"] = false,
        ["Auto Rengoku"] = false,
        ["Auto Hallow Sycthe"] = false,
        ["Auto Pole"] = false,
        ["Auto Yama"] = false,
        ["Auto Cavander"] = false,
        ["Auto Tushita"] = false,
        ["Auto Dark Dagger"] = false,
        ["Auto Rainbow Haki"] = false,
        -- [ Bartilo Quest ]
        ["Auto Bartilo Quest"] = false,
        -- [ Dark Coat ]
        ["Auto Dark Coat"] = false,
        -- [ Factory Farm]
        ["Auto Farm Factory"] = false,
        -- [ Bone Farm ]
        ["Auto Farm Bone"] = false,
        -- [ Ectoplasm ]
        ["Auto Farm Ectoplasm"] = false,
        -- [ Evo Race ]
        ["Auto Evo Race"] = false,
        -- [ Twin Hooks ]
        ["Auto Twin Hooks"] = false,
        ["Auto Training Dummy"] = false,
        -- [ Mirage Island ]
        ["Auto Mirage Island"] = false,
        -- [ Chest Tween ]
        ["Auto Farm Chests"] = false,
        ["Auto Farm Chests Fast"] = false,
    },
    Coords = {
        ["X"] = 0,
        ["Y"] = 30,
        ["Z"] = 0
    },
    Distan = {
        ["Distance Mob Aura"] = 1000,
    },
    Material = {
        ["Select Material"] = 1,
        ["Auto Farm Material"] = false
    },
    Stats = {
        ["Auto Melee"] = false,
        ["Auto Defense"] = false,
        ["Auto Sword"] = false,
        ["Auto Gun"] = false,
        ["Auto Fruit"] = false,
        ["Stats Points"] = 1,
    },
    Setting = {
        ["Weapon Tool Tip"] = "Melee",
        ["Fast Attack Delay"] = "0.1",
        ["Auto Rejoin Kick"] = true,
        ["Auto Active Buso"] = true,
        ["Bring Monster"] = true,
        ["Fast Attack"] = true,
    },
    Boss = {
        ["Select Boss"] = 1,
        ["Auto Farm Boss"] = false,
        ["Auto Boss Quest"] = true,
    },
    Mastery = {
        ["Kill Percent Mastery"] = 30,
        ["Skill Z"] = true,
        ["Skill X"] = true,
        ["Skill C"] = true,
        ["Skill V"] = true,
    },
    Melee = {
        ["Auto Death Step"] = false,
        ["Auto Super Human"] = false,
        ["Auto Shark Man Karate"] = false,
        ["Auto Electric Claw"] = false,
        ["Auto Dragon Talon"] = false,
        ["Auto God Human"] = false,
    },
    Observation = {
        ["Auto Farm Ken"] = false,
        ["Auto Farm Ken Hop"] = false,
    },
    CDKs = {
        ["Auto Cursed Dual Katana"] = false,
    },
    SoulGuis = {
        ["Auto Soul Guitar"] = false,
    },
    Players = {
        ["Select Ply"] = 1,
        ["Aimbot Gun"] = false,
        ["Fov Size Aimbot"] = 200,
        ["Show Fov"] = false,
        ["Aimbot Skill"] = false,
        ["Lock Player Aimbot"] = false,
        ["Teleport Player"] = false,
        ["Spectate Player"] = false,
        ["Kill Player Melee"] = false,
        ["Kill Player Gun"] = false,
    },
    Teleport = {
        ["Crtl Click Tp"] = false,
        ["Start Teleport Island"] = false,
    },
    Fruit = {
        ["Select Fruit"] = "",
        ["Auto Buy Fruit"] = false,
        ["Auto Buy Fruit Dealer"] = false,
        ["Auto Bring Fruit"] = false,
        ["Auto Store Fruit"] = false,
    },
    Raid = {
        ["Select Chip"] = 1,
        ["Auto Kill Aura"] = false,
        ["Auto Next Island"] = false,
        ["Auto Awaken Abilities"] = false,
    },
    Visual = {
        ["Chest Tracer"] = false,
        ["Player Tracer"] = false,
        ["Fruit Tracer"] = false,
        ["Island Tracer"] = false,
    },
    Buff = {
        ["Dodge without Cool"] = false,
        ["Infinite Ability"] = false,
        ["Infinite Geppo"] = false,
        ["Infinite Soru"] = false,
        ["Walk above Water"] = true,
    },
    Misc = {
        ["Select Buso State"] = 1,
    },
}

function LoadSettings()
    if readfile and writefile and isfile and isfolder then
        if not isfolder("Shadow Hub") then
            makefolder("Shadow Hub")
        end
        if not isfolder("Shadow Hub/Blox Fruits/") then
            makefolder("Shadow Hub/Blox Fruits/")
        end
        if not isfile("Shadow Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
            writefile("Shadow Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(_G.Settings))
        else
            local Decode = game:GetService("HttpService"):JSONDecode(readfile("Shadow Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"))
            for i,v in pairs(Decode) do
                _G.Settings[i] = v
            end
        end
    else
        return warn("Status : Undetected Executor")
    end
end

function SaveSettings()
    if readfile and writefile and isfile and isfolder then
        if not isfile("Shadow Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
            LoadSettings()
        else
            local Decode = game:GetService("HttpService"):JSONDecode(readfile("Shadow Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"))
            local Array = {}
            for i,v in pairs(_G.Settings) do
                Array[i] = v
            end
            writefile("Shadow Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(Array))
        end
    else
        return warn("Status : Undetected Executor")
    end
end

LoadSettings()

-- [ CheckQuest ]

if game.PlaceId == 2753915549 then
    World1 = true
elseif game.PlaceId == 4442272183 then
    World2 = true
elseif game.PlaceId == 7449423635 then
    World3 = true
end

function CheckQuest()
    local MyLevel = game.Players.LocalPlayer.Data.Level.Value
    if World1 then
        if MyLevel == 1 or MyLevel <= 9 then
            LevelFarm = 1

            Monster = "Bandit [Lv. 5]"
            QuestName = "BanditQuest1"

            LevelQuest = 1
            NameMon = "Bandit"

            CFrameMon = CFrame.new(1145, 17, 1634)
            VectorMon = Vector3.new(1145, 17, 1634)

            CFrameQuest = CFrame.new(1060, 17, 1547)
            VectorQuest = Vector3.new(1060, 17, 1547)
        elseif MyLevel == 10 or MyLevel <= 14 then
            LevelFarm = 2

            Monster = "Monkey [Lv. 14]"
            QuestName = "JungleQuest"

            LevelQuest = 1
            NameMon = "Monkey"

            CFrameMon = CFrame.new(-1496, 39, 35)
            VectorMon = Vector3.new(-1496, 39, 35)

            CFrameQuest = CFrame.new(-1602, 37, 152)
            VectorQuest = Vector3.new(-1602, 37, 152)
        elseif MyLevel == 15 or MyLevel <= 29 then
            LevelFarm = 3

            Monster = "Gorilla [Lv. 20]"
            QuestName = "JungleQuest"

            LevelQuest = 2
            NameMon = "Gorilla"

            CFrameMon = CFrame.new(-1237, 6, -486)
            VectorMon = Vector3.new(-1237, 7, -486)

            CFrameQuest = CFrame.new(-1602, 37, 152)
            VectorQuest = Vector3.new(-1602, 37, 152)
        elseif MyLevel == 30 or MyLevel <= 39 then
            LevelFarm = 4

            Monster = "Pirate [Lv. 35]"
            QuestName = "BuggyQuest1"

            LevelQuest = 1
            NameMon = "Pirate"

            CFrameMon = CFrame.new(-1115, 14, 3938)
            VectorMon = Vector3.new(-1115, 14, 3938)

            CFrameQuest = CFrame.new(-1140, 5, 3828)
            VectorQuest = Vector3.new(-1140, 5, 3828)
        elseif MyLevel == 40 or MyLevel <= 59 then
            LevelFarm = 5

            Monster = "Brute [Lv. 45]"
            QuestName = "BuggyQuest1"

            LevelQuest = 2
            NameMon = "Brute"

            CFrameMon = CFrame.new(-1145, 15, 4350)
            VectorMon = Vector3.new(-1146, 15, 4350)

            CFrameQuest = CFrame.new(-1140, 5, 3828)
            VectorQuest = Vector3.new(-1140, 5, 3828)
        elseif MyLevel == 60 or MyLevel <= 74 then
            LevelFarm = 6

            Monster = "Desert Bandit [Lv. 60]"
            QuestName = "DesertQuest"

            LevelQuest = 1
            NameMon = "Desert Bandit"

            CFrameMon = CFrame.new(932, 7, 4484)
            VectorMon = Vector3.new(932, 7, 4484)

            CFrameQuest = CFrame.new(897, 7, 4388)
            VectorQuest = Vector3.new(897, 7, 4388)
        elseif MyLevel == 75 or MyLevel <= 89 then
            LevelFarm = 7

            Monster = "Desert Officer [Lv. 70]"
            QuestName = "DesertQuest"

            LevelQuest = 2
            NameMon = "Desert Officer"

            CFrameMon = CFrame.new(1572, 10, 4373)
            VectorMon = Vector3.new(1572, 10, 4373)

            CFrameQuest = CFrame.new(897, 7, 4388)
            VectorQuest = Vector3.new(897, 7, 4388)
        elseif MyLevel == 90 or MyLevel <= 99 then
            LevelFarm = 8

            Monster = "Snow Bandit [Lv. 90]"
            QuestName = "SnowQuest"

            LevelQuest = 1
            NameMon = "Snow Bandits"

            CFrameMon = CFrame.new(1289, 150, -1442)
            VectorMon = Vector3.new(1289, 106, -1442)

            CFrameQuest = CFrame.new(1386, 87, -1297)
            VectorQuest = Vector3.new(1386, 87, -1297)
        elseif MyLevel == 100 or MyLevel <= 119 then
            LevelFarm = 9

            Monster = "Snowman [Lv. 100]"
            QuestName = "SnowQuest"

            LevelQuest = 2
            NameMon = "Snowman"

            CFrameMon = CFrame.new(1289, 150, -1442)
            VectorMon = Vector3.new(1289, 106, -1442)

            CFrameQuest = CFrame.new(1386, 87, -1297)
            VectorQuest = Vector3.new(1386, 87, -1297)
        elseif MyLevel == 120 or MyLevel <= 149 then
            LevelFarm = 10

            Monster = "Chief Petty Officer [Lv. 120]"
            QuestName = "MarineQuest2"

            LevelQuest = 1
            NameMon = "Chief Petty Officer"

            CFrameMon = CFrame.new(-4855, 23, 4308)
            VectorMon = Vector3.new(-4855, 23, 4308)

            CFrameQuest = CFrame.new(-5036, 29, 4325)
            VectorQuest = Vector3.new(-5036, 29, 4325)
        elseif MyLevel == 150 or MyLevel <= 174 then
            LevelFarm = 11

            Monster = "Sky Bandit [Lv. 150]"
            QuestName = "SkyQuest"

            LevelQuest = 1
            NameMon = "Sky Bandit"

            CFrameMon = CFrame.new(-4981, 278, -2830)
            VectorMon = Vector3.new(-4981, 278, -2830)

            CFrameQuest = CFrame.new(-4842, 718, -2623)
            VectorQuest = Vector3.new(-4842, 718, -2623)
        elseif MyLevel == 175 or MyLevel <= 189 then
            LevelFarm = 12

            Monster = "Dark Master [Lv. 175]"
            QuestName = "SkyQuest"

            LevelQuest = 2
            NameMon = "Dark Master"

            CFrameMon = CFrame.new(-5250, 389, -2272)
            VectorMon = Vector3.new(-5250, 389, -2272)

            CFrameQuest = CFrame.new(-4842, 718, -2623)
            VectorQuest = Vector3.new(-4842, 718, -2623)
        elseif MyLevel == 190 or MyLevel <= 209 then
            LevelFarm = 13

            Monster = "Prisoner [Lv. 190]"
            QuestName = "PrisonerQuest"

            LevelQuest = 1
            NameMon = "Prisoner"

            CFrameMon = CFrame.new(5411, 96, 690)
            VectorMon = Vector3.new(5411, 96, 690)

            CFrameQuest = CFrame.new(5308, 2, 474)
            VectorQuest = Vector3.new(5308, 2, 474)
        elseif MyLevel == 210 or MyLevel <= 249 then
            LevelFarm = 14

            Monster = "Dangerous Prisoner [Lv. 210]"
            QuestName = "PrisonerQuest"

            LevelQuest = 2
            NameMon = "Dangerous Prisoner"

            CFrameMon = CFrame.new(5411, 96, 690)
            VectorMon = Vector3.new(5411, 96, 690)

            CFrameQuest = CFrame.new(5308, 2, 474)
            VectorQuest = Vector3.new(5308, 2, 474)
        elseif MyLevel == 250 or MyLevel <= 299 then
            LevelFarm = 15

            Monster = "Toga Warrior [Lv. 250]"
            QuestName = "ColosseumQuest"

            LevelQuest = 1
            NameMon = "Toga Warrior"

            CFrameMon = CFrame.new(-1824, 50, -2743)
            VectorMon = Vector3.new(-1824, 50, -2743)

            CFrameQuest = CFrame.new(-1576, 8, -2985)
            VectorQuest = Vector3.new(-1576, 8, -2985)
        elseif MyLevel == 300 or MyLevel <= 329 then
            LevelFarm = 16

            Monster = "Military Soldier [Lv. 300]"
            QuestName = "MagmaQuest"

            LevelQuest = 1
            NameMon = "Military Soldier"

            CFrameMon = CFrame.new(-5408, 11, 8447)
            VectorMon = Vector3.new(-5408, 11, 8447)

            CFrameQuest = CFrame.new(-5316, 12, 8517)
            VectorQuest = Vector3.new(-5316, 12, 8517)
        elseif MyLevel == 330 or MyLevel <= 374 then
            LevelFarm = 17

            Monster = "Military Spy [Lv. 325]"
            QuestName = "MagmaQuest"

            LevelQuest = 2
            NameMon = "Military Spy"

            CFrameMon = CFrame.new(-5815, 84, 8820)
            VectorMon = Vector3.new(-5815, 84, 8820)

            CFrameQuest = CFrame.new(-5316, 12, 8517)
            VectorQuest = Vector3.new(-5316, 12, 8517)
        elseif MyLevel == 375 or MyLevel <= 399 then
            LevelFarm = 18

            Monster = "Fishman Warrior [Lv. 375]"
            QuestName = "FishmanQuest"

            LevelQuest = 1
            NameMon = "Fishman Warrior"

            CFrameMon = CFrame.new(60859, 19, 1501)
            VectorMon = Vector3.new(60859, 19, 1501)

            CFrameQuest = CFrame.new(61123, 19, 1569)
            VectorQuest = Vector3.new(61123, 19, 1569)

            if _G.Settings.Main["Auto Farm Level"] and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif MyLevel == 400 or MyLevel <= 449 then
            LevelFarm = 19

            Monster = "Fishman Commando [Lv. 400]"
            QuestName = "FishmanQuest"

            LevelQuest = 2
            NameMon = "Fishman Commando"

            CFrameMon = CFrame.new(61891, 19, 1470)
            VectorMon = Vector3.new(61891, 19, 1470)

            CFrameQuest = CFrame.new(61123, 19, 1569)
            VectorQuest = Vector3.new(61123, 19, 1569)

            if _G.Settings.Main["Auto Farm Level"] and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif MyLevel == 450 or MyLevel <= 474 then
            LevelFarm = 20

            Monster = "God's Guard [Lv. 450]"
            QuestName = "SkyExp1Quest"

            LevelQuest = 1
            NameMon = "God's Guards"

            CFrameMon = CFrame.new(-4698, 845, -1912)
            VectorMon = Vector3.new(-4698, 845, -1912)

            CFrameQuest = CFrame.new(-4722, 845, -1954)
            VectorQuest = Vector3.new(-4722, 846, -1954)

            if _G.Settings.Main["Auto Farm Level"] and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
            end
        elseif MyLevel == 475 or MyLevel <= 524 then
            LevelFarm = 21

            Monster = "Shanda [Lv. 475]"
            QuestName = "SkyExp1Quest"

            LevelQuest = 2
            NameMon = "Shanda"

            CFrameMon = CFrame.new(-7685, 5567, -502)
            VectorMon = Vector3.new(-7685, 5567, -502)

            CFrameQuest = CFrame.new(-7862, 5546, -380)
            VectorQuest = Vector3.new(-7862, 5546, -380)

            if _G.Settings.Main["Auto Farm Level"] and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            end
        elseif MyLevel == 525 or MyLevel <= 549 then
            LevelFarm = 22

            Monster = "Royal Squad [Lv. 525]"
            QuestName = "SkyExp2Quest"

            LevelQuest = 1
            NameMon = "Royal Squad"

            CFrameMon = CFrame.new(-7670, 5607, -1460)
            VectorMon = Vector3.new(-7670, 5607, -1460)

            CFrameQuest = CFrame.new(-7904, 5636, -1412)
            VectorQuest = Vector3.new(-7904, 5636, -1412)
        elseif MyLevel == 550 or MyLevel <= 624 then
            LevelFarm = 23

            Monster = "Royal Soldier [Lv. 550]"
            QuestName = "SkyExp2Quest"

            LevelQuest = 2
            NameMon = "Royal Soldier"

            CFrameMon = CFrame.new(-7828, 5607, -1744)
            VectorMon = Vector3.new(-7828, 5607, -1744)

            CFrameQuest = CFrame.new(-7904, 5636, -1412)
            VectorQuest = Vector3.new(-7904, 5636, -1412)
        elseif MyLevel == 625 or MyLevel <= 649 then
            LevelFarm = 24

            Monster = "Galley Pirate [Lv. 625]"
            QuestName = "FountainQuest"

            LevelQuest = 1
            NameMon = "Galley Pirate"

            CFrameMon = CFrame.new(5589, 45, 3996)
            VectorMon = Vector3.new(5589, 45, 3996)

            CFrameQuest = CFrame.new(5256, 39, 4050)
            VectorQuest = Vector3.new(5256, 39, 4050)
        elseif MyLevel >= 650 then
            LevelFarm = 25

            Monster = "Galley Captain [Lv. 650]"
            QuestName = "FountainQuest"

            LevelQuest = 2
            NameMon = "Galley Captain"

            CFrameMon = CFrame.new(5649, 39, 4936)
            VectorMon = Vector3.new(5649, 39, 4936)

            CFrameQuest = CFrame.new(5256, 39, 4050)
            VectorQuest = Vector3.new(5256, 39, 4050)
        end
    end
    if World2 then
        if MyLevel == 700 or MyLevel <= 724 then
            LevelFarm = 1

            Monster = "Raider [Lv. 700]"
            QuestName = "Area1Quest"

            LevelQuest = 1
            NameMon = "Raider"

            CFrameQuest = CFrame.new(-425, 73, 1837)
            VectorQuest = Vector3.new(-425, 73, 1837)

            CFrameMon = CFrame.new(-746, 39, 2390)
            VectorMon = Vector3.new(-746, 39, 2389)
        elseif MyLevel == 725 or MyLevel <= 774 then
            LevelFarm = 2

            Monster = "Mercenary [Lv. 725]"
            QuestName = "Area1Quest"

            LevelQuest = 2
            NameMon = "Mercenary"

            CFrameQuest = CFrame.new(-425, 73, 1837)
            VectorQuest = Vector3.new(-425, 73, 1837)

            CFrameMon = CFrame.new(-874, 141, 1312)
            VectorMon = Vector3.new(-874, 141, 1312)
        elseif MyLevel == 775 or MyLevel <= 799 then
            LevelFarm = 3

            Monster = "Swan Pirate [Lv. 775]"
            QuestName = "Area2Quest"

            LevelQuest = 1
            NameMon = "Swan Pirate"

            CFrameQuest = CFrame.new(634, 73, 918)
            VectorQuest = Vector3.new(634, 73, 918)

            CFrameMon = CFrame.new(878, 122, 1235)
            VectorMon = Vector3.new(878, 122, 1235)
        elseif MyLevel == 800 or MyLevel <= 874 then
            LevelFarm = 4

            Monster = "Factory Staff [Lv. 800]"
            QuestName = "Area2Quest"

            LevelQuest = 2
            NameMon = "Factory Staff"

            CFrameQuest = CFrame.new(634, 73, 918)
            VectorQuest = Vector3.new(634, 73, 918)

            CFrameMon = CFrame.new(295, 73, -56)
            VectorMon = Vector3.new(295, 73, -56)
        elseif MyLevel == 875 or MyLevel <= 899 then
            LevelFarm = 5

            Monster = "Marine Lieutenant [Lv. 875]"
            QuestName = "MarineQuest3"

            LevelQuest = 1
            NameMon = "Marine Lieutenant"

            CFrameMon = CFrame.new(-2806, 73, -3038)
            VectorMon = Vector3.new(-2806, 73, -3038)

            CFrameQuest = CFrame.new(-2443, 73, -3219)
            VectorQuest = Vector3.new(-2443, 73, -3219)
        elseif MyLevel == 900 or MyLevel <= 949 then
            LevelFarm = 6

            Monster = "Marine Captain [Lv. 900]"
            QuestName = "MarineQuest3"

            LevelQuest = 2
            NameMon = "Marine Captain"

            CFrameMon = CFrame.new(-1869, 73, -3320)
            VectorMon = Vector3.new(-1869, 73, -3320)

            CFrameQuest = CFrame.new(-2443, 73, -3219)
            VectorQuest = Vector3.new(-2443, 73, -3219)
        elseif MyLevel == 950 or MyLevel <= 974 then
            LevelFarm = 7

            Monster = "Zombie [Lv. 950]"
            QuestName = "ZombieQuest"

            LevelQuest = 1
            NameMon = "Zombie"

            CFrameMon = CFrame.new(-5736, 126, -728)
            VectorMon = Vector3.new(-5736, 126, -728)

            CFrameQuest = CFrame.new(-5494, 49, -795)
            VectorQuest = Vector3.new(-5494, 49, -794)
        elseif MyLevel == 975 or MyLevel <= 999 then
            LevelFarm = 8

            Monster = "Vampire [Lv. 975]"
            QuestName = "ZombieQuest"

            LevelQuest = 2
            NameMon = "Vampire"

            CFrameMon = CFrame.new(-6033, 7, -1317)
            VectorMon = Vector3.new(-6033, 7, -1317)

            CFrameQuest = CFrame.new(-5494, 49, -795)
            VectorQuest = Vector3.new(-5494, 49, -795)
        elseif MyLevel == 1000 or MyLevel <= 1049 then
            LevelFarm = 9

            Monster = "Snow Trooper [Lv. 1000]"
            QuestName = "SnowMountainQuest"

            LevelQuest = 1
            NameMon = "Snow Trooper"

            CFrameMon = CFrame.new(478, 402, -5362)
            VectorMon = Vector3.new(478, 402, -5362)

            CFrameQuest = CFrame.new(605, 402, -5371)
            VectorQuest = Vector3.new(605, 402, -5371)
        elseif MyLevel == 1050 or MyLevel <= 1099 then
            LevelFarm = 10

            Monster = "Winter Warrior [Lv. 1050]"
            QuestName = "SnowMountainQuest"

            LevelQuest = 2
            NameMon = "Winter Warrior"

            CFrameMon = CFrame.new(1157, 430, -5188)
            VectorMon = Vector3.new(1157, 430, -5188)

            CFrameQuest = CFrame.new(605, 402, -5371)
            VectorQuest = Vector3.new(605, 402, -5371)
        elseif MyLevel == 1100 or MyLevel <= 1124 then
            LevelFarm = 11

            Monster = "Lab Subordinate [Lv. 1100]"
            QuestName = "IceSideQuest"

            LevelQuest = 1
            NameMon = "Lab Subordinate"

            CFrameMon = CFrame.new(-5782, 42, -4484)
            VectorMon = Vector3.new(-5782, 42, -4484)

            CFrameQuest = CFrame.new(-6060, 16, -4905)
            VectorQuest = Vector3.new(-6060, 16, -4905)
        elseif MyLevel == 1125 or MyLevel <= 1174 then
            LevelFarm = 12

            Monster = "Horned Warrior [Lv. 1125]"
            QuestName = "IceSideQuest"

            LevelQuest = 2
            NameMon = "Horned Warrior"

            CFrameMon = CFrame.new(-6406, 24, -5805)
            VectorMon = Vector3.new(-6406, 24, -5805)

            CFrameQuest = CFrame.new(-6060, 16, -4905)
            VectorQuest = Vector3.new(-6060, 16, -4905)
        elseif MyLevel == 1175 or MyLevel <= 1199 then
            LevelFarm = 13

            Monster = "Magma Ninja [Lv. 1175]"
            QuestName = "FireSideQuest"

            LevelQuest = 1
            NameMon = "Magma Ninja"

            CFrameMon = CFrame.new(-5428, 78, -5959)
            VectorMon = Vector3.new(-5428, 78, -5959)

            CFrameQuest = CFrame.new(-5430, 16, -5295)
            VectorQuest = Vector3.new(-5430, 16, -5296)
        elseif MyLevel == 1200 or MyLevel <= 1249 then
            LevelFarm = 14

            Monster = "Lava Pirate [Lv. 1200]"
            QuestName = "FireSideQuest"

            LevelQuest = 2
            NameMon = "Lava Pirate"

            CFrameMon = CFrame.new(-5270, 42, -4800)
            VectorMon = Vector3.new(-5270, 42, -4800)

            CFrameQuest = CFrame.new(-5430, 16, -5295)
            VectorQuest = Vector3.new(-5430, 16, -5296)
        elseif MyLevel == 1250 or MyLevel <= 1274 then
            LevelFarm = 15

            Monster = "Ship Deckhand [Lv. 1250]"
            QuestName = "ShipQuest1"

            LevelQuest = 1
            NameMon = "Ship Deckhand"

            CFrameMon = CFrame.new(1198, 126, 33031)
            VectorMon = Vector3.new(1198, 126, 33031)

            CFrameQuest = CFrame.new(1038, 125, 32913)
            VectorQuest = Vector3.new(1038, 125, 32913)

            if _G.Settings.Main["Auto Farm Level"] and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1275 or MyLevel <= 1299 then
            LevelFarm = 16

            Monster = "Ship Engineer [Lv. 1275]"
            QuestName = "ShipQuest1"

            LevelQuest = 2
            NameMon = "Ship Engineer"

            CFrameMon = CFrame.new(918, 44, 32787)
            VectorMon = Vector3.new(918, 44, 32787)

            CFrameQuest = CFrame.new(1038, 125, 32913)
            VectorQuest = Vector3.new(1038, 125, 32913)

            if _G.Settings.Main["Auto Farm Level"] and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1300 or MyLevel <= 1324 then
            LevelFarm = 17

            Monster = "Ship Steward [Lv. 1300]"
            QuestName = "ShipQuest2"

            LevelQuest = 1
            NameMon = "Ship Steward"

            CFrameMon = CFrame.new(915, 130, 33419)
            VectorMon = Vector3.new(915, 130, 33419)

            CFrameQuest = CFrame.new(969, 125, 33245)
            VectorQuest = Vector3.new(969, 125, 33245)

            if _G.Settings.Main["Auto Farm Level"] and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1325 or MyLevel <= 1349 then
            LevelFarm = 18

            Monster = "Ship Officer [Lv. 1325]"
            QuestName = "ShipQuest2"

            LevelQuest = 2
            NameMon = "Ship Officer"

            CFrameMon = CFrame.new(916, 181, 33335)
            VectorMon = Vector3.new(916, 181, 33335)

            CFrameQuest = CFrame.new(969, 125, 33245)
            VectorQuest = Vector3.new(969, 125, 33245)
            
            if _G.Settings.Main["Auto Farm Level"] and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1350 or MyLevel <= 1374 then
            LevelFarm = 19

            Monster = "Arctic Warrior [Lv. 1350]"
            QuestName = "FrostQuest"

            LevelQuest = 1
            NameMon = "Arctic Warrior"

            CFrameMon = CFrame.new(6038, 29, -6231)
            VectorMon = Vector3.new(6038, 29, -6231)

            VectorQuest = Vector3.new(5669, 28, -6482)
            CFrameQuest = CFrame.new(5669, 28, -6482)

            if _G.Settings.Main["Auto Farm Level"] and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
            end
        elseif MyLevel == 1375 or MyLevel <= 1424 then
            LevelFarm = 20

            Monster = "Snow Lurker [Lv. 1375]"
            QuestName = "FrostQuest"

            LevelQuest = 2
            NameMon = "Snow Lurker"

            CFrameMon = CFrame.new(5560, 42, -6826)
            VectorMon = Vector3.new(5560, 42, -6826)

            VectorQuest = Vector3.new(5669, 28, -6482)
            CFrameQuest = CFrame.new(5669, 28, -6482)
        elseif MyLevel == 1425 or MyLevel <= 1449 then
            LevelFarm = 21

            Monster = "Sea Soldier [Lv. 1425]"
            QuestName = "ForgottenQuest"

            LevelQuest = 1
            NameMon = "Sea Soldier"

            CFrameMon = CFrame.new(-3022, 16, -9722)
            VectorMon = Vector3.new(-3022, 16, -9722)

            CFrameQuest = CFrame.new(-3054, 237, -10148)
            VectorQuest = Vector3.new(-3054, 237, -10148)
        elseif MyLevel >= 1450 then
            LevelFarm = 22

            Monster = "Water Fighter [Lv. 1450]"
            QuestName = "ForgottenQuest"

            LevelQuest = 2
            NameMon = "Water Fighter"

            CFrameMon = CFrame.new(-3385, 239, -10542)
            VectorMon = Vector3.new(-3385, 239, -10542)

            CFrameQuest = CFrame.new(-3054, 237, -10148)
            VectorQuest = Vector3.new(-3054, 237, -10148)
        end
    end
    if World3 then
        if MyLevel == 1500 or MyLevel <= 1524 then
            LevelFarm = 1

            Monster = "Pirate Millionaire [Lv. 1500]"
            QuestName = "PiratePortQuest"

            LevelQuest = 1
            NameMon = "Pirate"

            CFrameMon = CFrame.new(-373, 75, 5550)
            VectorMon = Vector3.new(-373, 75, 5550)

            CFrameQuest = CFrame.new(-288, 44, 5576)
            VectorQuest = Vector3.new(-288, 44, 5576)
        elseif MyLevel == 1525 or MyLevel <= 1574 then
            LevelFarm = 2

            Monster = "Pistol Billionaire [Lv. 1525]"
            QuestName = "PiratePortQuest"

            LevelQuest = 2
            NameMon = "Pistol"

            CFrameMon = CFrame.new(-469, 74, 5904)
            VectorMon = Vector3.new(-469, 74, 5904)

            CFrameQuest = CFrame.new(-288, 44, 5576)
            VectorQuest = Vector3.new(-288, 44, 5576)
        elseif MyLevel == 1575 or MyLevel <= 1599 then
            LevelFarm = 3

            Monster = "Dragon Crew Warrior [Lv. 1575]"
            QuestName = "AmazonQuest"

            LevelQuest = 1
            NameMon = "Warrior"

            CFrameMon = CFrame.new(6339, 52, -1213)
            VectorMon = Vector3.new(6338, 52, -1213)

            CFrameQuest = CFrame.new(5835, 52, -1105)
            VectorQuest = Vector3.new(5835, 52, -1105)
        elseif MyLevel == 1600 or MyLevel <= 1624 then
            LevelFarm = 4

            Monster = "Dragon Crew Archer [Lv. 1600]"
            QuestName = "AmazonQuest"

            LevelQuest = 2
            NameMon = "Archer"

            CFrameMon = CFrame.new(6594, 383, 139)
            VectorMon = Vector3.new(6594, 383, 139)

            CFrameQuest = CFrame.new(5835, 52, -1105)
            VectorQuest = Vector3.new(5835, 52, -1105)
        elseif MyLevel == 1625 or MyLevel <= 1649 then
            LevelFarm = 5

            Monster = "Female Islander [Lv. 1625]"
            QuestName = "AmazonQuest2"

            LevelQuest = 1
            NameMon = "Female"

            CFrameMon = CFrame.new(5308, 819, 1047)
            VectorMon = Vector3.new(5308, 819, 1047)

            CFrameQuest = CFrame.new(5443, 602, 751)
            VectorQuest = Vector3.new(5443, 602, 751)
        elseif MyLevel == 1650 or MyLevel <= 1699 then
            LevelFarm = 6

            Monster = "Giant Islander [Lv. 1650]"
            QuestName = "AmazonQuest2"

            LevelQuest = 2
            NameMon = "Giant Islanders"

            CFrameMon = CFrame.new(4951, 602, -68)
            VectorMon = Vector3.new(4951, 602, -68)

            CFrameQuest = CFrame.new(5443, 602, 751)
            VectorQuest = Vector3.new(5443, 602, 751)
        elseif MyLevel == 1700 or MyLevel <= 1724 then
            LevelFarm = 7

            Monster = "Marine Commodore [Lv. 1700]"
            QuestName = "MarineTreeIsland"

            LevelQuest = 1
            NameMon = "Marine Commodore"

            CFrameMon = CFrame.new(2447, 73, -7470)
            VectorMon = Vector3.new(2447, 73, -7470)

            CFrameQuest = CFrame.new(2180, 29, -6737)
            VectorQuest = Vector3.new(2180, 29, -6737)
        elseif MyLevel == 1725 or MyLevel <= 1774 then
            LevelFarm = 8

            Monster = "Marine Rear Admiral [Lv. 1725]"
            QuestName = "MarineTreeIsland"

            LevelQuest = 2
            NameMon = "Marine Rear Admiral"

            CFrameMon = CFrame.new(3671, 161, -6932)
            VectorMon = Vector3.new(3671, 161, -6932)

            CFrameQuest = CFrame.new(2180, 29, -6737)
            VectorQuest = Vector3.new(2180, 29, -6737)
        elseif MyLevel == 1775 or MyLevel <= 1800 then
            LevelFarm = 9

            Monster = "Fishman Raider [Lv. 1775]"
            QuestName = "DeepForestIsland3"

            LevelQuest = 1
            NameMon = "Fishman Raider"

            CFrameMon = CFrame.new(-10560, 332, -8466)
            VectorMon = Vector3.new(-10560, 332, -8466)

            CFrameQuest = CFrame.new(-10584, 332, -8758)
            VectorQuest = Vector3.new(-10584, 332, -8758)
        elseif MyLevel == 1800 or MyLevel <= 1824 then
            LevelFarm = 10

            Monster = "Fishman Captain [Lv. 1800]"
            QuestName = "DeepForestIsland3"

            LevelQuest = 2
            NameMon = "Fishman Captain"

            CFrameMon = CFrame.new(-10993, 332, -8940)
            VectorMon = Vector3.new(-10993, 332, -8940)

            CFrameQuest = CFrame.new(-10584, 332, -8758)
            VectorQuest = Vector3.new(-10584, 332, -8758)
        elseif MyLevel == 1825 or MyLevel <= 1849 then
            LevelFarm = 11

            Monster = "Forest Pirate [Lv. 1825]"
            QuestName = "DeepForestIsland"

            LevelQuest = 1
            NameMon = "Forest Pirate"

            CFrameMon = CFrame.new(-13479, 333, -7905)
            VectorMon = Vector3.new(-13479, 333, -7905)

            CFrameQuest = CFrame.new(-13232, 333, -7627)
            VectorQuest = Vector3.new(-13232, 333, -7627)
        elseif MyLevel == 1850 or MyLevel <= 1899 then
            LevelFarm = 12

            Monster = "Mythological Pirate [Lv. 1850]"
            QuestName = "DeepForestIsland"

            LevelQuest = 2
            NameMon = "Mythological Pirate"

            CFrameMon = CFrame.new(-13545, 470, -6917)
            VectorMon = Vector3.new(-13545, 470, -6917)

            CFrameQuest = CFrame.new(-13232, 333, -7627)
            VectorQuest = Vector3.new(-13232, 333, -7627)
        elseif MyLevel == 1900 or MyLevel <= 1924 then
            LevelFarm = 13

            Monster = "Jungle Pirate [Lv. 1900]"
            QuestName = "DeepForestIsland2"

            LevelQuest = 1
            NameMon = "Jungle Pirate"

            CFrameMon = CFrame.new(-12107, 332, -10549)
            VectorMon = Vector3.new(-12106, 332, -10549)

            CFrameQuest = CFrame.new(-12684, 391, -9902)
            VectorQuest = Vector3.new(-12684, 391, -9902)
        elseif MyLevel == 1925 or MyLevel <= 1974 then
            LevelFarm = 14

            Monster = "Musketeer Pirate [Lv. 1925]"
            QuestName = "DeepForestIsland2"

            LevelQuest = 2
            NameMon = "Musketeer Pirate"

            CFrameMon = CFrame.new(-13286, 392, -9769)
            VectorMon = Vector3.new(-13286, 392, -9768)

            CFrameQuest = CFrame.new(-12684, 391, -9902)
            VectorQuest = Vector3.new(-12684, 391, -9902)
        elseif MyLevel == 1975 or MyLevel <= 1999 then
            LevelFarm = 15

            Monster = "Reborn Skeleton [Lv. 1975]"
            QuestName = "HauntedQuest1"

            LevelQuest = 1
            NameMon = "Reborn Skeleton"

            CFrameMon = CFrame.new(-8760, 142, 6039)
            VectorMon = Vector3.new(-8760, 142, 6039)

            CFrameQuest = CFrame.new(-9482, 142, 5567)
            VectorQuest = Vector3.new(-9482, 142, 5567)
        elseif MyLevel == 2000 or MyLevel <= 2024 then
            LevelFarm = 16

            Monster = "Living Zombie [Lv. 2000]"
            QuestName = "HauntedQuest1"

            LevelQuest = 2
            NameMon = "Living Zombie"

            CFrameMon = CFrame.new(-10144, 140, 5932)
            VectorMon = Vector3.new(-10144, 140, 5932)

            CFrameQuest = CFrame.new(-9482, 142, 5567)
            VectorQuest = Vector3.new(-9482, 142, 5567)
        elseif MyLevel == 2025 or MyLevel <= 2049 then
            LevelFarm = 17

            Monster = "Demonic Soul [Lv. 2025]"
            QuestName = "HauntedQuest2"

            LevelQuest = 1
            NameMon = "Demonic Soul"

            CFrameMon = CFrame.new(-9507, 172, 6158)
            VectorMon = Vector3.new(-9506, 172, 6158)

            CFrameQuest = CFrame.new(-9513, 172, 6079)
            VectorQuest = Vector3.new(-9513, 172, 6079)
        elseif MyLevel == 2050 or MyLevel <= 2074 then
            LevelFarm = 18

            Monster = "Posessed Mummy [Lv. 2050]"
            QuestName = "HauntedQuest2"

            LevelQuest = 2
            NameMon = "Posessed Mummy"

            CFrameMon = CFrame.new(-9577, 6, 6223)
            VectorMon = Vector3.new(-9577, 6, 6223)

            CFrameQuest = CFrame.new(-9513, 172, 6079)
            VectorQuest = Vector3.new(-9513, 172, 6079)
        elseif MyLevel == 2075 or MyLevel <= 2099 then
            LevelFarm = 19

            Monster = "Peanut Scout [Lv. 2075]"
            QuestName = "NutsIslandQuest"

            LevelQuest = 1
            NameMon = "Peanut Scout"

            CFrameMon = CFrame.new(-2124, 123, -10435)
            VectorMon = Vector3.new(-2124, 123, -10435)

            CFrameQuest = CFrame.new(-2104, 38, -10192)
            VectorQuest = Vector3.new(-2104, 38, -10192)
        elseif MyLevel == 2100 or MyLevel <= 2124 then
            LevelFarm = 20

            Monster = "Peanut President [Lv. 2100]"
            QuestName = "NutsIslandQuest"

            LevelQuest = 2
            NameMon = "Peanut President"

            CFrameMon = CFrame.new(-2124, 123, -10435)
            VectorMon = Vector3.new(-2124, 123, -10435)

            CFrameQuest = CFrame.new(-2104, 38, -10192)
            VectorQuest = Vector3.new(-2104, 38, -10192)
        elseif MyLevel == 2125 or MyLevel <= 2149 then
            LevelFarm = 21

            Monster = "Ice Cream Chef [Lv. 2125]"
            QuestName = "IceCreamIslandQuest"

            LevelQuest = 1
            NameMon = "Ice Cream Chef"

            CFrameMon = CFrame.new(-641, 127, -11062)
            VectorMon = Vector3.new(-641, 127, -11062)

            CFrameQuest = CFrame.new(-822, 66, -10965)
            VectorQuest = Vector3.new(-822, 66, -10965)
        elseif MyLevel == 2150 or MyLevel <= 2199 then
            LevelFarm = 22

            Monster = "Ice Cream Commander [Lv. 2150]"
            QuestName = "IceCreamIslandQuest"

            LevelQuest = 2
            NameMon = "Ice Cream Commander"

            CFrameMon = CFrame.new(-641, 127, -11062)
            VectorMon = Vector3.new(-641, 127, -11062)

            CFrameQuest = CFrame.new(-822, 66, -10965)
            VectorQuest = Vector3.new(-822, 66, -10965)
        elseif MyLevel == 2200 or MyLevel <= 2224 then
            LevelFarm = 23

            Monster = "Cookie Crafter [Lv. 2200]"
            QuestName = "CakeQuest1"

            LevelQuest = 1
            NameMon = "Cookie Crafter"

            CFrameMon = CFrame.new(-2365, 38, -12099)
            VectorMon = Vector3.new(-2365, 38, -12099)

            CFrameQuest = CFrame.new(-2020, 38, -12025)
            VectorQuest = Vector3.new(-2020, 38, -12025)
        elseif MyLevel == 2225 or MyLevel <= 2249 then
            LevelFarm = 24

            Monster = "Cake Guard [Lv. 2225]"
            QuestName = "CakeQuest1"

            LevelQuest = 2
            NameMon = "Cake Guard"

            CFrameMon = CFrame.new(-1651, 38, -12308)
            VectorMon = Vector3.new(-1651, 38, -12308)

            CFrameQuest = CFrame.new(-2020, 38, -12025)
            VectorQuest = Vector3.new(-2020, 38, -12025)
        elseif MyLevel == 2250 or MyLevel <= 2274 then
            LevelFarm = 25

            Monster = "Baking Staff [Lv. 2250]"
            QuestName = "CakeQuest2"

            LevelQuest = 1
            NameMon = "Baking Staff"

            CFrameMon = CFrame.new(-1870, 38, -12938)
            VectorMon = Vector3.new(-1870, 38, -12938)

            CFrameQuest = CFrame.new(-1926, 38, -12850)
            VectorQuest = Vector3.new(-1926, 38, -12850)
        elseif MyLevel == 2275 or MyLevel <= 2299 then
            LevelFarm = 26

            Monster = "Head Baker [Lv. 2275]"
            QuestName = "CakeQuest2"

            LevelQuest = 2
            NameMon = "Head Baker"

            CFrameMon = CFrame.new(-2261.6650390625, 83.27346801757812, -12712.146484375)
            VectorMon = Vector3.new(-2261.6650390625, 83.27346801757812, -12712.1464843758)

            CFrameQuest = CFrame.new(-1926, 38, -12850)
            VectorQuest = Vector3.new(-1926, 38, -12850)
        elseif MyLevel == 2300 or MyLevel <= 2324 then
            LevelFarm = 27

            Monster = "Cocoa Warrior [Lv. 2300]"
            QuestName = "ChocQuest1"

            LevelQuest = 1
            NameMon = "Cocoa Warrior"

            CFrameMon = CFrame.new(-128.67193603515625, 55.7125129699707, -12249.810546875)
            VectorMon = CFrame.new(-128.67193603515625, 55.7125129699707, -12249.810546875)

            CFrameQuest = CFrame.new(231, 23, -12194)
            VectorQuest = Vector3.new(231, 23, -12194)
        elseif MyLevel == 2325 or MyLevel <= 2349 then
            LevelFarm = 28

            Monster = "Chocolate Bar Battler [Lv. 2325]"
            QuestName = "ChocQuest1"

            LevelQuest = 2
            NameMon = "Chocolate Bar Battler"

            CFrameMon = CFrame.new(833.1957397460938, 56.59064483642578, -12671.404296875)
            VectorMon = CFrame.new(833.1957397460938, 56.59064483642578, -12671.404296875)

            CFrameQuest = CFrame.new(231, 23, -12194)
            VectorQuest = Vector3.new(231, 23, -12194)
        elseif MyLevel == 2350 or MyLevel <= 2374 then
            LevelFarm = 29

            Monster = "Sweet Thief [Lv. 2350]"
            QuestName = "ChocQuest2"

            LevelQuest = 1
            NameMon = "Sweet Thief"

            CFrameMon = CFrame.new(71, 77, -12632)
            VectorMon = CFrame.new(71, 77, -12632)

            CFrameQuest = CFrame.new(151, 23, -12774)
            VectorQuest = Vector3.new(151, 23, -12774)
        elseif MyLevel == 2375 or MyLevel <= 2399 then
            LevelFarm = 30

            Monster = "Candy Rebel [Lv. 2375]"
            QuestName = "ChocQuest2"

            LevelQuest = 2
            NameMon = "Candy Rebel"

            CFrameMon = CFrame.new(134, 77, -12882)
            VectorMon = CFrame.new(134, 77, -12882)

            CFrameQuest = CFrame.new(151, 23, -12774)
            VectorQuest = Vector3.new(151, 23, -12774)
        elseif MyLevel == 2400 or MyLevel <= 2424 then
            LevelFarm = 31

            Monster = "Candy Pirate [Lv. 2400]"
            QuestName = "CandyQuest1"

            LevelQuest = 1
            NameMon = "Candy Pirate"

            CFrameMon = CFrame.new(-1243.3262939453125, 111.23643493652344, -14557.1875)
            VectorMon = Vector3.new(-1243.3262939453125, 111.23643493652344, -14557.1875)

            CFrameQuest = CFrame.new(-1147.8936767578125, 16.133047103881836, -14445.3583984375)
            VectorQuest = Vector3.new(-1147.8936767578125, 16.133047103881836, -14445.3583984375)
        elseif MyLevel >= 2425 then
            LevelFarm = 32

            Monster = "Snow Demon [Lv. 2425]"
            QuestName = "CandyQuest1"

            LevelQuest = 2
            NameMon = "Snow Demon"

            CFrameMon = CFrame.new(-964.5390014648438, 130.7720489501953, -14628.267578125)
            VectorMon = Vector3.new(-964.5390014648438, 130.7720489501953, -14628.267578125)

            CFrameQuest = CFrame.new(-1147.8936767578125, 16.133047103881836, -14445.3583984375)
            VectorQuest = Vector3.new(-1147.8936767578125, 16.133047103881836, -14445.3583984375)
        end
    end
end

-- [ Material Farm ]

function MaterialMon()
    if _G.Settings.Material["Select Material"] == "Radioactive Material" then
        MMon = "Factory Staff [Lv. 800]"
        MPos = CFrame.new(295,73,-56)
        SP = "Default"
    elseif _G.Settings.Material["Select Material"] == "Mystic Droplet" then
        MMon = "Water Fighter [Lv. 1450]"
        MPos = CFrame.new(-3385,239,-10542)
        SP = "Default"
    elseif _G.Settings.Material["Select Material"] == "Magma Ore" then
        if game.PlaceId == 2753915549 then
            MMon = "Military Spy [Lv. 325]"
            MPos = CFrame.new(-5815,84,8820)
            SP = "Default"
        elseif game.PlaceId == 4442272183 then
            MMon = "Magma Ninja [Lv. 1175]"
            MPos = CFrame.new(-5428,78,-5959)
            SP = "Default"
        end
    elseif _G.Settings.Material["Select Material"] == "Angel Wings" then
        MMon = "God's Guard [Lv. 450]"
        MPos = CFrame.new(-4698,845,-1912)
        SP = "Default"
        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-7859.09814, 5544.19043, -381.476196)).Magnitude >= 5000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7859.09814, 5544.19043, -381.476196))
        end
    elseif _G.Settings.Material["Select Material"] == "Leather" then
        if game.PlaceId == 2753915549 then
            MMon = "Brute [Lv. 45]"
            MPos = CFrame.new(-1145,15,4350)
            SP = "Default"
        elseif game.PlaceId == 4442272183 then
            MMon = "Marine Captain [Lv. 900]"
            MPos = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
            SP = "Default"
        elseif game.PlaceId == 7449423635 then
            MMon = "Jungle Pirate [Lv. 1900]"
            MPos = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)
            SP = "Default"
        end
    elseif _G.Settings.Material["Select Material"] == "Scrap Metal" then
        if game.PlaceId == 2753915549 then
            MMon = "Brute [Lv. 45]"
            MPos = CFrame.new(-1145,15,4350)
            SP = "Default"
        elseif game.PlaceId == 4442272183 then
            MMon = "Swan Pirate [Lv. 775]"
            MPos = CFrame.new(878,122,1235)
            SP = "Default"
        elseif game.PlaceId == 7449423635 then
            MMon = "Jungle Pirate [Lv. 1900]"
            MPos = CFrame.new(-12107,332,-10549)
            SP = "Default"
        end
    elseif _G.Settings.Material["Select Material"] == "Fish Tail" then
        if game.PlaceId == 7449423635 then
            MMon = "Fishman Raider [Lv. 1775]"
            MPos = CFrame.new(-10993,332,-8940)
            SP = "Default"
        elseif game.PlaceId == 2753915549 then
            MMon = "Fishman Warrior [Lv. 375]"
            MPos = CFrame.new(61123,19,1569)
            SP = "Default"
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)).Magnitude >= 17000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875))
            end
        end
    elseif _G.Settings.Material["Select Material"] == "Demonic Wisp" then
        MMon = "Demonic Soul [Lv. 2025]"
        MPos = CFrame.new(-9507,172,6158)
        SP = "Default"
    elseif _G.Settings.Material["Select Material"] == "Vampire Fang" then
        MMon = "Vampire [Lv. 975]"
        MPos = CFrame.new(-6033,7,-1317)
        SP = "Default"
    elseif _G.Settings.Material["Select Material"] == "Conjured Cocoa" then
        MMon = "Chocolate Bar Battler [Lv. 2325]"
        MPos = CFrame.new(620.6344604492188,78.93644714355469, -12581.369140625)
        SP = "Default"
    elseif _G.Settings.Material["Select Material"] == "Dragon Scale" then
        MMon = "Dragon Crew Archer [Lv. 1600]"
        MPos = CFrame.new(6594,383,139)
        SP = "Default"
    elseif _G.Settings.Material["Select Material"] == "Gunpowder" then
        MMon = "Pistol Billionaire [Lv. 1525]"
        MPos = CFrame.new(-469,74,5904)
        SP = "Default"
    elseif _G.Settings.Material["Select Material"] == "Mini Tusk" then
        MMon = "Mythological Pirate [Lv. 1850]"
        MPos = CFrame.new(-13545,470,-6917)
        SP = "Default"
    end
end

-- [ Bosses Function ]

function CheckBossQuest()
    if _G.Settings.Boss["Select Boss"] == "Saber Expert [Lv. 200] [Boss]" then
        MsBoss = "Saber Expert [Lv. 200] [Boss]"
        NameBoss = "Saber Expert"
        CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
    elseif _G.Settings.Boss["Select Boss"] == "The Saw [Lv. 100] [Boss]" then
        MsBoss = "The Saw [Lv. 100] [Boss]"
        NameBoss = "The Saw"
        CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
    elseif _G.Settings.Boss["Select Boss"] == "Greybeard [Lv. 750] [Raid Boss]" then
        MsBoss = "Greybeard [Lv. 750] [Raid Boss]"
        NameBoss = "Greybeard"
        CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
    elseif _G.Settings.Boss["Select Boss"] == "The Gorilla King [Lv. 25] [Boss]" then
        MsBoss = "The Gorilla King [Lv. 25] [Boss]"
        NameBoss = "The Gorilla King"
        NameQuestBoss = "JungleQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
        CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
    elseif _G.Settings.Boss["Select Boss"] == "Bobby [Lv. 55] [Boss]" then
        MsBoss = "Bobby [Lv. 55] [Boss]"
        NameBoss = "Bobby"
        NameQuestBoss = "BuggyQuest1"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
        CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
    elseif _G.Settings.Boss["Select Boss"] == "Yeti [Lv. 110] [Boss]" then
        MsBoss = "Yeti [Lv. 110] [Boss]"
        NameBoss = "Yeti"
        NameQuestBoss = "SnowQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
        CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
    elseif _G.Settings.Boss["Select Boss"] == "Mob Leader [Lv. 120] [Boss]" then
        MsBoss = "Mob Leader [Lv. 120] [Boss]"
        NameBoss = "Mob Leader"
        CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
    elseif _G.Settings.Boss["Select Boss"] == "Vice Admiral [Lv. 130] [Boss]" then
        MsBoss = "Vice Admiral [Lv. 130] [Boss]"
        NameBoss = "Vice Admiral"
        NameQuestBoss = "MarineQuest2"
        LevelQuestBoss = 2
        CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
        CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
    elseif _G.Settings.Boss["Select Boss"] == "Warden [Lv. 175] [Boss]" then
        MsBoss = "Warden [Lv. 175] [Boss]"
        NameBoss = "Warden"
        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 1
        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
    elseif _G.Settings.Boss["Select Boss"] == "Chief Warden [Lv. 200] [Boss]" then
        MsBoss = "Chief Warden [Lv. 200] [Boss]"
        NameBoss = "Chief Warden"
        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 2
        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
    elseif _G.Settings.Boss["Select Boss"] == "Swan [Lv. 225] [Boss]" then
        MsBoss = "Swan [Lv. 225] [Boss]"
        NameBoss = "Swan"
        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
    elseif _G.Settings.Boss["Select Boss"] == "Magma Admiral [Lv. 350] [Boss]" then
        MsBoss = "Magma Admiral [Lv. 350] [Boss]"
        NameBoss = "Magma Admiral"
        NameQuestBoss = "MagmaQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
        CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
    elseif _G.Settings.Boss["Select Boss"] == "Fishman Lord [Lv. 425] [Boss]" then
        MsBoss = "Fishman Lord [Lv. 425] [Boss]"
        NameBoss = "Fishman Lord"
        NameQuestBoss = "FishmanQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
        CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
    elseif _G.Settings.Boss["Select Boss"] == "Wysper [Lv. 500] [Boss]" then
        MsBoss = "Wysper [Lv. 500] [Boss]"
        NameBoss = "Wysper"
        NameQuestBoss = "SkyExp1Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
        CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
    elseif _G.Settings.Boss["Select Boss"] == "Thunder God [Lv. 575] [Boss]" then
        MsBoss = "Thunder God [Lv. 575] [Boss]"
        NameBoss = "Thunder God"
        NameQuestBoss = "SkyExp2Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
        CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
    elseif _G.Settings.Boss["Select Boss"] == "Cyborg [Lv. 675] [Boss]" then
        MsBoss = "Cyborg [Lv. 675] [Boss]"
        NameBoss = "Cyborg"
        NameQuestBoss = "FountainQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
        CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
    elseif _G.Settings.Boss["Select Boss"] == "Diamond [Lv. 750] [Boss]" then
        MsBoss = "Diamond [Lv. 750] [Boss]"
        NameBoss = "Diamond"
        NameQuestBoss = "Area1Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
        CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
    elseif _G.Settings.Boss["Select Boss"] == "Jeremy [Lv. 850] [Boss]" then
        MsBoss = "Jeremy [Lv. 850] [Boss]"
        NameBoss = "Jeremy"
        NameQuestBoss = "Area2Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
        CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
    elseif _G.Settings.Boss["Select Boss"] == "Fajita [Lv. 925] [Boss]" then
        MsBoss = "Fajita [Lv. 925] [Boss]"
        NameBoss = "Fajita"
        NameQuestBoss = "MarineQuest3"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
        CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
    elseif _G.Settings.Boss["Select Boss"] == "Don Swan [Lv. 1000] [Boss]" then
        MsBoss = "Don Swan [Lv. 1000] [Boss]"
        NameBoss = "Don Swan"
        CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
    elseif _G.Settings.Boss["Select Boss"] == "Smoke Admiral [Lv. 1150] [Boss]" then
        MsBoss = "Smoke Admiral [Lv. 1150] [Boss]"
        NameBoss = "Smoke Admiral"
        NameQuestBoss = "IceSideQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
        CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
    elseif _G.Settings.Boss["Select Boss"] == "Cursed Captain [Lv. 1325] [Raid Boss]" then
        MsBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
        NameBoss = "Cursed Captain"
        CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
    elseif _G.Settings.Boss["Select Boss"] == "Darkbeard [Lv. 1000] [Raid Boss]" then
        MsBoss = "Darkbeard [Lv. 1000] [Raid Boss]"
        NameBoss = "Darkbeard"
        CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
    elseif _G.Settings.Boss["Select Boss"] == "Order [Lv. 1250] [Raid Boss]" then
        MsBoss = "Order [Lv. 1250] [Raid Boss]"
        NameBoss = "Order"
        CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
    elseif _G.Settings.Boss["Select Boss"] == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
        MsBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
        NameBoss = "Awakened Ice Admiral"
        NameQuestBoss = "FrostQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
        CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
    elseif _G.Settings.Boss["Select Boss"] == "Tide Keeper [Lv. 1475] [Boss]" then
        MsBoss = "Tide Keeper [Lv. 1475] [Boss]"
        NameBoss = "Tide Keeper"
        NameQuestBoss = "ForgottenQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
        CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
    elseif _G.Settings.Boss["Select Boss"] == "Stone [Lv. 1550] [Boss]" then
        MsBoss = "Stone [Lv. 1550] [Boss]"
        NameBoss = "Stone"
        NameQuestBoss = "PiratePortQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-290, 44, 5577)
        CFrameBoss = CFrame.new(-1085, 40, 6779)
    elseif _G.Settings.Boss["Select Boss"] == "Island Empress [Lv. 1675] [Boss]" then
        MsBoss = "Island Empress [Lv. 1675] [Boss]"
        NameBoss = "Island Empress"
        NameQuestBoss = "AmazonQuest2"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(5443, 602, 752)
        CFrameBoss = CFrame.new(5659, 602, 244)
    elseif _G.Settings.Boss["Select Boss"] == "Kilo Admiral [Lv. 1750] [Boss]" then
        MsBoss = "Kilo Admiral [Lv. 1750] [Boss]"
        NameBoss = "Kilo Admiral"
        NameQuestBoss = "MarineTreeIsland"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(2178, 29, -6737)
        CFrameBoss = CFrame.new(2846, 433, -7100)
    elseif _G.Settings.Boss["Select Boss"] == "Captain Elephant [Lv. 1875] [Boss]" then
        MsBoss = "Captain Elephant [Lv. 1875] [Boss]"
        NameBoss = "Captain Elephant"
        NameQuestBoss = "DeepForestIsland"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-13232, 333, -7631)
        CFrameBoss = CFrame.new(-13221, 325, -8405)
    elseif _G.Settings.Boss["Select Boss"] == "Beautiful Pirate [Lv. 1950] [Boss]" then
        MsBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
        NameBoss = "Beautiful Pirate"
        NameQuestBoss = "DeepForestIsland2"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-12686, 391, -9902)
        CFrameBoss = CFrame.new(5182, 23, -20)
    elseif _G.Settings.Boss["Select Boss"] == "Cake Queen [Lv. 2175] [Boss]" then
        MsBoss = "Cake Queen [Lv. 2175] [Boss]"
        NameBoss = "Cake Queen"
        NameQuestBoss = "IceCreamIslandQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-716, 382, -11010)
        CFrameBoss = CFrame.new(-821, 66, -10965)
    elseif _G.Settings.Boss["Select Boss"] == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
        MsBoss = "rip_indra True Form [Lv. 5000] [Raid Boss]"
        NameBoss = "rip_indra True Form"
        CFrameBoss = CFrame.new(-5359, 424, -2735)
    elseif _G.Settings.Boss["Select Boss"] == "Longma [Lv. 2000] [Boss]" then
        MsBoss = "Longma [Lv. 2000] [Boss]"
        NameBoss = "Longma"
        CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
    elseif _G.Settings.Boss["Select Boss"] == "Soul Reaper [Lv. 2100] [Raid Boss]" then
        MsBoss = "Soul Reaper [Lv. 2100] [Raid Boss]"
        NameBoss = "Soul Reaper"
        CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
    end
end

-- [ Equip Weapon ]

function EquipTool(Tool)
    pcall(function()
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack[Tool])
    end)
end

-- [ Tween Functions ]

function Tween(nelzz)
    if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
    if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - nelzz.Position).Magnitude <= 150 then
        pcall(function()
            tween:Cancel()

            game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = nelzz

            return
        end)
    end

    local Distance = (nelzz.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
    if Distance < 1000 then
        Speed = 315
    elseif Distance >= 1000 then
        Speed = 300
    end

    local tween_s = game:service"TweenService"
    local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - nelzz.Position).Magnitude/325, Enum.EasingStyle.Linear)
    tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = nelzz})
    tween:Play()

    local tweenfunc = {}

    function tweenfunc:Stop()
        tween:Cancel()
    end
    return tweenfunc
end

-- [ Cancel Tween Function ]

function CancelTween(target)
    wait()
    target = Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
end

-- [ Aimbot Skill Mastery ]

spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg,false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if UseSkillMasteryDevilFruit then
                        if type(args[2]) == "vector" then
                            args[2] = PositionSkillMasteryDevilFruit
                        else
                            args[2] = CFrame.new(PositionSkillMasteryDevilFruit)
                        end
                        return old(unpack(args))
                    end
                end
            end
        end
        return old(...)
    end)
end)

-- [ Aimbot Skill Player ]

local gg = getrawmetatable(game)
local old = gg.__namecall
setreadonly(gg,false)
gg.__namecall = newcclosure(function(...)
	local method = getnamecallmethod()
	local args = {...}
	if tostring(method) == "FireServer" then
		if tostring(args[1]) == "RemoteEvent" then
			if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
				if _G.Settings.Players["Aimbot Skill"] then
					args[2] = _G.AimBotSkillPosition
					return old(unpack(args))
				end
			end
		end
	end
	return old(...)
end)

-- [ Equip Gun Mastery ]

spawn(function()
    pcall(function()
        while task.wait() do
            for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") then
                    if v:FindFirstChild("RemoteFunctionShoot") then
                        CurrentEquipGun = v.Name
                    end
                end
            end
        end
    end)
end)

-- [ Infinite Energy ]

function InfinityEnergy()
	game:GetService("Players").LocalPlayer.Character.Energy.Changed:connect(function()
		if _G.Settings.Buff["Infinite Ability"] then
			game:GetService("Players").LocalPlayer.Character.Energy.Value = game:GetService("Players").LocalPlayer.Character.Energy.MaxValue
		end 
	end)
end

-- [ Dodge no Cooldown ]

function NoCooldown()
    if _G.Settings.Buff["Dodge without Cool"] then
        for i,v in next, getgc() do
            if typeof(v) == "function" then
                if getfenv(v).script == game.Players.LocalPlayer.Character:WaitForChild("Dodge") then
                    for i2,v2 in next, getupvalues(v) do
                        if tostring(v2) == "0.4" then
                            repeat task.wait()
                                setupvalue(v,i2,0)
                            until not _G.Settings.Buff["Dodge without Cool"]
                        end
                    end
                end
            end
        end
    end
end

-- [ Farm Float & Island Tween (KRNL & Synapse Only) ]

spawn(function()
    pcall(function()
        game:GetService("RunService").Heartbeat:Connect(function()
            if _G.Settings.Main["Auto Farm Level"] or _G.Settings.Main["Mob Aura"] or _G.Settings.Main["Auto Farm Fruit"] or _G.Settings.Main["Auto Farm Gun"] or _G.Settings.Main["Auto Second Sea"] or _G.Settings.Main["Auto Fully Third Sea"] or _G.Settings.Main["Auto Fully Saber"] or _G.Settings.Main["Auto Elite Hunter"] or _G.Settings.Main["Auto Cake Prince"] or _G.Settings.Main["Auto Dough King V2"] or _G.Settings.Main["Auto Rainbow Haki"] or _G.Settings.Main["Auto Swan Glasses"] or _G.Settings.Main["Auto Ken-Haki V2"] or _G.Settings.Main["Auto Musketeer Hat"] or _G.Settings.Main["Auto Holy Torch"] or _G.Settings.Main["Auto Serpent Bow"] or _G.Settings.Main["Auto Buddy Sword"] or _G.Settings.Main["Auto Rengoku"] or _G.Settings.Main["Auto Hallow Sycthe"] or _G.Settings.Main["Auto Pole"] or _G.Settings.Main["Auto Yama"] or _G.Settings.Main["Auto Cavander"] or _G.Settings.Main["Auto Tushita"] or _G.Settings.Main["Auto Dark Dagger"] or _G.Settings.Main["Auto Rainbow Haki"] or _G.Settings.Main["Auto Bartilo Quest"] or _G.Settings.Main["Auto Dark Coat"] or _G.Settings.Main["Auto Evo Race"] or _G.Settings.Main["Auto Farm Factory"] or _G.Settings.Main["Auto Farm Bone"] or _G.Settings.Material["Auto Farm Material"] or _G.Settings.Boss["Auto Farm Boss"] or _G.Settings.CDKs["Auto Cursed Dual Katana"] or _G.Settings.SoulGuis["Auto Soul Guitar"] or _G.Settings.Observation["Auto Farm Ken"] or _G.Settings.Players["Teleport Player"] or _G.Settings.Players["Kill Player Melee"] or _G.Settings.Players["Kill Player Gun"] or _G.Settings.Raid["Auto Next Island"] or _G.Settings.Teleport["Start Teleport Island"] or _G.Settings.Main["Auto Farm Ectoplasm"] or _G.Settings.Melee["Auto Death Step"] or _G.Settings.Melee["Auto Super Human"] or _G.Settings.Melee["Auto Shark Man Karate"] or _G.Settings.Melee["Auto Electric Claw"] or _G.Settings.Melee["Auto Dragon Talon"] or _G.Settings.Melee["Auto God Human"] or _G.Settings.Main["Auto Twin Hooks"] or _G.Settings.Main["Auto Training Dummy"] or _G.Settings.Main["Auto Mirage Island"] or _G.Settings.Main["Auto Farm Chests"] then
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
                    setfflag("HumanoidParallelRemoveNoPhysics","false")
                    setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2","false")
                    game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                end
            end
        end)
    end)
end)

-- [ Farm Noclip & and Island Tween ]

spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.Settings.Main["Auto Farm Level"] or _G.Settings.Main["Mob Aura"] or _G.Settings.Main["Auto Farm Fruit"] or _G.Settings.Main["Auto Farm Gun"] or _G.Settings.Main["Auto Second Sea"] or _G.Settings.Main["Auto Fully Third Sea"] or _G.Settings.Main["Auto Fully Saber"] or _G.Settings.Main["Auto Elite Hunter"] or _G.Settings.Main["Auto Cake Prince"] or _G.Settings.Main["Auto Dough King V2"] or _G.Settings.Main["Auto Rainbow Haki"] or _G.Settings.Main["Auto Swan Glasses"] or _G.Settings.Main["Auto Ken-Haki V2"] or _G.Settings.Main["Auto Musketeer Hat"] or _G.Settings.Main["Auto Holy Torch"] or _G.Settings.Main["Auto Serpent Bow"] or _G.Settings.Main["Auto Buddy Sword"] or _G.Settings.Main["Auto Rengoku"] or _G.Settings.Main["Auto Hallow Sycthe"] or _G.Settings.Main["Auto Pole"] or _G.Settings.Main["Auto Yama"] or _G.Settings.Main["Auto Cavander"] or _G.Settings.Main["Auto Tushita"] or _G.Settings.Main["Auto Dark Dagger"] or _G.Settings.Main["Auto Rainbow Haki"] or _G.Settings.Main["Auto Bartilo Quest"] or _G.Settings.Main["Auto Dark Coat"] or _G.Settings.Main["Auto Evo Race"] or _G.Settings.Main["Auto Farm Factory"] or _G.Settings.Main["Auto Farm Bone"] or _G.Settings.Material["Auto Farm Material"] or _G.Settings.Boss["Auto Farm Boss"] or _G.Settings.CDKs["Auto Cursed Dual Katana"] or _G.Settings.SoulGuis["Auto Soul Guitar"] or _G.Settings.Observation["Auto Farm Ken"] or _G.Settings.Players["Teleport Player"] or _G.Settings.Players["Kill Player Melee"] or _G.Settings.Players["Kill Player Gun"] or _G.Settings.Raid["Auto Next Island"] or _G.Settings.Teleport["Start Teleport Island"] or _G.Settings.Main["Auto Farm Ectoplasm"] or _G.Settings.Melee["Auto Death Step"] or _G.Settings.Melee["Auto Super Human"] or _G.Settings.Melee["Auto Shark Man Karate"] or _G.Settings.Melee["Auto Electric Claw"] or _G.Settings.Melee["Auto Dragon Talon"] or _G.Settings.Melee["Auto God Human"] or _G.Settings.Main["Auto Twin Hooks"] or _G.Settings.Main["Auto Training Dummy"] or _G.Settings.Main["Auto Mirage Island"] or _G.Settings.Main["Auto Farm Chests"] then
                for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end)
    end)
end)

-- [ Delete Effect ]

spawn(function()
	while task.wait() do
		for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"]:GetChildren()) do
			pcall(function()
				if v.Name == ("CurvedRing") or v.Name == ("SlashHit") or v.Name == ("SwordSlash") or v.Name == ("SlashTail") or v.Name == ("Sounds") then
					v:Destroy()
				end
			end)
		end
	end
end)

if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
    game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
end

if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
    game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
end

-- [ No Stun ]

task.spawn(function()
	if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
		game.Players.LocalPlayer.Character.Stun.Changed:connect(function()
			pcall(function()
				if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
					game.Players.LocalPlayer.Character.Stun.Value = 0
				end
			end)
		end)
	end
end)

-- [ Click Functions ]

function ClickCamera()
    pcall(function()
        game:GetService("VirtualUser"):CaptureController()
        game:GetService("VirtualUser"):ClickButton1(Vector2.new(851,158),game:GetService("Workspace").Camera.CFrame)
    end)
end

function Click()
    pcall(function()
        game:GetService("VirtualUser"):CaptureController()
        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
    end)
end

-- [ Get Inventory Sword ]

function GetWeaponInventory(Weaponname)
	for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
		if type(v) == "table" then
			if v.Type == "Sword" then
				if v.Name == Weaponname then
					return true
				end
			end
		end
	end
	return false
end

-- [ Check Material Function ]

function CheckMaterial(matname)
    for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
        if type(v) == "table" then
            if v.Type == "Material" then
                if v.Name == matname then
                    return v.Count
                end
            end
        end
    end
    return 0
end

-- [ Anti AFK Check ]

game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

-- [ Bypass Teleport ]

function BTP(p)
    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude > 3000 then
        game.Players.LocalPlayer.Character.Head:Destroy()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
    end
end

-- [ Server Hop Api ]

local ServerHop = loadstring(game:HttpGet("https://raw.githubusercontent.com/AnabutCuteee/Secret-Backups/main/Secret-003.lua"))()

-- [ For Chest Function ]

function ChestTween(lel)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = lel
end

-- [ Get Quest Title ]

local GetQuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title
local GetQuest = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest

-- [ Remove Text Fruits ] 

function RemoveFruit(str)
    return str:gsub(" Fruit", "")
end

-- [ Create Variables UI! ]

local repo = "https://raw.githubusercontent.com/aKashi7674/UILibrary/main/"

local Library = loadstring(game:HttpGet(repo .. "Library.lua"))()
local ThemeManager = loadstring(game:HttpGet(repo .. "addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet(repo .. "addons/SaveManager.lua"))()

GetSubPrefix = function(a)
    local a = tostring(a):gsub("","");
    local bX = "";
    if aq == 2 then
        local Yp = string.sub(a,aq,aq+1);
        bX = Yp == "1" and "" or Yp == "2" and "" or Yp =="3" and "" or "";
    end;
    return bX;
end;

local A ="%A, %B";

local B = os.date(" %d",os.time());

local C = ", %Y";

A = os.date(A,os.time())..B..GetSubPrefix(B)..os.date(C,os.time());

local Window = Library:CreateWindow({
    Title = "Yawa Hub way Bilatasan - "..A,
    Center = true, 
    AutoShow = true,
})

local Tabs = {
    Main = Window:AddTab("General"), 
    Lolz = Window:AddTab("Automatics"), 
    Visual = Window:AddTab("Visuals"), 
    Players = Window:AddTab("Combat"), 
    Shop = Window:AddTab("Shop"), 
    Misc = Window:AddTab("Miscellaneous"),
    ["UI Settings"] = Window:AddTab("Settings"),
}

-- [ Main Page ]

local MainFarmTab = Tabs.Main:AddLeftTabbox()
local FarmSection = MainFarmTab:AddTab("Main")
local MaterialFarm = MainFarmTab:AddTab("Material")

local MiscsFarmTab = Tabs.Main:AddRightTabbox()
local SettingFarm = MiscsFarmTab:AddTab("Settings")
local StatsSection = MiscsFarmTab:AddTab("Stats")
local MasterySetting = MiscsFarmTab:AddTab("Skill")

local OtherSection = Tabs.Main:AddLeftTabbox()
local BossFarm1 = OtherSection:AddTab("Boss")
local MasterySection = OtherSection:AddTab("Mastery")

local ChestLol = Tabs.Main:AddLeftGroupbox("[ All Sea ]")

local BlablablaSection = Tabs.Main:AddLeftTabbox()
local ObservationSection = BlablablaSection:AddTab("Observation")
local NelzkieSpecial = BlablablaSection:AddTab("Mirage")

-- [ Second Page ]

local FStyles = Tabs.Lolz:AddRightGroupbox("[ Fighting Styles ]")
local AutoMatics3 = Tabs.Lolz:AddRightGroupbox("[ First Sea ]")
local AutoMatics2 = Tabs.Lolz:AddRightGroupbox("[ Second Sea ]")
local InfoStatusElite = Tabs.Lolz:AddLeftGroupbox("[ Elite Hunter Status ]")
local InfoStatusCake = Tabs.Lolz:AddLeftGroupbox("[ Cake Prince Status ]")
local AutoMatics1 = Tabs.Lolz:AddLeftGroupbox("[ Third Sea ]")
local SpecialSection = Tabs.Lolz:AddRightGroupbox("[ Special ]")

-- [ Third Page ]

local Teleport1 = Tabs.Visual:AddLeftGroupbox("[ Sea ]")
local Teleport2 = Tabs.Visual:AddLeftGroupbox("[ Island ]")
local Race1 = Tabs.Visual:AddLeftGroupbox("[ Trials ]")

local FruitSection = Tabs.Visual:AddRightTabbox()
local Fruit = FruitSection:AddTab("Fruit #1")
local Fruit2 = FruitSection:AddTab("Fruit #2")

local RaidSection = Tabs.Visual:AddRightTabbox()
local Raid = RaidSection:AddTab("Raid #1")
local Raid1 = RaidSection:AddTab("Raid #2")

local VisualSection = Tabs.Visual:AddRightGroupbox("[ Visuals ]")

-- [ Fourth Page ]

local Players1 = Tabs.Players:AddLeftGroupbox("[ Players #1 ]")

local PlayersSection = Tabs.Players:AddRightTabbox()
local Players2 = PlayersSection:AddTab("[ Players #2 ]")
local Players3 = Tabs.Players:AddLeftGroupbox("[ Buff ]")

-- [ Fifth Page ]

local MixedShop = Tabs.Shop:AddLeftGroupbox("[ Mixed ]")

local Essential = Tabs.Shop:AddLeftGroupbox("[ Legendary Sword & Haki ]")

local Shop6 = Tabs.Shop:AddRightGroupbox("[ Gun ]")

local ShopSection1 = Tabs.Shop:AddRightTabbox()

local Shop3 = ShopSection1:AddTab("Fighting Styles")
local Shop2 = ShopSection1:AddTab("Abilities")

local ShopSection2 = Tabs.Shop:AddLeftTabbox()

local Shop5 = ShopSection2:AddTab("Sword")
local Shop4 = ShopSection2:AddTab("Accessories")

-- [ Sixth Page ]

local Misc1 = Tabs.Misc:AddLeftGroupbox("[ Server & Teleport ]")
local Misc2 = Tabs.Misc:AddLeftGroupbox("[ Teams ]")
local Misc3 = Tabs.Misc:AddLeftGroupbox("[ User Interface's ]")
local Misc4 = Tabs.Misc:AddRightGroupbox("[ Change Buso State ]")
local Misc5 = Tabs.Misc:AddRightGroupbox("[ Notify ]")
local Misc6 = Tabs.Misc:AddLeftGroupbox("[ Kaitun ]")

-- [ UI Settings ]

local MenuGroup = Tabs["UI Settings"]:AddLeftGroupbox("Menu")
Library.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddButton("Unload",function() Library:Unload() end)
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "End", NoUI = true, Text = "Menu keybind" }) 
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings() 
SaveManager:SetIgnoreIndexes({ "MenuKeybind" }) 
SaveManager:BuildConfigSection(Tabs["UI Settings"]) 
ThemeManager:ApplyToTab(Tabs["UI Settings"])

-- [ Auto Farm Level ]

QuestStatus = FarmSection:AddLabel("")

spawn(function()
    while task.wait() do
        pcall(function()
            CheckQuest()
            QuestStatus:SetText("Quest : "..QuestName.." | Level : "..LevelQuest)
        end)
    end
end)

FarmSection:AddToggle("AutoFarmLevel",{
    Text = "Auto Farm [Level]",
    Default = _G.Settings.Main["Auto Farm Level"],
    Tooltip = "You Can farm ur Level up to 1-2450(MAX)",
})

Toggles["AutoFarmLevel"]:OnChanged(function(value)
    _G.Settings.Main["Auto Farm Level"] = value
    CancelTween(_G.Settings.Main["Auto Farm Level"])
    SaveSettings()
end)

task.spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Farm Level"] then
            pcall(function()
                if not string.find(GetQuestTitle.Text,NameMon) then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if GetQuest.Visible == false then
                    repeat task.wait()
                        Tween(CFrameQuest)
                    until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Settings.Main["Auto Farm Level"]
                    if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",QuestName,LevelQuest)
                    end
                elseif GetQuest.Visible == true then
                    CheckQuest()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Monster) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Monster then
                                    repeat task.wait()
                                        if string.find(GetQuestTitle.Text,NameMon) then
                                            EquipTool(_G.Settings.Setting["Select Weapon"])
                                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                            MonsterPosition = v.HumanoidRootPart.CFrame
                                            v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid:ChangeState(14)
                                            v.Humanoid:ChangeState(11)
                                            v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                            end
                                        else
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    until not game:GetService("Workspace").Enemies:FindFirstChild(Monster) or not _G.Settings.Main["Auto Farm Level"] or not string.find(GetQuestTitle.Text,NameMon) or v.Humanoid.Health <= 0 or not v.Parent or GetQuest.Visible == false
                                end
                            end
                        end
                    else
                        Tween(CFrameMon)
                    end
                end
            end)
        end
    end
end)

-- [ Second Sea ]

if World1 then
FarmSection:AddToggle("SecondSea",{
    Text = "Auto Next Sea",
    Default = _G.Settings.Main["Auto Second Sea"], 
    Tooltip = "Auto Second Sea", 
})

Toggles["SecondSea"]:OnChanged(function(value)
    _G.Settings.Main["Auto Second Sea"] = value
    CancelTween(_G.Settings.Main["Auto Second Sea"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Second Sea"] then
            pcall(function()
                if game.Players.LocalPlayer.Data.Level.Value >= 700 then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress").UsedKey == false then
                        if not game.Players.LocalPlayer.Backpack:FindFirstChild("Key") or game.Players.LocalPlayer.Character:FindFirstChild("Key") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") or game.Players.LocalPlayer.Character:FindFirstChild("Key") then
                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack["Key"])
                            Tween(CFrame.new(1349.697265625, 37.34928512573242, -1328.8309326171875))
                            game:GetService("Workspace").Map.Ice.Door.Size = Vector3.new(30,30,30)
                        end
                    end
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress").UsedKey == true and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress").KilledIceBoss == false then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
                                    repeat task.wait()
                                        EquipTool(_G.Settings.Setting["Select Weapon"])
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                        MonsterPosition = v.HumanoidRootPart.CFrame
                                        v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(14)
                                        v.Humanoid:ChangeState(11)
                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                        end
                                    until not _G.Settings.Main["Auto Second Sea"] or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    end
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress").KilledIceBoss == true then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                    end
                end
            end)
        end
    end
end)
end

-- [ Third Sea ]

if World2 then
FarmSection:AddToggle("ThirdSea",{
    Text = "Auto Next Sea",
    Default = _G.Settings.Main["Auto Fully Third Sea"], 
    Tooltip = "Auto Fully Third Sea", 
})

Toggles["ThirdSea"]:OnChanged(function(value)
    _G.Settings.Main["Auto Fully Third Sea"] = value
    CancelTween(_G.Settings.Main["Auto Fully Third Sea"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Fully Third Sea"] then
            pcall(function()
                if game.Players.LocalPlayer.Data.Level.Value >= 1500 then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess ~= nil then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                            if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 0 then
                                if game.Workspace.Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then
                                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            if v.Name == "rip_indra [Lv. 1500] [Boss]" then
                                                repeat task.wait()
                                                    EquipTool(_G.Settings.Setting["Select Weapon"])
                                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                                    MonsterPosition = v.HumanoidRootPart.CFrame
                                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                    v.Humanoid.JumpPower = 0
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid:ChangeState(14)
                                                    v.Humanoid:ChangeState(11)
                                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                                    end
                                                until not _G.Settings.Main["Auto Fully Third Sea"] or not v.Parent or v.Humanoid.Health <= 0
                                                wait(.5)
                                                Check = 2
                                                repeat task.wait()
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                                until Check == 1
                                            end
                                        end
                                    end
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check")
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
                                end
                            elseif game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress","Check") == 1 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                            else
                                if game.Workspace.Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            if v.Name == "Don Swan [Lv. 1000] [Boss]" then
                                                repeat task.wait()
                                                    EquipTool(_G.Settings.Setting["Select Weapon"])
                                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                                    MonsterPosition = v.HumanoidRootPart.CFrame
                                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                    v.Humanoid.JumpPower = 0
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid:ChangeState(14)
                                                    v.Humanoid:ChangeState(11)
                                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                                    end
                                                until not _G.Settings.Main["Auto Fully Third Sea"] or not v.Parent or v.Humanoid.Health <= 0
                                            end
                                        end
                                    end
                                else
                                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]").HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
                                TabelDevilFruitStore = {}
                                TabelDevilFruitOpen = {}
                                for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
                                    for i1,v1 in pairs(v) do
                                        if i1 == "Name" then
                                            table.insert(TabelDevilFruitStore,v1)
                                        end
                                    end
                                end
                                for i,v in next,game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("GetFruits") do
                                    if v.Price >= 1000000 then
                                        table.insert(TabelDevilFruitOpen,v.Name)
                                    end
                                end
                                for i,DevilFruitOpenDoor in pairs(TabelDevilFruitOpen) do
                                    for i1,DevilFruitStore in pairs(TabelDevilFruitStore) do
                                        if DevilFruitOpenDoor == DevilFruitStore and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
                                            if not game.Players.LocalPlayer.Backpack:FindFirstChild(DevilFruitStore) then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",DevilFruitStore)
                                            else
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1")
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","2")
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","3")
                                            end
                                        end
                                    end
                                end
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1")
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","2")
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","3")
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                            if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                if game.Workspace.Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
                                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            if v.Name == "Swan Pirate [Lv. 775]" then
                                                repeat task.wait()
                                                    EquipTool(_G.Settings.Setting["Select Weapon"])
                                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                                    MonsterPosition = v.HumanoidRootPart.CFrame
                                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                    v.Humanoid.JumpPower = 0
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid:ChangeState(14)
                                                    v.Humanoid:ChangeState(11)
                                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                                    end
                                                until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.Main["Auto Fully Third Sea"] == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            end
                                        end
                                    end
                                else
                                    Tween(CFrame.new(1066.993896484375, 101.83309173583984, 1080.9091796875))
                                end
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
                            end
                        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                            if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        if v.Name == "Jeremy [Lv. 850] [Boss]" then
                                            repeat task.wait()
                                                EquipTool(_G.Settings.Setting["Select Weapon"])
                                                Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                                MonsterPosition = v.HumanoidRootPart.CFrame
                                                v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid:ChangeState(14)
                                                v.Humanoid:ChangeState(11)
                                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                                end
                                            until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.Main["Auto Fully Third Sea"] == false
                                        end
                                    end
                                end
                            else
                                Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy [Lv. 850] [Boss]").HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                            end
                        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then

                            local CFrameThird = CFrame.new(-1836.1412353515625, 10.458294868469238, 1692.491943359375)

                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameThird.Position).Magnitude > 1500 then
                                Tween(CFrameThird)
                            else
                                wait(.5)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685)
                                wait(.1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807)
                                wait(.1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685)
                                wait(.1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541)
                                wait(.1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659)
                                wait(.1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368)
                                wait(.1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625)
                                wait(.1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541)
                            end
                        end
                    end
                end
            end)
        end
    end
end)
end

-- [ Mob Aura ]

FarmSection:AddToggle("MobAura",{
    Text = "Mob Aura",
    Default = _G.Settings.Main["Mob Aura"], 
    Tooltip = "Kill all Around Monsters!", 
})

Toggles["MobAura"]:OnChanged(function(value)
    _G.Settings.Main["Mob Aura"] = value
    CancelTween(_G.Settings.Main["Mob Aura"])
    SaveSettings()
end)

task.spawn(function()
    while task.wait() do
        if _G.Settings.Main["Mob Aura"] then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if _G.Settings.Main["Mob Aura"] and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.Settings.Distan["Distance Mob Aura"] then
                        repeat task.wait()
                            EquipTool(_G.Settings.Setting["Select Weapon"])
                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                            MonsterPosition = v.HumanoidRootPart.CFrame
                            v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                            v.Humanoid.JumpPower = 0
                            v.Humanoid.WalkSpeed = 0
                            v.HumanoidRootPart.CanCollide = false
                            v.Humanoid:ChangeState(14)
                            v.Humanoid:ChangeState(11)
                            v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                            end
                            MagnetMobAura = true
                            if delay then
                                delay(1,function()
                                    MagnetMobAura = true
                                end)
                            end
                        until not _G.Settings.Main["Mob Aura"] or not v.Parent or v.Humanoid.Health <= 0
                        MagnetMobAura = false
                    end
                end
            end)
        end
    end
end)

-- [ Material ]

if World1 then
MaterialFarm:AddDropdown("Materials1",{
    Default = _G.Settings.Material["Select Material"], 
    Multi = false,
    Text = "Select Material",
    Values = {"Scrap Metal","Leather","Angel Wings","Magma Ore","Fish Tail"},
})
    
Options["Materials1"]:OnChanged(function(value)
    _G.Settings.Material["Select Material"] = value
    SaveSettings()
end)
end
    
if World2 then
MaterialFarm:AddDropdown("Materials2",{
    Default = _G.Settings.Material["Select Material"], 
    Multi = false,
    Text = "Select Material",
    Values = {"Scrap Metal","Leather","Radioactive Material","Mystic Droplet","Magma Ore","Vampire Fang"},
})
    
Options["Materials2"]:OnChanged(function(value)
     _G.Settings.Material["Select Material"] = value
    SaveSettings()
end)
end
    
if World3 then
MaterialFarm:AddDropdown("Materials3",{
    Default = _G.Settings.Material["Select Material"], 
    Multi = false,
    Text = "Select Material",
    Values = {"Scrap Metal","Leather","Demonic Wisp","Conjured Cocoa","Dragon Scale","Gunpowder","Fish Tail","Mini Tusk"},
})
    
Options["Materials3"]:OnChanged(function(value)
    _G.Settings.Material["Select Material"] = value
    SaveSettings()
end)
end

-- [ Material ]

MaterialFarm:AddToggle("MaterialFarm",{
    Text = "Auto Farm Material",
    Default = _G.Settings.Material["Auto Farm Material"], 
    Tooltip = "Auto Farm the Selected Material ( first sea , second sea , third sea )",
})

Toggles["MaterialFarm"]:OnChanged(function(value)
    _G.Settings.Material["Auto Farm Material"] = value
    CancelTween(_G.Settings.Material["Auto Farm Material"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Material["Auto Farm Material"] then
            pcall(function()
                MaterialMon()
                if game.Workspace.Enemies:FindFirstChild(MMon) then
                    for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if v.Name == MMon then
                                repeat task.wait()
                                    EquipTool(_G.Settings.Setting["Select Weapon"])
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                    MonsterPosition = v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(14)
                                    v.Humanoid:ChangeState(11)
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                    end
                                until not _G.Settings.Material["Auto Farm Material"] or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    Tween(MPos)
                end
            end)
        end
    end
end)

-- [ Farm Miscellaneous ]

WeaponList = {"Melee","Blox Fruit","Sword","Gun"}

SettingFarm:AddDropdown("ShadowHubFuncs3",{
    Default = _G.Settings.Setting["Weapon Tool Tip"], 
    Multi = false,
    Text = "Select Weapon / Combat",
    Values = WeaponList,
})

Options["ShadowHubFuncs3"]:OnChanged(function(value)
    _G.Settings.Setting["Weapon Tool Tip"] = value
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        pcall(function()
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") then
                    if v.ToolTip == _G.Settings.Setting["Weapon Tool Tip"] then
                        _G.Settings.Setting["Select Weapon"] = v.Name
                    end
                end
            end
        end)
    end
end)

DelayList = {"0.1","0.2","0.3"}

SettingFarm:AddDropdown("ShadowHubFuncs4",{
    Default = _G.Settings.Setting["Fast Attack Delay"],
    Multi = false,
    Text = "Set Attack Delay",
    Values = DelayList,
})

Options["ShadowHubFuncs4"]:OnChanged(function(value)
    _G.Settings.Setting["Fast Attack Delay"] = value
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Setting["Fast Attack Delay"] then
            pcall(function()
                if _G.Settings.Setting["Fast Attack Delay"] == "0.1" then
                    _G.AttackDelay = 0.1
                elseif _G.Settings.Setting["Fast Attack Delay"] == "0.2" then
                    _G.AttackDelay = 0.2
                elseif _G.Settings.Setting["Fast Attack Delay"] == "0.3" then
                    _G.AttackDelay = 0.3
                end
            end)
        end
    end
end)

-- [ Code ]

local CodeApi = loadstring(game:HttpGet("https://raw.githubusercontent.com/AnabutCuteee/Secret-Backups/main/Secret-001.lua"))()

local Codess = SettingFarm:AddButton("Redeem x2 Codes",function()
    function RedeemCode(value)
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
    end
    for i,v in pairs(CodeApi) do
        RedeemCode(v)
    end
end)

SettingFarm:AddDivider()

SettingFarm:AddToggle("RejoinError",{ 
    Text = "Auto Rejoin when Kick",
    Default = _G.Settings.Setting["Auto Rejoin Kick"], 
    Tooltip = "Auto rejoin while got kicked on the server.", 
})

Toggles["RejoinError"]:OnChanged(function(value)
    _G.Settings.Setting["Auto Rejoin Kick"] = value
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Setting["Auto Rejoin Kick"] then
            game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
                if child.Name == "ErrorPrompt" and child:FindFirstChild("MessageArea") and child.MessageArea:FindFirstChild("ErrorFrame") then
                    game:GetService("TeleportService"):Teleport(game.PlaceId)
                end
            end)
        end
    end
end)

SettingFarm:AddToggle("HakiPoint",{ 
    Text = "Auto Active Buso",
    Default = _G.Settings.Setting["Auto Active Buso"], 
    Tooltip = "Auto activate the buso haki.", 
})

Toggles["HakiPoint"]:OnChanged(function(value)
    _G.Settings.Setting["Auto Active Buso"] = value
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Setting["Auto Active Buso"] then
            pcall(function()
                if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                end
            end)
        end
    end
end)

SettingFarm:AddToggle("MagnetMon12",{ 
    Text = "Bring Monster",
    Default = _G.Settings.Setting["Bring Monster"], 
    Tooltip = "Bring around Monsters", 
})

Toggles["MagnetMon12"]:OnChanged(function(value)
    _G.Settings.Setting["Bring Monster"] = value
    SaveSettings()
end)

task.spawn(function()
    while task.wait() do
        if _G.Settings.Setting["Bring Monster"] then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                        if InMyNetWork(v.HumanoidRootPart) then
                            v.HumanoidRootPart.CFrame = MonsterPosition
                            v.Humanoid.JumpPower = 0
                            v.Humanoid.WalkSpeed = 0
                            v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.Humanoid:ChangeState(11)
                            v.Humanoid:ChangeState(14)
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                        end
                    end
                end
            end)
        end
    end
end)

task.spawn(function()
    while true do wait()
        if setscriptable then
            setscriptable(game.Players.LocalPlayer,"SimulationRadius",true)
        end
        if sethiddenproperty then
            sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
        end
    end
end)

function InMyNetWork(object)
    if isnetworkowner then
        return isnetworkowner(object)
    else
        if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300 then
            return true
        end
        return false
    end
end

-- [ Fast Attack ]

SettingFarm:AddToggle("AttackFast",{ 
    Text = "Fast Attack",
    Default = _G.Settings.Setting["Fast Attack"], 
    Tooltip = "Fast Attack /w Delay ! Used during at autofarm", 
})

Toggles["AttackFast"]:OnChanged(function(value)
    _G.Settings.Setting["Fast Attack"] = value
    SaveSettings()
end)

-- [ Properties ]

require(game.ReplicatedStorage.Util.CameraShaker):Stop()

local plr = game.Players.LocalPlayer

local CbFw = debug.getupvalues(require(plr.PlayerScripts.CombatFramework))
local CbFw2 = CbFw[2]

function GetCurrentBlade()
    local p13 = CbFw2.activeController
    local ret = p13.blades[1]
    if not ret then return end
    while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
    return ret
end

function AttackNoCD()
    local AC = CbFw2.activeController
    for i = 1, 1 do
        local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(plr.Character,{plr.Character.HumanoidRootPart},60)
        local cac = {}
        local hash = {}
        for k, v in pairs(bladehit) do
            if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                table.insert(cac, v.Parent.HumanoidRootPart)
                hash[v.Parent] = true
            end
        end
        bladehit = cac
        if #bladehit > 0 then
            local u8 = debug.getupvalue(AC.attack, 5)
            local u9 = debug.getupvalue(AC.attack, 6)
            local u7 = debug.getupvalue(AC.attack, 4)
            local u10 = debug.getupvalue(AC.attack, 7)
            local u12 = (u8 * 798405 + u7 * 727595) % u9
            local u13 = u7 * 798405
                (function()
                    u12 = (u12 * u9 + u13) % 1099511627776
                    u8 = math.floor(u12 / u9)
                    u7 = u12 - u8 * u9
                end)()
            u10 = u10 + 1
            debug.setupvalue(AC.attack, 5, u8)
            debug.setupvalue(AC.attack, 6, u9)
            debug.setupvalue(AC.attack, 4, u7)
            debug.setupvalue(AC.attack, 7, u10)
            pcall(function()
                if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
                    AC.animator.anims.basic[1]:Play(0.01,0.01,0.01)
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                    game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
                end
            end)
        end
    end
end
if _G.Settings.Setting["Fast Attack"] then
    local Fast = getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
    local Lop = Fast[2]
    Lop.activeController.timeToNextAttack = (-math.huge^math.huge*math.huge)
    Lop.activeController.attacking = false
    Lop.activeController.timeToNextBlock = 0
    Lop.activeController.humanoid.AutoRotate = 80
    Lop.activeController.increment = 3
    Lop.activeController.blocking = false
    Lop.activeController.hitboxMagnitude = 80
end
spawn(function()
    while task.wait() do
        if _G.Settings.Setting["Fast Attack"]then
            pcall(function()
                repeat task.wait(_G.AttackDelay)
                    AttackNoCD()
                until not _G.Settings.Setting["Fast Attack"]
            end)
        end
    end
end)

SettingFarm:AddDivider()

SettingFarm:AddSlider("DistiMob",{
    Text = "Distance for [ Mob Aura ]",
    Default = _G.Settings.Distan["Distance Mob Aura"],
    Min = 0,
    Max = 5000,
    Rounding = 1,
    Compact = false, 
})

Options["DistiMob"]:OnChanged(function(value)
    _G.Settings.Distan["Distance Mob Aura"] = value
    SaveSettings()
end)

SettingFarm:AddSlider("PositionX",{
    Text = "Distance X",
    Default = _G.Settings.Coords["X"],
    Min = 0,
    Max = 100,
    Rounding = 1,
    Compact = false, 
})

Options["PositionX"]:OnChanged(function(value)
    _G.Settings.Coords["X"] = value
    SaveSettings()
end)

SettingFarm:AddSlider("PositionY",{
    Text = "Distance Y",
    Default = _G.Settings.Coords["Y"],
    Min = 0,
    Max = 100,
    Rounding = 1,
    Compact = false, 
})

Options["PositionY"]:OnChanged(function(value)
    _G.Settings.Coords["Y"] = value
    SaveSettings()
end)

SettingFarm:AddSlider("PositionZ",{
    Text = "Distance Z",
    Default = _G.Settings.Coords["Z"],
    Min = 0,
    Max = 100,
    Rounding = 1,
    Compact = false, 
})

Options["PositionZ"]:OnChanged(function(value)
    _G.Settings.Coords["Z"] = value
    SaveSettings()
end)

-- [ Stats ]

local statpoint = StatsSection:AddLabel("")

spawn(function()
    while task.wait() do
        pcall(function()
            statpoint:SetText("Points  :".." "..game:GetService("Players").LocalPlayer.Data.Points.Value)
        end)
    end
end)

StatsSection:AddToggle("StatFunc1",{
    Text = "Auto Add Melee",
    Default = _G.Settings.Stats["Auto Melee"], 
    Tooltip = "Auto Add Melee",
})

Toggles["StatFunc1"]:OnChanged(function(value)
    _G.Settings.Stats["Auto Melee"] = value
    SaveSettings()
end)

StatsSection:AddToggle("StatFunc2",{
    Text = "Auto Add Defense",
    Default = _G.Settings.Stats["Auto Defense"], 
    Tooltip = "Auto Add Defense",
})

Toggles["StatFunc2"]:OnChanged(function(value)
    _G.Settings.Stats["Auto Defense"] = value
    SaveSettings()
end)

StatsSection:AddToggle("StatFunc3",{
    Text = "Auto Add Sword",
    Default = _G.Settings.Stats["Auto Sword"], 
    Tooltip = "Auto Add Sword",
})

Toggles["StatFunc3"]:OnChanged(function(value)
    _G.Settings.Stats["Auto Sword"] = value
    SaveSettings()
end)

StatsSection:AddToggle("StatFunc4",{
    Text = "Auto Add Gun",
    Default = _G.Settings.Stats["Auto Gun"], 
    Tooltip = "Auto Add Gun",
})

Toggles["StatFunc4"]:OnChanged(function(value)
    _G.Settings.Stats["Auto Gun"] = value
    SaveSettings()
end)

StatsSection:AddToggle("StatFunc5",{
    Text = "Auto Add Fruit",
    Default = _G.Settings.Stats["Auto Fruit"], 
    Tooltip = "Auto Add Fruit",
})

Toggles["StatFunc5"]:OnChanged(function(value)
    _G.Settings.Stats["Auto Fruit"] = value
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Settings.Stats["Auto Melee"] then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",_G.Settings.Stats["Stats Points"])
            end
            if _G.Settings.Stats["Auto Defense"] then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",_G.Settings.Stats["Stats Points"])
            end
            if _G.Settings.Stats["Auto Sword"] then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword",_G.Settings.Stats["Stats Points"])
            end
            if _G.Settings.Stats["Auto Gun"] then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Gun",_G.Settings.Stats["Stats Points"])
            end
            if _G.Settings.Stats["Auto Fruit"] then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Demon Fruit",_G.Settings.Stats["Stats Points"])
            end
        end)
    end
end)

StatsSection:AddSlider("PointSelectStat",{
    Text = "Point for [ Stats ]",
    Default = _G.Settings.Stats["Stats Points"],
    Min = 0,
    Max = 100,
    Rounding = 1,
    Compact = false, 
})

Options["PointSelectStat"]:OnChanged(function(value)
    _G.Settings.Stats["Stats Points"] = value
    SaveSettings()
end)

StatsSection:AddDivider()

-- [ Stats Info ] 

local StatusFunc1 = StatsSection:AddLabel("")

spawn(function()
    pcall(function()
        while task.wait() do
            StatusFunc1:SetText("Melee : "..game:GetService("Players").LocalPlayer.Data.Stats.Melee:WaitForChild("Level").Value)
        end
    end)
end)

local StatusFunc2 = StatsSection:AddLabel("")

spawn(function()
    pcall(function()
        while task.wait() do
            StatusFunc2:SetText("Defense : "..game:GetService("Players").LocalPlayer.Data.Stats.Defense:WaitForChild("Level").Value)
        end
    end)
end)

local StatusFunc3 = StatsSection:AddLabel("")

spawn(function()
    pcall(function()
        while task.wait() do
            StatusFunc3:SetText("Sword : "..game:GetService("Players").LocalPlayer.Data.Stats.Sword:WaitForChild("Level").Value)
        end
    end)
end)

local StatusFunc4 = StatsSection:AddLabel("")

spawn(function()
    pcall(function()
        while task.wait() do
            StatusFunc4:SetText("Gun : "..game:GetService("Players").LocalPlayer.Data.Stats.Gun:WaitForChild("Level").Value)
        end
    end)
end)

local StatusFunc5 = StatsSection:AddLabel("")

spawn(function()
    pcall(function()
        while task.wait() do
            StatusFunc5:SetText("Fruit : "..game:GetService("Players").LocalPlayer.Data.Stats["Demon Fruit"]:WaitForChild("Level").Value)
        end
    end)
end)

-- [ Mastery Settings ]

MasterySetting:AddToggle("SkillZ",{ 
    Text = "Active Skill Z",
    Default = _G.Settings.Mastery["Skill Z"], 
    Tooltip = "Skill active Z", 
})

Toggles["SkillZ"]:OnChanged(function(value)
    _G.Settings.Mastery["Skill Z"] = value
    SaveSettings()
end)

MasterySetting:AddToggle("SkillX",{ 
    Text = "Active Skill X",
    Default = _G.Settings.Mastery["Skill X"], 
    Tooltip = "Skill active x", 
})

Toggles["SkillX"]:OnChanged(function(value)
    _G.Settings.Mastery["Skill X"] = value
    SaveSettings()
end)

MasterySetting:AddToggle("SkillC",{ 
    Text = "Active Skill C",
    Default = _G.Settings.Mastery["Skill C"], 
    Tooltip = "Skill active C", 
})

Toggles["SkillC"]:OnChanged(function(value)
    _G.Settings.Mastery["Skill C"] = value
    SaveSettings()
end)

MasterySetting:AddToggle("SkillV",{ 
    Text = "Active Skill V",
    Default = _G.Settings.Mastery["Skill V"], 
    Tooltip = "Skill active V", 
})

Toggles["SkillV"]:OnChanged(function(value)
    _G.Settings.Mastery["Skill V"] = value
    SaveSettings()
end)

-- [ Select Boss ]

Boss = {}

for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
    if string.find(v.Name, "Boss") then
        if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
        else
            table.insert(Boss, v.Name)
        end
    end
end

local SelectBoss = BossFarm1:AddDropdown("BossFunc1",{
    Default = _G.Settings.Boss["Select Boss"],
    Multi = false,
    Text = "Select Boss",
    Values = Boss,
})

Options["BossFunc1"]:OnChanged(function(value)
    _G.Settings.Boss["Select Boss"] = value
    SaveSettings()
end)

BossFarm1:AddButton("Refresh Boss",function()
    table.clear(Boss)
    for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
        if string.find(v.Name, "Boss") then
            if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
            else
                table.insert(Boss, v.Name)
            end
        end
    end
    SelectBoss:SetValues(Boss)
end)

BossFarm1:AddToggle("BossFunc2",{
    Text = "Auto Farm Boss",
    Default = _G.Settings.Boss["Auto Farm Boss"],
    Tooltip = "Auto Farm the Selected Boss",
})

Toggles["BossFunc2"]:OnChanged(function(value)
    _G.Settings.Boss["Auto Farm Boss"] = value
    CancelTween(_G.Settings.Boss["Auto Farm Boss"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Boss["Auto Farm Boss"] then
            pcall(function()
                CheckBossQuest()
                if MsBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" or MsBoss == "Longma [Lv. 2000] [Boss]" or MsBoss == "Don Swan [Lv. 1000] [Boss]" or MsBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or MsBoss == "Order [Lv. 1250] [Raid Boss]" or MsBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
                    if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == MsBoss then
                                repeat task.wait()
                                    EquipTool(_G.Settings.Setting["Select Weapon"])
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                    MonsterPosition = v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(14)
                                    v.Humanoid:ChangeState(11)
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                    end
                                until _G.Settings.Boss["Auto Farm Boss"] == false or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                        Tween(CFrameBoss)
                    end
                else
                    if _G.Settings.Boss["Auto Boss Quest"] then
                        CheckBossQuest()
                        if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,NameBoss) then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            repeat task.wait()
                                Tween(CFrameQuestBoss)
                            until (CFrameQuestBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Settings.Boss["Auto Farm Boss"]
                            if (CFrameQuestBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuestBoss,LevelQuestBoss)
                            end
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == MsBoss then
                                        repeat task.wait()
                                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,NameBoss) then
                                                EquipTool(_G.Settings.Setting["Select Weapon"])
                                                Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                                MonsterPosition = v.HumanoidRootPart.CFrame
                                                v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid:ChangeState(14)
                                                v.Humanoid:ChangeState(11)
                                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                                end
                                            else
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                            end
                                        until _G.Settings.Boss["Auto Farm Boss"] == false or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            else
                                Tween(CFrameBoss)
                            end
                        end
                    else
                        if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == MsBoss then
                                    repeat task.wait()
                                        EquipTool(_G.Settings.Setting["Select Weapon"])
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                        MonsterPosition = v.HumanoidRootPart.CFrame
                                        v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(14)
                                        v.Humanoid:ChangeState(11)
                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                        end
                                    until _G.Settings.Boss["Auto Farm Boss"] == false or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        else
                            Tween(CFrameBoss)
                        end
                    end
                end
            end)
        end
    end
end)

BossFarm1:AddToggle("BossFunc3",{
    Text = "Accept Quest",
    Default = _G.Settings.Boss["Auto Boss Quest"],
    Tooltip = "Accept Quest for Boss farm",
})

Toggles["BossFunc3"]:OnChanged(function(value)
    _G.Settings.Boss["Auto Boss Quest"] = value
    SaveSettings()
end)

-- [ Mastery ]

MasterySection:AddToggle("MasteryFruitFarm",{
    Text = "Auto Farm Fruit [ Mastery ]",
    Default = _G.Settings.Main["Auto Farm Fruit"],
    Tooltip = "Auto Farm the Mastery",
})

Toggles["MasteryFruitFarm"]:OnChanged(function(value)
    _G.Settings.Main["Auto Farm Fruit"] = value
    CancelTween(_G.Settings.Main["Auto Farm Fruit"])
    SaveSettings()
end)

task.spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Farm Fruit"] then
            pcall(function()
                if not string.find(GetQuestTitle.Text,NameMon) then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if GetQuest.Visible == false then
                    repeat task.wait()
                        Tween(CFrameQuest)
                    until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Settings.Main["Auto Farm Fruit"]
                    if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",QuestName,LevelQuest)
                    end
                elseif GetQuest.Visible == true then
                    CheckQuest()
                    if game.Workspace.Enemies:FindFirstChild(Monster) then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == Monster then
                                    repeat task.wait()
                                        if string.find(GetQuestTitle.Text,NameMon) then
                                            if v.Humanoid.Health <= v.Humanoid.MaxHealth * (_G.Settings.Mastery["Kill Percent Mastery"] / 100) then
                                                EquipTool(game.Players.LocalPlayer.Data.DevilFruit.Value)
                                                Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                                PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                UseSkillMasteryDevilFruit = true
                                                DevilFruitMastery = game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value
                                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
                                                    if _G.Settings.Mastery["Skill Z"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                        wait(.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                    end
                                                    if _G.Settings.Mastery["Skill X"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                        wait(.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                                    end
                                                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
                                                    if _G.Settings.Mastery["Skill Z"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 and game.Players.LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(7.6, 7.676, 3.686) then
                                                    else
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                        wait(.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                    end
                                                    if _G.Settings.Mastery["Skill X"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                        wait(.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                                    end
                                                    if _G.Settings.Mastery["Skill C"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                                        wait(.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                                    end
                                                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = v.HumanoidRootPart.Position
                                                    if _G.Settings.Mastery["Skill Z"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                        wait(.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                    end
                                                    if _G.Settings.Mastery["Skill X"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                        wait(.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                                    end
                                                    if _G.Settings.Mastery["Skill C"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                                        wait(.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                                    end
                                                    if _G.Settings.Mastery["Skill V"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                                        wait(.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                                    end
                                                end
                                            else
                                                EquipTool(_G.Settings.Setting["Select Weapon"])
                                                Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                                MonsterPosition = v.HumanoidRootPart.CFrame
                                                v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid:ChangeState(14)
                                                v.Humanoid:ChangeState(11)
                                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                                end
                                            end
                                        else
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    until not game:GetService("Workspace").Enemies:FindFirstChild(Monster) or not _G.Settings.Main["Auto Farm Fruit"] or not string.find(GetQuestTitle.Text,NameMon) or v.Humanoid.Health <= 0 or not v.Parent or GetQuest.Visible == false
                                end
                            end
                        end
                    else
                        Tween(CFrameMon)
                    end
                end
            end)
        end
    end
end)

MasterySection:AddToggle("MasteryGunFarm",{
    Text = "Auto Farm Gun [ Mastery ]",
    Default = _G.Settings.Main["Auto Farm Gun"],
    Tooltip = "Auto Farm the Mastery",
})

Toggles["MasteryGunFarm"]:OnChanged(function(value)
    _G.Settings.Main["Auto Farm Gun"] = value
    CancelTween(_G.Settings.Main["Auto Farm Gun"])
    SaveSettings()
end)

task.spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Farm Gun"] then
            pcall(function()
                if not string.find(GetQuestTitle.Text,NameMon) then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if GetQuest.Visible == false then
                    repeat task.wait()
                        Tween(CFrameQuest)
                    until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Settings.Main["Auto Farm Gun"]
                    if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",QuestName,LevelQuest)
                    end
                elseif GetQuest.Visible == true then
                    CheckQuest()
                    if game.Workspace.Enemies:FindFirstChild(Monster) then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == Monster then
                                    repeat task.wait()
                                        if string.find(GetQuestTitle.Text,NameMon) then
                                            if v.Humanoid.Health <= v.Humanoid.MaxHealth * (_G.Settings.Mastery["Kill Percent Mastery"] / 100) then
                                                EquipTool(CurrentEquipGun)
                                                Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                                UseGunMastery = true
                                                game:GetService("Players").LocalPlayer.Character[CurrentEquipGun].Cooldown.Value = 0
                                            else
                                                UseGunMastery = false
                                                EquipTool(_G.Settings.Setting["Select Weapon"])
                                                Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                                MonsterPosition = v.HumanoidRootPart.CFrame
                                                v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid:ChangeState(14)
                                                v.Humanoid:ChangeState(11)
                                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                                end
                                            end
                                        else
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    until not game:GetService("Workspace").Enemies:FindFirstChild(Monster) or not _G.Settings.Main["Auto Farm Gun"] or not string.find(GetQuestTitle.Text,NameMon) or v.Humanoid.Health <= 0 or not v.Parent or GetQuest.Visible == false
                                end
                            end
                        end
                    else
                        Tween(CFrameMon)
                    end
                end
            end)
        end
    end
end)

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if UseGunMastery then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.Name == Monster then
                        game:GetService("Players").LocalPlayer.Character[CurrentEquipGun].RemoteFunctionShoot:InvokeServer(v.HumanoidRootPart.Position,v.HumanoidRootPart)
                    else
                        Click()
                    end
                end
            end)
        end
    end)
end)

MasterySection:AddDivider()

MasterySection:AddSlider("KillPerMas5",{
    Text = "Kill Percent for [ Mastery ]",
    Default = _G.Settings.Mastery["Kill Percent Mastery"],
    Min = 0,
    Max = 100,
    Rounding = 1,
    Compact = false, 
})

Options["KillPerMas5"]:OnChanged(function(value)
    _G.Settings.Mastery["Kill Percent Mastery"] = value
    SaveSettings()
end)

-- [ Chests ]

ChestLol:AddToggle("ChestFarm",{ 
    Text = "Auto Farm Chests Tween",
    Default = _G.Settings.Main["Auto Farm Chests"], 
    Tooltip = "Auto Farm Chests (Tween , First Sea , Second Sea , Third Sea)", 
})

Toggles["ChestFarm"]:OnChanged(function(value)
    _G.Settings.Main["Auto Farm Chests"] = value
    CancelTween(_G.Settings.Main["Auto Farm Chests"])
    SaveSettings()
end)

_G.MagnitudeAdd = 0
task.spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Farm Chests"] then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if v.Name:find("Chest") then
                        if game:GetService("Workspace"):FindFirstChild(v.Name) then
                            if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000+_G.MagnitudeAdd then
                                repeat task.wait()
                                    if game:GetService("Workspace"):FindFirstChild(v.Name) then
                                        Tween(v.CFrame)
                                    end
                                until _G.Settings.Main["Auto Farm Chests"] == false or not v.Parent
                                Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                                _G.MagnitudeAdd = _G.MagnitudeAdd+1500
                                break
                            end
                        end
                    end
                end
            end)
        end
    end
end)

ChestLol:AddToggle("ChestFarm123",{ 
    Text = "Auto Farm Chests Fast",
    Default = _G.Settings.Main["Auto Farm Chests Fast"], 
    Tooltip = "Auto Farm Chests (Fast Mode , First Sea , Second Sea , Third Sea)", 
})

Toggles["ChestFarm123"]:OnChanged(function(value)
    _G.Settings.Main["Auto Farm Chests Fast"] = value
    SaveSettings()
end)

task.spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Farm Chests Fast"] then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if v.Name:find("Chest") then
                        if game:GetService("Workspace"):FindFirstChild(v.Name) then
                            ChestTween(v.CFrame)
                        end
                    end
                end
            end)
        end
    end
end)

-- [ Observation ]

local ObservationRange = ObservationSection:AddLabel("")

spawn(function()
    while task.wait() do
        pcall(function()
            ObservationRange:SetText("Ken Range Lv. : "..tostring(math.round(game.Players.LocalPlayer.VisionRadius.value)).."/3000")
        end)
    end
end)

ObservationSection:AddToggle("KenTrain",{ 
    Text = "Auto Train Observation",
    Default = _G.Settings.Observation["Auto Farm Ken"], 
    Tooltip = "Auto Farm Ken Haki at First Sea", 
})

Toggles["KenTrain"]:OnChanged(function(value)
    _G.Settings.Observation["Auto Farm Ken"] = value
    CancelTween(_G.Settings.Observation["Auto Farm Ken"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Observation["Auto Farm Ken"] then
            pcall(function()
                repeat task.wait()
                    if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                        game:GetService("VirtualUser"):CaptureController()
                        game:GetService("VirtualUser"):SetKeyDown("0x65")
                        wait(2)
                        game:GetService("VirtualUser"):SetKeyUp("0x65")
                    end
                until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not _G.Settings.Observation["Auto Farm Ken"]
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Observation["Auto Farm Ken"] then
            pcall(function()
                if game:GetService("Players").LocalPlayer.VisionRadius.Value >= 3000 then
                    Library:Notify("Shadow Hub : Max Points Observation",6)
                    wait(2)
                else
                    if World2 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]") then
                            if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                repeat task.wait()
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                until _G.Settings.Observation["Auto Farm Ken"] == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                            else
                                repeat task.wait()
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)+
                                        wait(1)
                                    if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.Settings.Observation["Auto Farm Ken Hop"] == true then
                                        game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                    end
                                until _G.Settings.Observation["Auto Farm Ken"] == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                            end
                        else
                            Tween(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
                        end
                    elseif World1 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]") then
                            if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                repeat task.wait()
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                until _G.Settings.Observation["Auto Farm Ken"] == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                            else
                                repeat task.wait()
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                    wait(1)
                                    if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.Settings.Observation["Auto Farm Ken Hop"] == true then
                                        game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                    end
                                until _G.Settings.Observation["Auto Farm Ken"] == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                            end
                        else
                            Tween(CFrame.new(5533.29785, 88.1079102, 4852.3916))
                        end
                    elseif World3 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]") then
                            if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                repeat task.wait()
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                until _G.Settings.Observation["Auto Farm Ken"] == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                            else
                                repeat task.wait()
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                    wait(1)
                                    if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.Settings.Observation["Auto Farm Ken Hop"] == true then
                                        game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                    end
                                until _G.Settings.Observation["Auto Farm Ken"] == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                            end
                        else
                            Tween(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
                        end
                    end
                end
            end)
        end
    end
end)

ObservationSection:AddToggle("KenHops",{ 
    Text = "Auto Train Observation + Rejoin",
    Default = _G.Settings.Observation["Auto Farm Ken Hop"], 
    Tooltip = "Ken Haki Hop", 
})

Toggles["KenHops"]:OnChanged(function(value)
    _G.Settings.Observation["Auto Farm Ken Hop"] = value
    SaveSettings()
end)

-- [ Mirage and Full Moon Check ]

if World3 then
local FullMoon = NelzkieSpecial:AddLabel("1")
local MirageCheck = NelzkieSpecial:AddLabel("1")

task.spawn(function()
    while task.wait() do
        pcall(function()
            if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
                FullMoon:SetText("Moon Status : 🌑 100%")
            elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" then
                FullMoon:SetText("Moon Status : 🌒 75%")
            elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
                FullMoon:SetText("Moon Status : 🌓 50%")
            elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
                FullMoon:SetText("Moon Status : 🌗 25%")
            elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
                FullMoon:SetText("Moon Status : 🌖 15%")
            else
                FullMoon:SetText("Moon Status : 🌚 0%")
            end
        end)
    end
end)

task.spawn(function()
    while task.wait() do
        pcall(function()
            if game.Workspace["_WorldOrigin"].Locations:FindFirstChild("Mirage Island") then
                MirageCheck:SetText("Mirage Island 🏝️ : ✅")
            else
                MirageCheck:SetText("Mirage Island 🏝️ : ❌")
            end
        end)
    end
end)
end

if World3 then
NelzkieSpecial:AddToggle("Mirageee",{
    Text = "Auto Mirage Island",
    Default = _G.Settings.Main["Auto Mirage Island"],
    Tooltip = "This function is Auto Mirage Island (Third Sea)",
})

Toggles["Mirageee"]:OnChanged(function(value)
    _G.Settings.Main["Auto Mirage Island"] = value
    CancelTween(_G.Settings.Main["Auto Mirage Island"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Mirage Island"] then
            pcall(function()
                if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                    Tween(game:GetService("Workspace").Map.MysticIsland.PluginGrass.CFrame * CFrame.new(0,1,0))
                else
                    wait(1)
                    Library:Notify("Shadow Hub : Mirage Island Not Found!",6)
                end
            end)
        end
    end
end)
end

-- [ Webhook ]

if World3 then
    local Moon = {
        ['8'] = "http://www.roblox.com/asset/?id=9709149431",
        ['7'] = "http://www.roblox.com/asset/?id=9709149052",
        ['6'] = "http://www.roblox.com/asset/?id=9709143733",
        ['5'] = "http://www.roblox.com/asset/?id=9709150401",
        ['4'] = "http://www.roblox.com/asset/?id=9709135895",
        ['3'] = "http://www.roblox.com/asset/?id=9709139597",
        ['2'] = "http://www.roblox.com/asset/?id=9709150086",
        ['1'] = "http://www.roblox.com/asset/?id=9709149680",
    };
    for i,v in pairs(Moon) do
        if game:GetService("Lighting").Sky.MoonTextureId == v then
            MoonPercent = i / 8 * 100
        end
    end

    for i,v in pairs(game.Players:GetPlayers()) do
        PlayersMin = i
    end

    if game:GetService("Lighting").Sky.MoonTextureId == Moon['1'] then
        MoonIcon = '🌔'
    elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['2'] then
        MoonIcon = '🌓'
    elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['3'] then
        MoonIcon = '🌒'
    elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['4'] then
        MoonIcon = '🌑'
    elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['5'] then
        MoonIcon = '🌘'
    elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['6'] then
        MoonIcon = '🌗'
    elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['7'] then
        MoonIcon = '🌖'
    elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['8'] then
        MoonIcon = '🌕'
    end
    if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
        MirageMessage = '```Spawned ✔️```'
    else
        MirageMessage = '```Not Spawn ❌```'
    end

    MoonMessage = '```'..tostring(MoonPercent..'%'..' : '..MoonIcon)..'```'
    JoinServer = 'game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,'..'\''..tostring(game.JobId)..'\''..')'

    local url = "https://discord.com/api/webhooks/1076711362857812048/RhRbhWfB4imOSgdw3oMcktbZq0d9NyKA_3WukZujNkxwzQz9YSgR0kYl9xpP5l412dnB"
    local data = {
        ["username"] = 'Test',
        ['content'] = '',
        ["avatar_url"] = "",
        ["embeds"] = {
            {
                ["description"] = "**__Full Moon and Mirage Checker__**",
                ["color"] = tonumber(0xff0000),
                ["type"] = "rich",
                ["fields"] =  {
                    {
                        ["name"] = "[:busts_in_silhouette:] Players in Server :",
                        ["value"] = '```'..tostring(PlayersMin)..'/12```'
                    },
                    {
                        ["name"] = "[:page_with_curl:] Job Id :",
                        ["value"] = '```'..tostring(game.JobId)..'```'
                    },
                    {
                        ["name"] = "[:link:] Join Server :",
                        ["value"] = '```'..JoinServer..'```',
                    },
                    {
                        ["name"] = "[:crescent_moon:] Moon Status :",
                        ["value"] = MoonMessage,
                        ["inline"] = true
                    },
                    {
                        ["name"] = "[:island:] Mirage Island Status :",
                        ["value"] = MirageMessage,
                        ["inline"] = true
                    }
                },
                ["footer"] = {
                    ["text"] = "Webhook By xPeachy#7674",
                },
                ["timestamp"] = DateTime.now():ToIsoDate(),
            }
        },
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)
    local headers = {["content-type"] = "application/json"}
    request = http_request or request or HttpPost or syn.request
    local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
    request(abcdef)
end

-- [ Fighting Styles ]

FStyles:AddToggle("Styles1", {
    Text = "Auto Death Step",
    Default = _G.Settings.Melee["Auto Death Step"], 
    Tooltip = "Auto Fully Learn Death Step",
})

Toggles["Styles1"]:OnChanged(function(value)
    _G.Settings.Melee["Auto Death Step"] = value
    CancelTween(_G.Settings.Melee["Auto Death Step"])
    SaveSettings()
    if _G.Settings.Melee["Auto Death Step"] then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
    end
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Melee["Auto Death Step"] then
            pcall(function()
                if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                        _G.Settings.Setting["Select Weapon"] = "Death Step"
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                        _G.Settings.Setting["Select Weapon"] = "Death Step"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value < 400 then
                        _G.Settings.Setting["Select Weapon"] = "Black Leg"
                    end
                elseif _G.Settings.Melee["Auto Death Step"] then
                    if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 400 or game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 400 then
                        if game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor.PhoeyuDoor.Transparency == 0 then
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key") then
                                EquipTool("Library Key")
                                repeat task.wait()
                                    Tween(CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375)) until (CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Settings.Melee["Auto Death Step"]
                                if (CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                                    wait(1.2)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                                    wait(0.5)
                                end
                            elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                if v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
                                                    repeat task.wait()
                                                        EquipTool(_G.Settings.Setting["Select Weapon"])
                                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                                        MonsterPosition = v.HumanoidRootPart.CFrame
                                                        v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                        v.Humanoid.JumpPower = 0
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid:ChangeState(14)
                                                        v.Humanoid:ChangeState(11)
                                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                                        end
                                                    until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.Melee["Auto Death Step"] == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key")
                                                end
                                            end
                                        end
                                    else
                                        Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]").HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                    end
                                end
                            end
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                    end
                end
            end)
        end
    end
end)

FStyles:AddToggle("Styles2",{
    Text = "Auto Super Human",
    Default = _G.Settings.Melee["Auto Super Human"], 
    Tooltip = "Auto Learn Super Human, Quite Buggy [Beta]",
})

Toggles["Styles2"]:OnChanged(function(value)
    _G.Settings.Melee["Auto Super Human"] = value
    CancelTween(_G.Settings.Melee["Auto Super Human"])
    SaveSettings()
    if _G.Settings.Melee["Auto Super Human"] then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
    end
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Melee["Auto Super Human"] then
            pcall(function()
                if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 150000 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
                        _G.Settings.Setting["Select Weapon"] = "Superhuman"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299 then
                            _G.Settings.Setting["Select Weapon"] = "Black Leg"
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299 then
                            _G.Settings.Setting["Select Weapon"] = "Electro"
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299 then
                            _G.Settings.Setting["Select Weapon"] = "Fishman Karate"
                        end
                        if game.Players.LocalPlayer.BackpacUnEquipWeaponk:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299 then
                            _G.Settings.Setting["Select Weapon"] = "Dragon Claw"
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
                        else
                            local Fragment = game:GetService("Players")["Localplayer"].Data.Fragments.Value
                            if Fragment <= 1499 then
                                _G.Settings.Melee["Auto Super Human"] = true
                            else
                                _G.Settings.Melee["Auto Super Human"] = false
                            end
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                        end
                    end
                end
            end)
        end
    end
end)

FStyles:AddToggle("Styles3",{
    Text = "Auto Sharkman Karate",
    Default = _G.Settings.Melee["Auto Shark Man Karate"], 
    Tooltip = "Auto Fully Learn Sharkman Karate",
})

Toggles["Styles3"]:OnChanged(function(value)
    _G.Settings.Melee["Auto Shark Man Karate"] = value
    CancelTween(_G.Settings.Melee["Auto Shark Man Karate"])
    SaveSettings()
    if _G.Settings.Melee["Auto Shark Man Karate"] then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
    end
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Melee["Auto Shark Man Karate"] then
            pcall(function()
                if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sharkman Karate") then
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                            _G.Settings.Setting["Select Weapon"] = "Sharkman Karate"
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                            _G.Settings.Setting["Select Weapon"] = "Sharkman Karate"
                        end
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 400 then
                            _G.Settings.Setting["Select Weapon"] = "Fishman Karate"
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    end
                elseif _G.Settings.Melee["Auto Shark Man Karate"] then
                    if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then
                        if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"),"keys") then
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key") then
                                repeat task.wait()
                                    Tween(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365) until (CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Settings.Melee["Auto Shark Man Karate"]
                                if (CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                                    wait(1.2)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                    wait(0.5)
                                end
                            elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                if v.Name == "Tide Keeper [Lv. 1475] [Boss]" then
                                                    repeat task.wait()
                                                        EquipTool(_G.Settings.Setting["Select Weapon"])
                                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                                        MonsterPosition = v.HumanoidRootPart.CFrame
                                                        v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                        v.Humanoid.JumpPower = 0
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid:ChangeState(14)
                                                        v.Humanoid:ChangeState(11)
                                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                                        end
                                                    until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.Melee["Auto Shark Man Karate"] == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key")
                                                end
                                            end
                                        end
                                    else
                                        Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]").HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                    end
                                end
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    end
                end
            end)
        end
    end
end)

FStyles:AddToggle("Styles4",{
    Text = "Auto Electric Claw",
    Default = _G.Settings.Melee["Auto Electric Claw"], 
    Tooltip = "Auto Fully Learn Electric Claw, Required : 400 Mastery Electro and 5000 Fragments and 5,000,000Beli",
})

Toggles["Styles4"]:OnChanged(function(value)
    _G.Settings.Melee["Auto Electric Claw"] = value
    CancelTween(_G.Settings.Melee["Auto Electric Claw"])
    SaveSettings()
    if _G.Settings.Melee["Auto Electric Claw"] then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
    end
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Melee["Auto Electric Claw"] then
            pcall(function()
                if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                    if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value < 400 then
                        _G.Settings.Setting["Select Weapon"] = "Electro"
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value < 400 then
                        _G.Settings.Setting["Select Weapon"] = "Electro"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
                        local v175 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true)
                        if v175 == 4 then
                            local v176 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
                            if v176 == nil then
                                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                        end
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
                        local v175 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true)
                        if v175 == 4 then
                            local v176 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
                            if v176 == nil then
                                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                        end
                    end
                end
            end)
        end
    end
end)

FStyles:AddToggle("Styles5",{
    Text = "Auto Dragon Talon",
    Default = _G.Settings.Melee["Auto Dragon Talon"], 
    Tooltip = "Auto Fully Learn Dragon Talon, Required : Fire Essence 5000 Fragments and 5,000,000 Beli",
})

Toggles["Styles5"]:OnChanged(function(value)
    _G.Settings.Melee["Auto Dragon Talon"] = value
    CancelTween(_G.Settings.Melee["Auto Dragon Talon"])
    SaveSettings()
    if _G.Settings.Melee["Auto Dragon Talon"] then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
    end
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Melee["Auto Dragon Talon"] then
            pcall(function()
                if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                        _G.Settings.Setting["Select Weapon"] = "Dragon Claw"
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value <= 399 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                        _G.Settings.Setting["Select Weapon"] = "Dragon Claw"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                        _G.Settings.Setting["Select Weapon"] = "Dragon Claw"
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true) == 3 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true)
                        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true) == 1 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                        end
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                        _G.Settings.Setting["Select Weapon"] = "Dragon Claw"
                        if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon",true) == 3 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true)
                        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true) == 1 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                        end
                    end
                end
            end)
        end
    end
end)

FStyles:AddToggle("Styles6",{
    Text = "Auto God Human",
    Default = _G.Settings.Melee["Auto God Human"], 
    Tooltip = "Auto Fully Learn God Human Required : 400 Mastery at all FightingStyles with 20FishTail Material and 10Dragon Scale Material and 20MagmaOre Material and 10Mystic Droplet Material",
})

Toggles["Styles6"]:OnChanged(function(value)
    _G.Settings.Melee["Auto God Human"] = value
    CancelTween(_G.Settings.Melee["Auto God Human"])
    SaveSettings()
    if _G.Settings.Melee["Auto God Human"] then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
    end
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Melee["Auto God Human"] then
            pcall(function()
                if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true)) then
                    _G.Settings.Setting["Select Weapon"] = "Godhuman"
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
                else
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value <= 399 and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value <= 399 and  game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value <= 399 and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value <= 399 then
                        if not World3 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                        elseif World3 then
                            if CheckMaterial("Fish Tail") <= 20 and World3 then
                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        if v.Name == "Fishman Raider [Lv. 1775]" or v.Name == "Fishman Captain [Lv. 1800]" then
                                            repeat task.wait()
                                                EquipTool(_G.Settings.Setting["Select Weapon"])
                                                Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                                MonsterPosition = v.HumanoidRootPart.CFrame
                                                v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid:ChangeState(14)
                                                v.Humanoid:ChangeState(11)
                                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                                end
                                            until not _G.Settings.Melee["Auto God Human"] or not v.Parent or v.Humanoid.Health <= 0
                                        end
                                    else
                                        Tween(CFrame.new(-10993,332,-8940))
                                    end
                                end
                            elseif CheckMaterial("Dragon Scale") <= 10 and World3 then
                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        if v.Name == "Fishman Raider [Lv. 1775]" or v.Name == "Fishman Captain [Lv. 1800]" then
                                            repeat task.wait()
                                                EquipTool(_G.Settings.Setting["Select Weapon"])
                                                Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                                MonsterPosition = v.HumanoidRootPart.CFrame
                                                v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid:ChangeState(14)
                                                v.Humanoid:ChangeState(11)
                                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                                end
                                            until not _G.Settings.Melee["Auto God Human"] or not v.Parent or v.Humanoid.Health <= 0
                                        end
                                    else
                                        Tween(CFrame.new(6594,383,139))
                                    end
                                end
                                if CheckMaterial("Dragon Scale") >= 10 and CheckMaterial("Fish Tail") >= 20 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                end
                            end
                        elseif not World2 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                        elseif World2 then
                            if CheckMaterial("Magma Ore") <= 20 and World2 then
                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        if v.Name == "Magma Ninja [Lv. 1175]" then
                                            repeat task.wait()
                                                EquipTool(_G.Settings.Setting["Select Weapon"])
                                                Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                                MonsterPosition = v.HumanoidRootPart.CFrame
                                                v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid:ChangeState(14)
                                                v.Humanoid:ChangeState(11)
                                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                                end
                                            until not _G.Settings.Melee["Auto God Human"] or not v.Parent or v.Humanoid.Health <= 0
                                        end
                                    else
                                        Tween(CFrame.new(-5428,78,-5959))
                                    end
                                end
                            elseif CheckMaterial("Mystic Droplet") <= 10 and World2 then
                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        if v.Name == "Water Fighter [Lv. 1450]" then
                                            repeat task.wait()
                                                EquipTool(_G.Settings.Setting["Select Weapon"])
                                                Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                                MonsterPosition = v.HumanoidRootPart.CFrame
                                                v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid:ChangeState(14)
                                                v.Humanoid:ChangeState(11)
                                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                                end
                                            until not _G.Settings.Melee["Auto God Human"] or not v.Parent or v.Humanoid.Health <= 0
                                        end
                                    else
                                        Tween(CFrame.new(-3385,239,-10542))
                                    end
                                end
                                if not World3 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                elseif World3 then
                                    if CheckMaterial("Mystic Droplet") >= 10 and CheckMaterial("Magma Ore") >= 20 and CheckMaterial("Dragon Scale") >= 10 and CheckMaterial("Fish Tail") >= 20 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
                                        wait(.3)
                                        _G.Settings.Main["Auto Farm Level"] = true
                                        print("Succeed")
                                        if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true)) then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true)
                                            wait(.3)
                                            _G.Settings.Main["Auto Farm Level"] = true
                                            print("Succeed")
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

-- [ Elite Hunter ]

local EliteHunterStatus = InfoStatusElite:AddLabel("")

spawn(function()
    while task.wait() do
        pcall(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                EliteHunterStatus:SetText("Elite Boss Spawned : ✅")
            else
                EliteHunterStatus:SetText("Elite Boss Spawned : ❌")
            end
        end)
    end
end)

local EliteProgress = InfoStatusElite:AddLabel("")

spawn(function()
    pcall(function()
        while task.wait() do
            EliteProgress:SetText("Elite Boss Killed : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))
        end
    end)
end)

InfoStatusElite:AddToggle("EliteHunterFunc1",{
    Text = "Auto Elite Hunter",
    Default = _G.Settings.Main["Auto Elite Hunter"],
    Tooltip = "Auto Elite Hunter Boss Quest (Third Sea)",
})

Toggles["EliteHunterFunc1"]:OnChanged(function(value)
    _G.Settings.Main["Auto Elite Hunter"] = value
    CancelTween(_G.Settings.Main["Auto Elite Hunter"])
    SaveSettings()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Elite Hunter"] then
            pcall(function()
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
                                        repeat task.wait()
                                            EquipTool(_G.Settings.Setting["Select Weapon"])
                                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                            MonsterPosition = v.HumanoidRootPart.CFrame
                                            v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid:ChangeState(14)
                                            v.Humanoid:ChangeState(11)
                                            v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                            end
                                        until _G.Settings.Main["Auto Elite Hunter"] == false or v.Humanoid.Health <= 0 or not v.Parent
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
                                Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
                                Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
                                Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                            end
                        end
                    end
                end
            end)
        end
    end
end)

-- [ Cake Prince ]

local CakePrinceStatus = InfoStatusCake:AddLabel("")

spawn(function()
    while task.wait() do
        pcall(function()
                if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                    CakePrinceStatus:SetText("Mob Killed Cake : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41))
                elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                    CakePrinceStatus:SetText("Mob Killed Cake : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40))
                elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                    CakePrinceStatus:SetText("Mob Killed Cake : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39))
                else
                    CakePrinceStatus:SetText("Portal Opened!")
            end
        end)
    end
end)

local CakePrinceStatus12 = InfoStatusCake:AddLabel("")

spawn(function()
    while task.wait() do
        pcall(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                CakePrinceStatus12:SetText("Portal Opened : ✅")
            else
                CakePrinceStatus12:SetText("Portal Opened : ❌")
            end
        end)
    end
end)

InfoStatusCake:AddToggle("CakePrinceFunc1",{
    Text = "Auto Cake Prince",
    Default = _G.Settings.Main["Auto Cake Prince"],
    Tooltip = "Auto Cake Prince 500 Progress /w Auto Kill Cake Prince (Third Sea)",
})

Toggles["CakePrinceFunc1"]:OnChanged(function(value)
    _G.Settings.Main["Auto Cake Prince"] = value
    CancelTween(_G.Settings.Main["Auto Cake Prince"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Cake Prince"] then
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
            if game.ReplicatedStorage:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if _G.Settings.Main["Auto Cake Prince"] and v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EquipTool(_G.Settings.Setting["Select Weapon"])
                                Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                MonsterPosition = v.HumanoidRootPart.CFrame
                                v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid:ChangeState(14)
                                v.Humanoid:ChangeState(11)
                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                end
                            until not _G.Settings.Main["Auto Cake Prince"] or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                else
                    if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 and (CFrame.new(-1990.672607421875, 4532.99951171875, -14973.6748046875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 then
                        Tween(CFrame.new(-2151.82153, 149.315704, -12404.9053))
                    end
                end
            else
                if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    EquipTool(_G.Settings.Setting["Select Weapon"])
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                    MonsterPosition = v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(14)
                                    v.Humanoid:ChangeState(11)
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                    end
                                until not _G.Settings.Main["Auto Cake Prince"] or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    Tween(CFrame.new(-1980.4383544921875, 71.11714172363281, -12983.841796875))
                end
            end
        end
    end
end)

-- [ Automatics Third Sea ]

AutoMatics1:AddToggle("MuskeeterHat",{
    Text = "Auto Muskeeter Hat",
    Default = _G.Settings.Main["Auto Musketeer Hat"], 
    Tooltip = "Auto Muskeeter Hat", 
})

Toggles["MuskeeterHat"]:OnChanged(function(value)
    _G.Settings.Main["Auto Musketeer Hat"] = value
    CancelTween(_G.Settings.Main["Auto Musketeer Hat"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Musketeer Hat"] then
            pcall(function()
                if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Forest Pirate [Lv. 1825]" then
                                    repeat task.wait()
                                        EquipTool(_G.Settings.Setting["Select Weapon"])
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                        MonsterPosition = v.HumanoidRootPart.CFrame
                                        v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(14)
                                        v.Humanoid:ChangeState(11)
                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                        end
                                    until not _G.Settings.Main["Auto Musketeer Hat"] or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            Tween(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
                        end
                    else
                        Tween(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                        if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
                                    repeat task.wait()
                                        EquipTool(_G.Settings.Setting["Select Weapon"])
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                        MonsterPosition = v.HumanoidRootPart.CFrame
                                        v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(14)
                                        v.Humanoid:ChangeState(11)
                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                        end
                                    until not _G.Settings.Main["Auto Musketeer Hat"] or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            Tween(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
                        end
                    else
                        Tween(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                        if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 2 then
                    Tween(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
                end
            end)
        end
    end
end)

AutoMatics1:AddToggle("KenHakiV2",{
    Text = "Auto Observation Haki V2",
    Default = _G.Settings.Main["Auto Ken-Haki V2"], 
    Tooltip = "Auto Ken-Haki V2", 
})

Toggles["KenHakiV2"]:OnChanged(function(value)
    _G.Settings.Main["Auto Ken-Haki V2"] = value
    CancelTween(_G.Settings.Main["Auto Ken-Haki V2"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Ken-Haki V2"] then
            pcall(function()
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Start") == 0 then
                    Tween(CFrame.new(-10920.125, 624.20275878906, -10266.995117188))
                    wait(1.1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Buy")
                else
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fruit Bowl") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") then
                        Tween(CFrame.new(-10920.125, 624.20275878906, -10266.995117188))
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Start")
                    else
                        if game:GetService("Workspace").AppleSpawner:FindFirstChild("Apple") then
                            game:GetService("Workspace").AppleSpawner:FindFirstChild("Apple").Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        else
                            if game:GetService("Workspace").BananaSpawne:FindFirstChild("Banana") then
                                game:GetService("Workspace").BananaSpawne:FindFirstChild("Banana").Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                            else
                                if game:GetService("Workspace").PineappleSpawner:FindFirstChild("Pineapple") then
                                    game:GetService("Workspace").PineappleSpawner:FindFirstChild("Pineapple").Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                end
                            end
                        end
                        if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Apple") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Apple")) and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pineapple") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pineapple")) and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Banana") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Banana")) then
                            Tween(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625))
                            wait(1.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
                            wait(.5)
                        end
                    end
                end
            end)
        end
    end
end)

AutoMatics1:AddToggle("SerpentBow",{
    Text = "Auto Serpent Bow",
    Default = _G.Settings.Main["Auto Serpent Bow"], 
    Tooltip = "Auto Serpent Bow", 
})

Toggles["SerpentBow"]:OnChanged(function(value)
    _G.Settings.Main["Auto Serpent Bow"] = value
    CancelTween(_G.Settings.Main["Auto Serpent Bow"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Serpent Bow"] then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            if v.Name == "Island Empress [Lv. 1675] [Boss]" then
                                repeat task.wait()
                                    EquipTool(_G.Settings.Setting["Select Weapon"])
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                    MonsterPosition = v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(14)
                                    v.Humanoid:ChangeState(11)
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                    end
                                until not _G.Settings.Main["Auto Serpent Bow"] or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Island Empress [Lv. 1675] [Boss]").HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                end
            end)
        end
    end
end)

AutoMatics1:AddToggle("HolyTorch",{
    Text = "Auto Holy Torch",
    Default = _G.Settings.Main["Auto Holy Torch"], 
    Tooltip = "Auto Light up Torches", 
})

Toggles["HolyTorch"]:OnChanged(function(value)
    _G.Settings.Main["Auto Holy Torch"] = value
    CancelTween(_G.Settings.Main["Auto Holy Torch"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Holy Torch"] then
            pcall(function()
                if game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") and game:GetService("Workspace").Map.Turtle.TushitaGate.TushitaGate.Transparency == 1 then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") then
                        EquipTool("Holy Torch")
                    elseif game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
                        if game:GetService("Workspace").Map.Turtle.QuestTorches.Torch1.Particles.Main.Enabled ~= true then
                            if (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                Tween(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch1.Position,game:GetService("Workspace").Map.Turtle.QuestTorches.Torch1.CFrame)
                            elseif (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.Turtle.QuestTorches.Torch1.CFrame
                            end
                        elseif game:GetService("Workspace").Map.Turtle.QuestTorches.Torch2.Particles.Main.Enabled ~= true then
                            if (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch2.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                Tween(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch2.Position,game:GetService("Workspace").Map.Turtle.QuestTorches.Torch2.CFrame)
                            elseif (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch2.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.Turtle.QuestTorches.Torch2.CFrame
                            end
                        elseif game:GetService("Workspace").Map.Turtle.QuestTorches.Torch3.Particles.Main.Enabled ~= true then
                            if (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch3.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                Tween(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch3.Position,game:GetService("Workspace").Map.Turtle.QuestTorches.Torch3.CFrame)
                            elseif (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch3.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.Turtle.QuestTorches.Torch3.CFrame
                            end
                        elseif game:GetService("Workspace").Map.Turtle.QuestTorches.Torch4.Particles.Main.Enabled ~= true then
                            if (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch4.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                Tween(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch4.Position,game:GetService("Workspace").Map.Turtle.QuestTorches.Torch4.CFrame)
                            elseif (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch4.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.Turtle.QuestTorches.Torch4.CFrame
                            end
                        elseif game:GetService("Workspace").Map.Turtle.QuestTorches.Torch5.Particles.Main.Enabled ~= true then
                            if (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch5.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                Tween(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch5.Position,game:GetService("Workspace").Map.Turtle.QuestTorches.Torch5.CFrame)
                            elseif (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch5.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.Turtle.QuestTorches.Torch5.CFrame
                            end
                        end
                    else
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Waterfall.SecretRoom.Room.Door.Door.Hitbox.CFrame
                    end
                end
            end)
        end
    end
end)

AutoMatics1:AddToggle("BoneFarm",{
    Text = "Auto Farm Bone",
    Default = _G.Settings.Main["Auto Farm Bone"], 
    Tooltip = "Auto Farm Bone", 
})

Toggles["BoneFarm"]:OnChanged(function(value)
    _G.Settings.Main["Auto Farm Bone"] = value
    CancelTween(_G.Settings.Main["Auto Farm Bone"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Farm Bone"] then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
                                repeat task.wait()
                                    EquipTool(_G.Settings.Setting["Select Weapon"])
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                    MonsterPosition = v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(14)
                                    v.Humanoid:ChangeState(11)
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                    end
                                until not _G.Settings.Main["Auto Farm Bone"] or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    Tween(CFrame.new(-9565.4375, 217.78927612304688, 6235.67431640625))
                end
            end)
        end
    end
end)

AutoMatics1:AddToggle("Sswords2",{
    Text = "Auto Buddy Sword",
    Default = _G.Settings.Main["Auto Buddy Sword"],
    Tooltip = "Auto Buddy Sword by Killing Cake Queen on Third Sea",
})

Toggles["Sswords2"]:OnChanged(function(value)
    _G.Settings.Main["Auto Buddy Sword"] = value
    CancelTween(_G.Settings.Main["Auto Buddy Sword"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Buddy Sword"] then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if v.Name == "Cake Queen [Lv. 2175] [Boss]" then
                                repeat task.wait()
                                    EquipTool(_G.Settings.Setting["Select Weapon"])
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                    MonsterPosition = v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(14)
                                    v.Humanoid:ChangeState(11)
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                    end
                                until not _G.Settings.Main["Auto Buddy Sword"] or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]").HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                end
            end)
        end
    end
end)

AutoMatics1:AddToggle("Sswords4",{
    Text = "Auto Yama",
    Default = _G.Settings.Main["Auto Yama"],
    Tooltip = "Yama Requirements -> 30 EliteHunter Boss Killed on Third Sea",
})

Toggles["Sswords4"]:OnChanged(function(value)
    _G.Settings.Main["Auto Yama"] = value
    CancelTween(_G.Settings.Main["Auto Yama"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Yama"] then
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
                repeat task.wait()
                    fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.Settings.Main["Auto Yama"]
            end
        end
    end
end)

AutoMatics1:AddToggle("Sswords5",{
    Text = "Auto Hallow Scythe",
    Default = _G.Settings.Main["Auto Hallow Sycthe"],
    Tooltip = "Auto Hallow Scythe by Killing Soul Reaper on Third Sea",
})

Toggles["Sswords5"]:OnChanged(function(value)
    _G.Settings.Main["Auto Hallow Sycthe"] = value
    CancelTween(_G.Settings.Main["Auto Hallow Sycthe"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Hallow Sycthe"] then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if v.Name == "Soul Reaper [Lv. 2100] [Raid Boss]" then
                                repeat task.wait()
                                    EquipTool(_G.Settings.Setting["Select Weapon"])
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                    MonsterPosition = v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(14)
                                    v.Humanoid:ChangeState(11)
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                    end
                                until not _G.Settings.Main["Auto Hallow Sycthe"] or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                        repeat task.wait()
                            Tween(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
                            wait()
                        until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10
                        EquipTool("Hallow Essence")
                    else
                        Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                    end
                end
            end)
        end
    end
end)

AutoMatics1:AddToggle("Sswords6",{
    Text = "Auto Cavander",
    Default = _G.Settings.Main["Auto Cavander"],
    Tooltip = "Auto Cavender by Killing Beautiful Pirate on Third Sea",
})

Toggles["Sswords6"]:OnChanged(function(value)
    _G.Settings.Main["Auto Cavander"] = value
    CancelTween(_G.Settings.Main["Auto Cavander"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Cavander"] then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
                                repeat task.wait()
                                    EquipTool(_G.Settings.Setting["Select Weapon"])
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                    MonsterPosition = v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(14)
                                    v.Humanoid:ChangeState(11)
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                    end
                                until not _G.Settings.Main["Auto Cavander"] or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]").HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                end
            end)
        end
    end
end)

AutoMatics1:AddToggle("Sswords7",{
    Text = "Auto Tushita",
    Default = _G.Settings.Main["Auto Tushita"],
    Tooltip = "Auto Tushita by Killing Longma on Third Sea",
})

Toggles["Sswords7"]:OnChanged(function(value)
    _G.Settings.Main["Auto Tushita"] = value
    CancelTween(_G.Settings.Main["Auto Tushita"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Tushita"] then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if v.Name == "Longma [Lv. 2000] [Boss]" then
                                repeat task.wait()
                                    EquipTool(_G.Settings.Setting["Select Weapon"])
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                    MonsterPosition = v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(14)
                                    v.Humanoid:ChangeState(11)
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                    end
                                until not _G.Settings.Main["Auto Tushita"] or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Longma [Lv. 2000] [Boss]").HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                end
            end)
        end
    end
end)

AutoMatics1:AddToggle("Sswords8",{
    Text = "Auto Dark Dagger",
    Default = _G.Settings.Main["Auto Dark Dagger"],
    Tooltip = "Auto Dark Dagger by Killing rip_indra on Third Sea",
})

Toggles["Sswords8"]:OnChanged(function(value)
    _G.Settings.Main["Auto Dark Dagger"] = value
    CancelTween(_G.Settings.Main["Auto Dark Dagger"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Dark Dagger"] then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if v.Name == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
                                repeat task.wait()
                                    EquipTool(_G.Settings.Setting["Select Weapon"])
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                    MonsterPosition = v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(14)
                                    v.Humanoid:ChangeState(11)
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                    end
                                until not _G.Settings.Main["Auto Dark Dagger"] or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                end
            end)
        end
    end
end)

AutoMatics1:AddToggle("DoughKingV2",{
    Text = "Auto Dough King V2",
    Default = _G.Settings.Main["Auto Dough King V2"],
    Tooltip = "Auto Fully Dough King V2 (Third Sea)",
})

Toggles["DoughKingV2"]:OnChanged(function(value)
    _G.Settings.Main["Auto Dough King V2"] = value
    CancelTween(_G.Settings.Main["Auto Dough King V2"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Dough King V2"] then
            pcall(function()
                if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                    if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc"),"Where") then
                        warn("Not Have Enough Material")
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc")
                    end
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") then
                    if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),"Do you want to open the portal now?") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                    else
                        if game.Workspace.Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game.Workspace.Enemies:FindFirstChild("Head Baker [Lv. 2275]") or game.Workspace.Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]")  then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if (v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Cookie Crafter [Lv. 2200]") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipTool(_G.Settings.Setting["Select Weapon"])
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                        MonsterPosition = v.HumanoidRootPart.CFrame
                                        v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(14)
                                        v.Humanoid:ChangeState(11)
                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                        end
                                    until _G.Settings.Main["Auto Dough King V2"] == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        else
                            Tween(CFrame.new(-1820.0634765625, 210.74781799316406, -12297.49609375))
                        end
                    end
                elseif game.ReplicatedStorage:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Dough King [Lv. 2300] [Raid Boss]" then
                                repeat task.wait()
                                    EquipTool(_G.Settings.Setting["Select Weapon"])
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                    MonsterPosition = v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(14)
                                    v.Humanoid:ChangeState(11)
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                    end
                                until _G.Settings.Main["Auto Dough King V2"] == false or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                        Tween(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875))
                    end
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Red Key") or game.Players.LocalPlayer.Character:FindFirstChild("Red Key") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakeScientist","Check")
                else
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            repeat task.wait()
                                                EquipTool(_G.Settings.Setting["Select Weapon"])
                                                Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                                MonsterPosition = v.HumanoidRootPart.CFrame
                                                v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid:ChangeState(14)
                                                v.Humanoid:ChangeState(11)
                                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                                end
                                            until _G.Settings.Main["Auto Dough King V2"] == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice")
                                        end
                                    end
                                end
                            else
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
                                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
                                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
                                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                end
                            end
                        end
                    else
                        wait(0.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                    end
                end
            end)
        end
    end
end)

AutoMatics1:AddToggle("EssentialsFunc1",{
    Text = "Auto Rainbow Haki",
    Default = _G.Settings.Main["Auto Rainbow Haki"], 
    Tooltip = "Rainbow Haki will be Obtained after Killing 5 Bosses on Third Sea",
})

Toggles["EssentialsFunc1"]:OnChanged(function(value)
    _G.Settings.Main["Auto Rainbow Haki"] = value
    CancelTween(_G.Settings.Main["Auto Rainbow Haki"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Rainbow Haki"] then
            pcall(function()
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    Tween(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
                    if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                        wait(1.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Stone") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Stone [Lv. 1550] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Stone [Lv. 1550] [Boss]" then
                                repeat task.wait()
                                    EquipTool(_G.Settings.Setting["Select Weapon"])
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                    MonsterPosition = v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(14)
                                    v.Humanoid:ChangeState(11)
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                    end
                                until not _G.Settings.Main["Auto Rainbow Haki"] or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                            end
                        end
                    else
                        Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Stone [Lv. 1550] [Boss]").HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Island Empress") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Island Empress [Lv. 1675] [Boss]" then
                                repeat task.wait()
                                    EquipTool(_G.Settings.Setting["Select Weapon"])
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                    MonsterPosition = v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(14)
                                    v.Humanoid:ChangeState(11)
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                    end
                                until not _G.Settings.Main["Auto Rainbow Haki"] or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                            end
                        end
                    else
                        Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Island Empress [Lv. 1675] [Boss]").HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                    end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Kilo Admiral") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
                                repeat task.wait()
                                    EquipTool(_G.Settings.Setting["Select Weapon"])
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                    MonsterPosition = v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(14)
                                    v.Humanoid:ChangeState(11)
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                    end
                                until not _G.Settings.Main["Auto Rainbow Haki"] or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                            end
                        end
                    else
                        Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]").HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                    end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Captain Elephant") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
                                repeat task.wait()
                                    EquipTool(_G.Settings.Setting["Select Weapon"])
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                    MonsterPosition = v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(14)
                                    v.Humanoid:ChangeState(11)
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                    end
                                until not _G.Settings.Main["Auto Rainbow Haki"] or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                            end
                        end
                    else
                        Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant [Lv. 1875] [Boss]").HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                    end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Beautiful Pirate") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
                                repeat task.wait()
                                    EquipTool(_G.Settings.Setting["Select Weapon"])
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                    MonsterPosition = v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(14)
                                    v.Humanoid:ChangeState(11)
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                    end
                                until not _G.Settings.Main["Auto Rainbow Haki"] or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                            end
                        end
                    else
                        Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]").HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                    end
                else
                    Tween(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
                    if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                        wait(1.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                    end
                end
            end)
        end
    end
end)

AutoMatics1:AddToggle("TwinHookFunc1",{
    Text = "Auto Twin Hooks",
    Default = _G.Settings.Main["Auto Twin Hooks"], 
    Tooltip = "This function is Auto Twin Hooks",
})

Toggles["TwinHookFunc1"]:OnChanged(function(value)
    _G.Settings.Main["Auto Twin Hooks"] = value
    CancelTween(_G.Settings.Main["Auto Twin Hooks"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Twin Hooks"] then
            pcall(function()
                if game.ReplicatedStorage:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") or game.Workspace.Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                    if game.Workspace.Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == "Captain Elephant [Lv. 1875] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    EquipTool(_G.Settings.Setting["Select Weapon"])
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                    MonsterPosition = v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(14)
                                    v.Humanoid:ChangeState(11)
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                    end
                                until _G.Settings.Main["Auto Twin Hooks"] or v.Humanoid.Health <= 0 or not v.Parent
                            end
                        end
                    else
                        Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant [Lv. 1875] [Boss]").HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                    end
                end
            end)
        end
    end
end)

AutoMatics1:AddToggle("DummyTrain",{
    Text = "Auto Train Dummy",
    Default = _G.Settings.Main["Auto Training Dummy"], 
    Tooltip = "Auto Train Dummy (Third Sea)", 
})

Toggles["DummyTrain"]:OnChanged(function(value)
    _G.Settings.Main["Auto Training Dummy"] = value
    CancelTween(_G.Settings.Main["Auto Training Dummy"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Training Dummy"] then
            pcall(function()
                if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Training Dummy") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ArenaTrainer")
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Training Dummy") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Training Dummy [Lv. 1500]") then
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    if v.Name == "Training Dummy [Lv. 1500]" then
                                        repeat task.wait()
                                            EquipTool(_G.Settings.Setting["Select Weapon"])
                                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                            MonsterPosition = v.HumanoidRootPart.CFrame
                                            v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid:ChangeState(14)
                                            v.Humanoid:ChangeState(11)
                                            v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                            end
                                        until not _G.Settings.Main["Auto Training Dummy"] or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        else
                            Tween(CFrame.new(3758.32470703125, 121.44178009033203, 255.39100646972656))
                        end
                    end
                end
            end)
        end
    end
end)

-- [ Automatics Second Sea ]

AutoMatics2:AddToggle("EctoplasmFarm",{
    Text = "Auto Farm Ectoplasm",
    Default = _G.Settings.Main["Auto Farm Ectoplasm"],
    Tooltip = "Auto Farm Ectoplasm",
})

Toggles["EctoplasmFarm"]:OnChanged(function(value)
    _G.Settings.Main["Auto Farm Ectoplasm"] = value
    CancelTween(_G.Settings.Main["Auto Farm Ectoplasm"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Farm Ectoplasm"] then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand [Lv. 1250]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward [Lv. 1300]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer [Lv. 1325]") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if v.Name == "Ship Deckhand [Lv. 1250]" or v.Name == "Ship Engineer [Lv. 1275]" or v.Name == "Ship Steward [Lv. 1300]" or v.Name == "Ship Officer [Lv. 1325]" or v.Name == "Arctic Warrior [Lv. 1350]" then
                                repeat task.wait()
                                    EquipTool(_G.Settings.Setting["Select Weapon"])
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                    MonsterPosition = v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(14)
                                    v.Humanoid:ChangeState(11)
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                    end
                                until not _G.Settings.Main["Auto Farm Ectoplasm"] or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            end)
        end
    end
end)

AutoMatics2:AddToggle("BartiloQuest",{
    Text = "Auto Bartilo Quest",
    Default = _G.Settings.Main["Auto Bartilo Quest"],
    Tooltip = "Auto Complete Bartilo Quest",
})

Toggles["BartiloQuest"]:OnChanged(function(value)
    _G.Settings.Main["Auto Bartilo Quest"] = value
    CancelTween(_G.Settings.Main["Auto Bartilo Quest"])
    SaveSettings()
end)

spawn(function()
    pcall(function()
        while task.wait() do
            if _G.Settings.Main["Auto Bartilo Quest"] then
                if game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Swan Pirate [Lv. 775]" then
                                    pcall(function()
                                        repeat task.wait()
                                            EquipTool(_G.Settings.Setting["Select Weapon"])
                                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                            MonsterPosition = v.HumanoidRootPart.CFrame
                                            v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid:ChangeState(14)
                                            v.Humanoid:ChangeState(11)
                                            v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                            end
                                        until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.Main["Auto Bartilo Quest"] == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    end)
                                end
                            end
                        else
                            Tween(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582))
                        end
                    else
                        Tween(CFrame.new(-456.28952, 73.0200958, 299.895966))
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Jeremy [Lv. 850] [Boss]" then
                                repeat task.wait()
                                    EquipTool(_G.Settings.Setting["Select Weapon"])
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                    MonsterPosition = v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(14)
                                    v.Humanoid:ChangeState(11)
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                    end
                                until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.Main["Auto Bartilo Quest"] == false
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                        Tween(CFrame.new(-456.28952, 73.0200958, 299.895966))
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
                        wait(1)
                        Tween(CFrame.new(2099.88159, 448.931, 648.997375))
                        wait(2)
                    else
                        Tween(CFrame.new(2099.88159, 448.931, 648.997375))
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
                    Tween(CFrame.new(-1850.49329, 13.1789551, 1750.89685))
                    wait(1)
                    Tween(CFrame.new(-1858.87305, 19.3777466, 1712.01807))
                    wait(1)
                    Tween(CFrame.new(-1803.94324, 16.5789185, 1750.89685))
                    wait(1)
                    Tween(CFrame.new(-1858.55835, 16.8604317, 1724.79541))
                    wait(1)
                    Tween(CFrame.new(-1869.54224, 15.987854, 1681.00659))
                    wait(1)
                    Tween(CFrame.new(-1800.0979, 16.4978027, 1684.52368))
                    wait(1)
                    Tween(CFrame.new(-1819.26343, 14.795166, 1717.90625))
                    wait(1)
                    Tween(CFrame.new(-1813.51843, 14.8604736, 1724.79541))
                end
            end
        end
    end)
end)

AutoMatics2:AddToggle("SwanGlasses",{
    Text = "Auto Swan Glasses",
    Default = _G.Settings.Main["Auto Swan Glasses"],
    Tooltip = "Auto Swan Glasses",
})

Toggles["SwanGlasses"]:OnChanged(function(value)
    _G.Settings.Main["Auto Swan Glasses"] = value
    CancelTween(_G.Settings.Main["Auto Swan Glasses"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Swan Glasses"] then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            if v.Name == "Don Swan [Lv. 1000] [Boss]" then
                                repeat task.wait()
                                    EquipTool(_G.Settings.Setting["Select Weapon"])
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                    MonsterPosition = v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(14)
                                    v.Humanoid:ChangeState(11)
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                    end
                                until not _G.Settings.Main["Auto Swan Glasses"] or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]").HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                end
            end)
        end
    end
end)

AutoMatics2:AddToggle("RengokuQuest",{
    Text = "Auto Farm Rengoku",
    Default = _G.Settings.Main["Auto Rengoku"],
    Tooltip = "Auto Rengoku by Killing Snow Lurker and Actic Warrior on Second Sea",
})

Toggles["RengokuQuest"]:OnChanged(function(value)
    _G.Settings.Main["Auto Rengoku"] = value
    CancelTween(_G.Settings.Main["Auto Rengoku"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Rengoku"] then
            pcall(function()
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
                    EquipTool("Hidden Key")
                    Tween(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
                elseif game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]" then
                                repeat task.wait()
                                    EquipTool(_G.Settings.Setting["Select Weapon"])
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                    MonsterPosition = v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(14)
                                    v.Humanoid:ChangeState(11)
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                    end
                                until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or _G.Settings.Main["Auto Rengoku"] == false or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    Tween(CFrame.new(5567.857421875, 56.9969596862793, -6900.46533203125))
                end
            end)
        end
    end
end)

AutoMatics2:AddToggle("DarkCoat",{
    Text = "Auto Dark Beard",
    Default = _G.Settings.Main["Auto Dark Coat"],
    Tooltip = "Auto Dark Beard Boss",
})

Toggles["DarkCoat"]:OnChanged(function(value)
    _G.Settings.Main["Auto Dark Coat"] = value
    CancelTween(_G.Settings.Main["Auto Dark Coat"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Dark Coat"] then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if v.Name == "Darkbeard [Lv. 1000] [Raid Boss]" then
                                repeat task.wait()
                                    EquipTool(_G.Settings.Setting["Select Weapon"])
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                    MonsterPosition = v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(14)
                                    v.Humanoid:ChangeState(11)
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                    end
                                until _G.Settings.Main["Auto Dark Coat"] == false or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                end
            end)
        end
    end
end)

AutoMatics2:AddToggle("EvoRaceV3",{
    Text = "Auto Evo Race",
    Default = _G.Settings.Main["Auto Evo Race"],
    Tooltip = "Auto Evo Race",
})

Toggles["EvoRaceV3"]:OnChanged(function(value)
    _G.Settings.Main["Auto Evo Race"] = value
    CancelTween(_G.Settings.Main["Auto Evo Race"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Evo Race"] then
            pcall(function()
                if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
                        Tween(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.39014104e-08, -0.68292886, 3.59963224e-08, 1, 5.50667032e-08, 0.68292886, 1.56424669e-08, -0.730484903))
                        if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                            wait(1.3)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
                        pcall(function()
                            if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
                                Tween(game:GetService("Workspace").Flower1.CFrame)
                            elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
                                Tween(game:GetService("Workspace").Flower2.CFrame)
                            elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Zombie [Lv. 950]") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Zombie [Lv. 950]" then
                                            repeat task.wait()
                                                EquipTool(_G.Settings.Setting["Select Weapon"])
                                                Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                                MonsterPosition = v.HumanoidRootPart.CFrame
                                                v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid:ChangeState(14)
                                                v.Humanoid:ChangeState(11)
                                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                                end
                                            until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.Main["Auto Evo Race"] == false
                                        end
                                    end
                                else
                                    Tween(CFrame.new(-5685.9233398438, 48.480125427246, -853.23724365234))
                                end
                            end
                        end)
                    else
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
                        end
                    end
                end
            end)
        end
    end
end)

AutoMatics2:AddToggle("FactoryFarm",{
    Text = "Auto Factory Farm",
    Default = _G.Settings.Main["Auto Farm Factory"],
    Tooltip = "Auto Farm Factory",
})

Toggles["FactoryFarm"]:OnChanged(function(value)
    _G.Settings.Main["Auto Farm Factory"] = value
    CancelTween(_G.Settings.Main["Auto Farm Factory"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Farm Factory"] then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Core" and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EquipTool(_G.Settings.Setting["Select Weapon"])
                            until v.Humanoid.Health <= 0 or _G.Settings.Main["Auto Farm Factory"] == false
                        end
                    end
                else
                    Tween(CFrame.new(448.46756, 199.356781, -441.389252))
                end
            end)
        end
    end
end)

-- [ Automatics First Sea ]

AutoMatics3:AddToggle("AutoPole",{
    Text = "Auto Pole",
    Default = _G.Settings.Main["Auto Pole"],
    Tooltip = "Auto Pole by Killing Thunder God Boss at First Sea",
})

Toggles["AutoPole"]:OnChanged(function(value)
    _G.Settings.Main["Auto Pole"] = value
    CancelTween(_G.Settings.Main["Auto Pole"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Pole"] then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if v.Name == "Thunder God [Lv. 575] [Boss]" then
                                repeat task.wait()
                                    EquipTool(_G.Settings.Setting["Select Weapon"])
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                    MonsterPosition = v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(14)
                                    v.Humanoid:ChangeState(11)
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                    end
                                until not _G.Settings.Main["Auto Pole"] or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God [Lv. 575] [Boss]").HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                end
            end)
        end
    end
end)

AutoMatics3:AddToggle("SaberQuest",{
    Text = "Auto Fully Saber",
    Default = _G.Settings.Main["Auto Fully Saber"],
    Tooltip = "Auto Saber (First Sea)",
})

Toggles["SaberQuest"]:OnChanged(function(value)
    _G.Settings.Main["Auto Fully Saber"] = value
    CancelTween(_G.Settings.Main["Auto Fully Saber"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Fully Saber"] and game.Players.LocalPlayer.Data.Level.Value >= 200 and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Saber") and not game.Players.LocalPlayer.Character:FindFirstChild("Saber") then
            pcall(function()
                if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
                    if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
                        if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                            Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
                            wait(1)
                        else
                            Tween(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279))
                        end
                    else
                        if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
                            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
                                EquipTool("Torch")
                                Tween(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09, 0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587))
                            else
                                Tween(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408))
                            end
                        else
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
                                wait(0.5)
                                EquipTool("Cup")
                                wait(0.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character.Cup)
                                wait(0)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan")
                            else
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
                                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                if v.Name == "Mob Leader [Lv. 120] [Boss]" then
                                                    repeat task.wait()
                                                        EquipTool(_G.Settings.Setting["Select Weapon"])
                                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                                        MonsterPosition = v.HumanoidRootPart.CFrame
                                                        v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                        v.Humanoid.JumpPower = 0
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid:ChangeState(14)
                                                        v.Humanoid:ChangeState(11)
                                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                                        end
                                                    until v.Humanoid.Health <= 0 or _G.Settings.Main["Auto Fully Saber"] == false
                                                end
                                            end
                                            Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]").HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                        end
                                    end
                                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                    wait(0.5)
                                    EquipTool("Relic")
                                    wait(0.5)
                                    Tween(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08, 0.876514494))
                                end
                            end
                        end
                    end
                else
                    if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == "Saber Expert [Lv. 200] [Boss]" then
                                    repeat task.wait()
                                        EquipTool(_G.Settings.Setting["Select Weapon"])
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                        MonsterPosition = v.HumanoidRootPart.CFrame
                                        v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(14)
                                        v.Humanoid:ChangeState(11)
                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                        end
                                    until v.Humanoid.Health <= 0 or _G.Settings.Main["Auto Fully Saber"] == false
                                    if v.Humanoid.Health <= 0 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

-- [ Auto Cursed Dual Katana ]

SpecialSection:AddToggle("CursedDK",{
    Text = "Auto Cursed Dual Katana",
    Default = _G.Settings.CDKs["Auto Cursed Dual Katana"],
    Tooltip = "Require : Yama & Tushita Mastery Level - 350+ (Third Sea)",
})

Toggles["CursedDK"]:OnChanged(function(value)
    _G.Settings.CDKs["Auto Cursed Dual Katana"] = value
    CancelTween(_G.Settings.CDKs["Auto Cursed Dual Katana"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.CDKs["Auto Cursed Dual Katana"] then
            pcall(function()
                if GetWeaponInventory("Cursed Dual Katana") == true then
                    if game.Players.LocalPlayer.Character:FindFirstChild("Cursed Dual Katana") or game.Players.LocalPlayer.Backpack:FindFirstChild("Cursed Dual Katana") then
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Cursed Dual Katana")
                    end
                else
                    if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") or game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                        if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                                EquipTool("Tushita")
                            else
                                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                    if v.Name == "Tushita" and v:IsA("Tool") then
                                        if v.Level.Value >= 350 then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Yama")
                                            _G.Settings.Main["Auto Farm Bone"] = false
                                        else
                                            _G.Settings.Setting["Select Weapon"] = "Tushita"
                                            _G.Settings.Main["Auto Farm Bone"] = true
                                        end
                                    end
                                end
                            end
                        elseif game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                                EquipTool("Yama")
                            else
                                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                    if v.Name == "Yama" and v:IsA("Tool") then
                                        if v.Level.Value >= 350 then
                                            Auto_CDK_Quest = true
                                            _G.Settings.Main["Auto Farm Bone"] = false
                                        else
                                            _G.Settings.Setting["Select Weapon"] = "Yama"
                                            _G.Settings.Main["Auto Farm Bone"] = true
                                        end
                                    end
                                end
                            end
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Tushita")
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if Auto_CDK_Quest then
                if CheckMaterial("Alucard Fragment") == 0 then
                    Auto_Quest_Yama_1 = true
                    Auto_Quest_Yama_2 = false
                    Auto_Quest_Yama_3 = false
                    Auto_Quest_Tushita_1 = false
                    Auto_Quest_Tushita_2 = false
                    Auto_Quest_Tushita_3 = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                elseif CheckMaterial("Alucard Fragment") == 1 then
                    Auto_Quest_Yama_1 = false
                    Auto_Quest_Yama_2 = true
                    Auto_Quest_Yama_3 = false
                    Auto_Quest_Tushita_1 = false
                    Auto_Quest_Tushita_2 = false
                    Auto_Quest_Tushita_3 = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                elseif CheckMaterial("Alucard Fragment") == 2 then
                    Auto_Quest_Yama_1 = false
                    Auto_Quest_Yama_2 = false
                    Auto_Quest_Yama_3 = true
                    Auto_Quest_Tushita_1 = false
                    Auto_Quest_Tushita_2 = false
                    Auto_Quest_Tushita_3 = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                elseif CheckMaterial("Alucard Fragment") == 3 then
                    Auto_Quest_Yama_1 = false
                    Auto_Quest_Yama_2 = false
                    Auto_Quest_Yama_3 = false
                    Auto_Quest_Tushita_1 = true
                    Auto_Quest_Tushita_2 = false
                    Auto_Quest_Tushita_3 = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                elseif CheckMaterial("Alucard Fragment") == 4 then
                    Auto_Quest_Yama_1 = false
                    Auto_Quest_Yama_2 = false
                    Auto_Quest_Yama_3 = false
                    Auto_Quest_Tushita_1 = false
                    Auto_Quest_Tushita_2 = true
                    Auto_Quest_Tushita_3 = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                elseif CheckMaterial("Alucard Fragment") == 5 then
                    Auto_Quest_Yama_1 = false
                    Auto_Quest_Yama_2 = false
                    Auto_Quest_Yama_3 = false
                    Auto_Quest_Tushita_1 = false
                    Auto_Quest_Tushita_2 = false
                    Auto_Quest_Tushita_3 = true
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                elseif CheckMaterial("Alucard Fragment") == 6 then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").ReplicatedStorage:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = false
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cursed Skeleton Boss [Lv. 2025] [Boss]" or v.Name == "Cursed Skeleton [Lv. 2200]" then
                                    if v.Humanoid.Health > 0 then
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                    end
                                end
                            end
                        end
                    else
                        if (CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                            wait(1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                            wait(1)
                            Tween(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
                            wait(1.5)
                            Tween(CFrame.new(-12253.5419921875, 598.8999633789062, -6546.8388671875))
                        else
                            Tween(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
                        end
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait() do
        if Auto_Quest_Yama_1 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
                            repeat task.wait()
                                Tween(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2))
                            until Auto_CDK_Quest == false or _G.Settings.CDKs["Auto Cursed Dual Katana"] == false or Auto_Quest_Yama_1 == false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                        end
                    end
                else
                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]").HumanoidRootPart.CFrame)
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if Auto_Quest_Yama_2 then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild("HazeESP") then
                        v.HazeESP.Size = UDim2.new(50,50,50,50)
                        v.HazeESP.MaxDistance = "inf"
                    end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                    if v:FindFirstChild("HazeESP") then
                        v.HazeESP.Size = UDim2.new(50,50,50,50)
                        v.HazeESP.MaxDistance = "inf"
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if Auto_Quest_Yama_2 and v:FindFirstChild("HazeESP") and (v.HumanoidRootPart.Position - PosMonsEsp.Position).magnitude <= 300 then
                    v.HumanoidRootPart.CFrame = PosMonsEsp
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                    if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                        local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                        vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                        vc.Velocity = Vector3.new(0, 0, 0)
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait() do
        if Auto_Quest_Yama_2 then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild("HazeESP") then
                        repeat task.wait()
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                BTP(y.HumanoidRootPart.CFrameMonster * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                            else
                                EquipTool(_G.Settings.Setting["Select Weapon"])
                                Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid:ChangeState(14)
                                v.Humanoid:ChangeState(11)
                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                PosMonsEsp = v.HumanoidRootPart.CFrame
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                end
                            end
                        until _G.Settings.CDKs["Auto Cursed Dual Katana"] == false or Auto_Quest_Yama_2 == false or not v.Parent or v.Humanoid.Health <= 0 or not v:FindFirstChild("HazeESP")
                    else
                        for x,y in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                            if y:FindFirstChild("HazeESP") then
                                if (y.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                    BTP(y.HumanoidRootPart.CFrameMonster * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                else
                                    Tween(y.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        if Auto_Quest_Yama_3 then
            pcall(function()
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then
                    _G.Settings.Main["Auto Farm Bone"] = true
                    Tween(game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame)
                elseif game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
                    repeat task.wait()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Hell's Messenger [Lv. 2200] [Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cursed Skeleton [Lv. 2200]" or v.Name == "Cursed Skeleton [Lv. 2200] [Boss]" or v.Name == "Hell's Messenger [Lv. 2200] [Boss]" then
                                    if v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            EquipTool(_G.Settings.Setting["Select Weapon"])
                                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                            v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid:ChangeState(14)
                                            v.Humanoid:ChangeState(11)
                                            v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                            PosMonsEsp = v.HumanoidRootPart.CFrame
                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                            end
                                        until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Yama_3 == false
                                    end
                                end
                            end
                        else
                            wait(5)
                            Tween(game:GetService("Workspace").Map.HellDimension.Torch1.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)
                            Tween(game:GetService("Workspace").Map.HellDimension.Torch2.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)
                            Tween(game:GetService("Workspace").Map.HellDimension.Torch3.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)
                            Tween(game:GetService("Workspace").Map.HellDimension.Exit.CFrame)
                        end
                    until _G.Settings.CDKs["Auto Cursed Dual Katana"] == false or Auto_Quest_Yama_3 == false or CheckMaterial("Alucard Fragment") == 3
                else
                    if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") or game.ReplicatedStorage:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Soul Reaper [Lv. 2100] [Raid Boss]" then
                                    if v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2))
                                        until _G.Settings.CDKs["Auto Cursed Dual Katana"] == false or Auto_Quest_Yama_3 == false or game:GetService("Workspace").Map:FindFirstChild("HellDimension")
                                    end
                                end
                            end
                        else
                            Tween(CFrame.new(-9570.033203125, 315.9346923828125, 6726.89306640625))
                        end
                    else
                        _G.Settings.Main["Auto Farm Bone"] = true
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        if Auto_Quest_Tushita_1 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
        end
    end
end)

spawn(function()
    while task.wait() do
        if Auto_Quest_Tushita_1 then
            BTP(CFrame.new(-9546.990234375,21.139892578125,4686.1142578125))
            wait(5)
            BTP(CFrame.new(-6120.0576171875,16.455780029296875,-2250.697265625))
            wait(5)
            BTP(CFrame.new(-9533.2392578125,7.254445552825928,-8372.69921875))
        end
    end
end)

spawn(function()
    while task.wait() do
        if Auto_Quest_Tushita_2 then
            pcall(function()
                if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if Auto_Quest_Tushita_2 and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                repeat task.wait()
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["_G.X"],_G.Settings.Coords["_G.Y"],_G.Settings.Coords["_G.Z"]))
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                    end
                                until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_2 == false
                            end
                        end
                    end
                else
                    Tween(CFrame.new(-5545.1240234375, 313.800537109375, -2976.616455078125))
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        if Auto_Quest_Tushita_3 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") or game.ReplicatedStorage:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cake Queen [Lv. 2175] [Boss]" then
                                if v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipTool(_G.Settings.Setting["Select Weapon"])
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                        MonsterPosition = v.HumanoidRootPart.CFrame
                                        v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(14)
                                        v.Humanoid:ChangeState(11)
                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                        end
                                    until _G.Settings.CDKs["Auto Cursed Dual Katana"] == false or Auto_Quest_Tushita_3 == false or game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension")
                                end
                            end
                        end
                    else
                        Tween(CFrame.new(-709.3132934570312, 381.6005859375, -11011.396484375))
                    end
                elseif game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") then
                    repeat task.wait()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Heaven's Guardian [Lv. 2200] [Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cursed Skeleton [Lv. 2200]" or v.Name == "Cursed Skeleton [Lv. 2200] [Boss]" or v.Name == "Heaven's Guardian [Lv. 2200] [Boss]" then
                                    if v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            EquipTool(_G.Settings.Setting["Select Weapon"])
                                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                            MonsterPosition = v.HumanoidRootPart.CFrame
                                            v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid:ChangeState(14)
                                            v.Humanoid:ChangeState(11)
                                            v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                            end
                                        until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_3 == false
                                    end
                                end
                            end
                        else
                            wait(5)
                            Tween(game:GetService("Workspace").Map.HeavenlyDimension.Torch1.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
                            wait(1.5)
                            Tween(game:GetService("Workspace").Map.HeavenlyDimension.Torch2.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
                            wait(1.5)
                            Tween(game:GetService("Workspace").Map.HeavenlyDimension.Torch3.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
                            wait(1.5)
                            Tween(game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame)
                        end
                    until _G.Settings.CDKs["Auto Cursed Dual Katana"] == false or Auto_Quest_Tushita_3 == false or CheckMaterial("Alucard Fragment") == 6
                else
                    Teleport()
                end
            end)
        end
    end
end)

-- [ Auto Soul Guitar ]

SpecialSection:AddToggle("SoulGuiFunc",{
    Text = "Auto Soul Guitar",
    Default = _G.Settings.SoulGuis["Auto Soul Guitar"], 
    Tooltip = "Require : x1 Dark Fragment & x15 Dragon Scales & x10 Magma Ore's (Third Sea)",
})

Toggles["SoulGuiFunc"]:OnChanged(function(value)
    _G.Settings.SoulGuis["Auto Soul Guitar"] = value
    CancelTween(_G.Settings.SoulGuis["Auto Soul Guitar"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.SoulGuis["Auto Soul Guitar"] then
            pcall(function()
                if GetWeaponInventory("Soul Guitar") == false then
                    if (CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000 then
                        if game:GetService("Workspace").NPCs:FindFirstChild("Skeleton Machine") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("soulGuitarBuy",true)
                        else
                            if game:GetService("Workspace").Map["Haunted Castle"].Candle1.Transparency == 0 then
                                if game:GetService("Workspace").Map["Haunted Castle"].Placard1.Left.Part.Transparency == 0 then
                                    Quest2 = true
                                    repeat task.wait()
                                        Tween(CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875))
                                    until (CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 or not _G.Settings.SoulGuis["Auto Soul Guitar"]
                                    wait(1)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard7.Left.ClickDetector)
                                    wait(1)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard6.Left.ClickDetector)
                                    wait(1)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard5.Left.ClickDetector)
                                    wait(1)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard4.Right.ClickDetector)
                                    wait(1)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard3.Left.ClickDetector)
                                    wait(1)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard2.Right.ClickDetector)
                                    wait(1)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard1.Right.ClickDetector)
                                    wait(1)
                                elseif game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1:FindFirstChild("ClickDetector") then
                                    if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1:FindFirstChild("ClickDetector") then
                                        Quest4 = true
                                        repeat task.wait()
                                            Tween(CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625))
                                        until (CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 or not _G.Settings.SoulGuis["Auto Soul Guitar"]
                                        wait(1)
                                        Tween(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.CFrame)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.ClickDetector)
                                        wait(1)
                                        Tween(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.CFrame)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                        wait(1)
                                        Tween(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.CFrame)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
                                        wait(1)
                                        Tween(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.CFrame)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.ClickDetector)
                                        wait(1)
                                        Tween(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.CFrame)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                    else
                                        Quest3 = true
                                    end
                                else
                                    if game:GetService("Workspace").NPCs:FindFirstChild("Ghost") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Ghost")
                                    end
                                    if game.Workspace.Enemies:FindFirstChild("Living Zombie [Lv. 2000]") then
                                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                                if v.Name == "Living Zombie [Lv. 2000]" then
                                                    repeat task.wait()
                                                        EquipTool(_G.Settings.Setting["Select Weapon"])
                                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                                        MonsterPosition = v.HumanoidRootPart.CFrame
                                                        v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                        v.Humanoid.JumpPower = 0
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid:ChangeState(14)
                                                        v.Humanoid:ChangeState(11)
                                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"])
                                                        end
                                                    until not _G.Settings.SoulGuis["Auto Soul Guitar"] or not v.Parent or v.Humanoid.Health <= 0
                                                end
                                            end
                                        end
                                    else
                                        Tween(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875))
                                    end
                                end
                            else
                                if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2),"Error") then
                                    Tween(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))
                                elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2),"Nothing") then
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2,true)
                                end
                            end
                        end
                    else
                        Tween(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))
                    end
                end
            end)
        end
    end
end)

-- [ Travel Sea ]

Teleport1:AddButton("Travel to First Sea",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
end)

Teleport1:AddButton("Travel to Second Sea",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
end)

Teleport1:AddButton("Travel to Third Sea",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
end) 

-- [ Island Tween ]

TeleportTable = {}

if World1 then
	TeleportTable = {"Jones Salad","Marine1","Marine2","Midle Town","Jungle","Pirate Village","Desert","Frozen Village","Colosseum","Prison","Mob Leader","Magma Village","UnderWater Gate","UnderWater City","Fountain City","Sky1","Sky2","Sky3"}
elseif World2 then
	TeleportTable = {"Dock","Mansion","Kingdom Of Rose","Cafe","Sunflower Field","Jeramy Mountain","Colossuem","Factory","The Bridge","Green Bit","Graveyard","Dark Area","Snow Mountain","Hot Island","Cold Island","Ice Castle","Usopp's Island","inscription Island","Forgotten Island","Ghost Ship"}
elseif World3 then
	TeleportTable = {"Port Town","Hydra Island","Giant Tree","Mansion","Castle on the Sea","Graveyard Island","Icecream Island","Peanut Island","Lab","Cake Loaf","Chocolate Island","Christmas Event Island"}
end

Teleport2:AddDropdown("IslandTweenSelect",{
    Default = 1, 
    Multi = false,
    Text = "Select Island to Teleport",
    Values = TeleportTable,
})

Options["IslandTweenSelect"]:OnChanged(function(value)
    _G.SelectLocalTeleport = value
    SaveSettings()
end)

Teleport2:AddToggle("IslandTweenTeleport",{
    Text = "Start Teleport Island",
    Default = _G.Settings.Teleport["Start Teleport Island"],
    Tooltip = "Teleport the Island [Selected Island]",
})

Toggles["IslandTweenTeleport"]:OnChanged(function(value)
    _G.Settings.Teleport["Start Teleport Island"] = value
    if _G.Settings.Teleport["Start Teleport Island"] == true then
        repeat task.wait()
            if World1 then
                if _G.SelectLocalTeleport == "Jones Salad" then
                    Tween(CFrame.new(1042.1501464844, 16.299360275269, 1444.3442382813))
                end

                if _G.SelectLocalTeleport == "Marine1" then
                    Tween(CFrame.new(-2599.6655273438, 6.9146227836609, 2062.2216796875))
                end

                if _G.SelectLocalTeleport == "Marine2" then
                    Tween(CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188))
                end

                if _G.SelectLocalTeleport == "Midle Town" then
                    Tween(CFrame.new(-655.97088623047, 7.878026008606, 1573.7612304688))
                end

                if _G.SelectLocalTeleport == "Jungle" then
                    Tween(CFrame.new(-1499.9877929688, 22.877912521362, 353.87060546875))
                end

                if _G.SelectLocalTeleport == "Pirate Village" then
                    Tween(CFrame.new(-1163.3889160156, 44.777843475342, 3842.8276367188))
                end

                if _G.SelectLocalTeleport == "Desert" then
                    Tween(CFrame.new(954.02056884766, 6.6275520324707, 4262.611328125))
                end

                if _G.SelectLocalTeleport == "Frozen Village" then
                    Tween(CFrame.new(1144.5270996094, 7.3292083740234, -1164.7322998047))
                end

                if _G.SelectLocalTeleport == "Colosseum" then
                    Tween(CFrame.new(-1667.5869140625, 39.385631561279, -3135.5817871094))
                end

                if _G.SelectLocalTeleport == "Prison" then
                    Tween(CFrame.new(4857.6982421875, 5.6780304908752, 732.75750732422))
                end

                if _G.SelectLocalTeleport == "Mob Leader" then
                    Tween(CFrame.new(-2841.9604492188, 7.3560485839844, 5318.1040039063))
                end

                if _G.SelectLocalTeleport == "Magma Village" then
                    Tween(CFrame.new(-5328.8740234375, 8.6164798736572, 8427.3994140625))
                end

                if _G.SelectLocalTeleport == "UnderWater Gate" then
                    Tween(CFrame.new(3893.953125, 5.3989524841309, -1893.4851074219))
                end

                if _G.SelectLocalTeleport == "UnderWater City" then
                    Tween(CFrame.new(61191.12109375, 18.497436523438, 1561.8873291016))
                end

                if _G.SelectLocalTeleport == "Fountain City" then
                    Tween(CFrame.new(5244.7133789063, 38.526943206787, 4073.4987792969))
                end

                if _G.SelectLocalTeleport == "Sky1" then
                    Tween(CFrame.new(-4878.0415039063, 717.71246337891, -2637.7294921875))
                end

                if _G.SelectLocalTeleport == "Sky2" then
                    Tween(CFrame.new(-7899.6157226563, 5545.6030273438, -422.21798706055))
                end

                if _G.SelectLocalTeleport == "Sky3" then
                    Tween(CFrame.new(-7868.5288085938, 5638.205078125, -1482.5548095703))
                end
            elseif World2 then
                if _G.SelectLocalTeleport == "Dock" then
                    Tween(CFrame.new(-12.519311904907, 19.302536010742, 2827.853515625))
                end

                if _G.SelectLocalTeleport == "Mansion" then
                    Tween(CFrame.new(-390.34829711914, 321.89730834961, 869.00506591797))
                end

                if _G.SelectLocalTeleport == "Kingdom Of Rose" then
                    Tween(CFrame.new(-388.29895019531, 138.35575866699, 1132.1662597656))
                end

                if _G.SelectLocalTeleport == "Cafe" then
                    Tween(CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813))
                end

                if _G.SelectLocalTeleport == "Sunflower Field" then
                    Tween(CFrame.new(-1576.7171630859, 198.61849975586, 13.725157737732))
                end

                if _G.SelectLocalTeleport == "Jeramy Mountain" then
                    Tween(CFrame.new(1986.3519287109, 448.95678710938, 796.70239257813))
                end

                if _G.SelectLocalTeleport == "Colossuem" then
                    Tween(CFrame.new(-1871.8974609375, 45.820514678955, 1359.6843261719))
                end

                if _G.SelectLocalTeleport == "Factory" then
                    Tween(CFrame.new(349.53750610352, 74.446998596191, -355.62420654297))
                end

                if _G.SelectLocalTeleport == "The Bridge" then
                    Tween(CFrame.new(-1860.6354980469, 88.384948730469, -1859.1593017578))
                end

                if _G.SelectLocalTeleport == "Green Bit" then
                    Tween(CFrame.new(-2202.3706054688, 73.097663879395, -2819.2687988281))
                end

                if _G.SelectLocalTeleport == "Graveyard" then
                    Tween(CFrame.new(-5617.5927734375, 492.22183227539, -778.3017578125))
                end

                if _G.SelectLocalTeleport == "Dark Area" then
                    Tween(CFrame.new(3464.7700195313, 13.375151634216, -3368.90234375))
                end

                if _G.SelectLocalTeleport == "Snow Mountain" then
                    Tween(CFrame.new(561.23834228516, 401.44781494141, -5297.14453125))
                end

                if _G.SelectLocalTeleport == "Hot Island" then
                    Tween(CFrame.new(-5505.9633789063, 15.977565765381, -5366.6123046875))
                end

                if _G.SelectLocalTeleport == "Cold Island" then
                    Tween(CFrame.new(-5924.716796875, 15.977565765381, -4996.427734375))
                end

                if _G.SelectLocalTeleport == "Ice Castle" then
                    Tween(CFrame.new(6111.7109375, 294.41259765625, -6716.4829101563))
                end

                if _G.SelectLocalTeleport == "Usopp's Island" then
                    Tween(CFrame.new(4760.4985351563, 8.3444719314575, 2849.2426757813))
                end

                if _G.SelectLocalTeleport == "inscription Island" then
                    Tween(CFrame.new(-5099.01171875, 98.241539001465, 2424.4035644531))
                end

                if _G.SelectLocalTeleport == "Forgotten Island" then
                    Tween(CFrame.new(-3051.9514160156, 238.87203979492, -10250.807617188))
                end

                if _G.SelectLocalTeleport == "Ghost Ship" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif World3 then
                if _G.SelectLocalTeleport == "Port Town" then
                    Tween(CFrame.new(-275.21615600586, 43.755737304688, 5451.0659179688))
                end

                if _G.SelectLocalTeleport == "Hydra Island" then
                    Tween(CFrame.new(5541.2685546875, 668.30456542969, 195.48069763184))
                end

                if _G.SelectLocalTeleport == "Giant Tree" then
                    Tween(CFrame.new(2276.0859375, 25.87850189209, -6493.03125))
                end

                if _G.SelectLocalTeleport == "Mansion" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12548.595703125, 337.17001342773, -7554.6103515625))
                end

                if _G.SelectLocalTeleport == "Castle on the Sea" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5079.44677734375, 313.7293395996094, -3151.065185546875))
                end

                if _G.SelectLocalTeleport == "Graveyard Island" then
                    Tween(CFrame.new(-9515.07324, 142.130615, 5537.58398))
                end

                if _G.SelectLocalTeleport == "Icecream Island" then
                    Tween(CFrame.new(-880.894531, 118.245354, -11030.7607, -0.867174983, 1.48501234e-09, 0.498003572, 2.70457789e-08, 1, 4.41129586e-08, -0.498003572, 5.1722548e-08, -0.867174983))
                end

                if _G.SelectLocalTeleport == "Peanut Island" then
                    Tween(CFrame.new(-2124.06738, 44.0723495, -10179.8281, -0.623125494, -2.55908191e-07, -0.782121837, -1.40530574e-07, 1, -2.15235005e-07, 0.782121837, -2.42063933e-08, -0.623125494))
                end

                if _G.SelectLocalTeleport == "Lab" then
                    Tween(CFrame.new(-5057.146484375, 314.54132080078, -2934.7995605469))
                end

                if _G.SelectLocalTeleport == "Cake Loaf" then
                    Tween(CFrame.new(-1977.36767578125, 251.509521484375, -12380.4189453125))
                end

                if _G.SelectLocalTeleport == "Chocolate Island" then
                    Tween(CFrame.new(-35.41017150878906, 16.940526962280273, -11994.9521484375))
                end

                if _G.SelectLocalTeleport == "Christmas Event Island" then
                    Tween(CFrame.new(-1045.138916015625, 16.821311950683594, -14149.4296875))
                end
            end
        until not _G.Settings.Teleport["Start Teleport Island"]
        CancelTween(_G.Settings.Teleport["Start Teleport Island"])
        SaveSettings()
    end
end)

-- [ Auto Complete Trials ]

Race1:AddButton("Auto Complete Angel Trial",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.SkyTrial.Model.FinishPart.CFrame
end)

Race1:AddButton("Auto Complete Mink Trial",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.MinkTrial.Ceiling.CFrame * CFrame.new(0,-5,0)
end)

Race1:AddButton("Auto Complete Cyborg Trial",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,300,0)
end)

-- [ Fruit ]

FruitList = {"Bomb-Bomb","Spike-Spike","Chop-Chop","Spring-Spring","Kilo-Kilo","Smoke-Smoke","Spin-Spin","Flame-Flame","Bird-Bird: Falcon","Ice-Ice","Sand-Sand","Dark-Dark","Revive-Revive","Diamond-Diamond","Light-Light","Love-Love","Rubber-Rubber","Barrier-Barrier","Magma-Magma","Quake-Quake","Human-Human: Buddha","String-String","Bird-Bird: Phoenix","Portal-Portal","Rumble-Rumble","Paw-Paw","Blizzard-Blizzard","Gravity-Gravity","Dough-Dough","Shadow-Shadow","Venom-Venom","Control-Control","Spirit-Spirit","Dragon-Dragon","Leopard-Leopard"}

Fruit:AddDropdown("FruitFunc1",{
    Default = _G.Settings.Fruit["Select Fruit"], 
    Multi = false,
    Text = "Select Fruit",
    Values = FruitList,
})

Options["FruitFunc1"]:OnChanged(function(value)
    _G.Settings.Fruit["Select Fruit"] = value
    SaveSettings()
end)

Fruit:AddToggle("FruitFunc2",{
    Text = "Buy Fruit [Selected Fruit]",
    Default = _G.Settings.Fruit["Auto Buy Fruit"], 
    Tooltip = "Buy the selected fruit from Blox Fruits Dealer",
})

Toggles["FruitFunc2"]:OnChanged(function(value)
    _G.Settings.Fruit["Auto Buy Fruit"] = value
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Fruit["Auto Buy Fruit"] then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit",_G.Settings.Fruit["Select Fruit"])
            end)
        end
    end
end)

-- [ Fruit #2 ]

Fruit2:AddToggle("FruitFunc3",{
    Text = "Auto Random Fruit",
    Default = _G.Settings.Fruit["Auto Buy Fruit Dealer"], 
    Tooltip = "Auto Buy Fruit from Blox Fruits Cousin",
})

Toggles["FruitFunc3"]:OnChanged(function(value)
    _G.Settings.Fruit["Auto Buy Fruit Dealer"] = value
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Fruit["Auto Buy Fruit Dealer"] then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
            end)
        end
    end
end)

Fruit2:AddToggle("FruitFunc4",{
    Text = "Auto Grab Fruit",
    Default = _G.Settings.Fruit["Auto Bring Fruit"], 
    Tooltip = "Auto Grab dropped fruit or spawned fruit",
})

Toggles["FruitFunc4"]:OnChanged(function(value)
    _G.Settings.Fruit["Auto Bring Fruit"] = value
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Fruit["Auto Bring Fruit"] then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if v:IsA("Tool") then
                        if string.find(v.Name,"Fruit") then
                            repeat task.wait()
                                wait()
                                firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,v.Handle,0)
                                wait()
                            until not _G.Settings.Fruit["Auto Bring Fruit"] or v.Parent == game.Players.LocalPlayer.Character
                        end
                    end
                end
            end)
        end
    end
end)

Fruit2:AddToggle("FruitFunc5",{
    Text = "Auto Store Fruit",
    Default = _G.Settings.Fruit["Auto Store Fruit"], 
    Tooltip = "Auto Store Fruit in the backpack",
})

Toggles["FruitFunc5"]:OnChanged(function(value)
    _G.Settings.Fruit["Auto Store Fruit"] = value
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Fruit["Auto Store Fruit"] then
            pcall(function()
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bomb-Bomb",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spike-Spike",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Chop-Chop",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spring-Spring",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Kilo-Kilo",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Smoke-Smoke",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spin-Spin",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Flame-Flame",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Falcon Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Falcon-Falcon",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Falcon Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ice-Ice",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Sand-Sand",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dark-Dark",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Revive-Revive",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Revive-Revive",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Diamond-Diamond",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Light-Light",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Love-Love",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rubber-Rubber",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Barrier-Barrier",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Magma-Magma",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Quake-Quake",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human: Buddha Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Human-Human: Buddha",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human: Buddha Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","String-String",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Phoenix",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Portal Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Portal-Portal",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rumble-Rumble",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Paw-Paw",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Blizzard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Blizzard Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Blizzard-Blizzard",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Blizzard Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Gravity-Gravity",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dough-Dough",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Shadow-Shadow",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Venom-Venom",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Control-Control",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spirit Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spirit-Spirit",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dragon-Dragon",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit"))
                end
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Leopard-Leopard",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit"))
                end
            end)
        end
    end
end)

-- [ Raid ]

ChipsList = {"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix","Dough"}

Raid:AddDropdown("RaidFunc1",{
    Default = _G.Settings.Raid["Select Chip"], 
    Multi = false,
    Text = "Select Raid Type",
    Values = ChipsList,
})

Options["RaidFunc1"]:OnChanged(function(value)
    _G.Settings.Raid["Select Chip"] = value
    SaveSettings()
end)

Raid:AddButton("Start Raid",function()
    if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") then
        if World2 then
            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
        elseif World3 then
            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
        end
    end
end)

Raid:AddButton("Buy Special Microchip",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc","Select",_G.Settings.Raid["Select Chip"])
end)

-- [ Raid Controls ]

Raid1:AddToggle("RaidFunc2",{
    Text = "Kill Aura",
    Default = _G.Settings.Raid["Auto Kill Aura"], 
    Tooltip = "Kill aura used during in raid", 
})

Toggles["RaidFunc2"]:OnChanged(function(value)
    _G.Settings.Raid["Auto Kill Aura"] = value
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Raid["Auto Kill Aura"] then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        repeat task.wait()
                            v:BreakJoints()
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                        until not _G.Settings.Raid["Auto Kill Aura"] or not v.Parent or v.Humanoid.Health <= 0
                    end
                end
            end)
        end
    end
end)

Raid1:AddToggle("RaidFunc4",{
    Text = "Next Island",
    Default = _G.Settings.Raid["Auto Next Island"], 
    Tooltip = "Auto next island used in raid only", 
})

Toggles["RaidFunc4"]:OnChanged(function(value)
    _G.Settings.Raid["Auto Next Island"] = value
    CancelTween(_G.Settings.Raid["Auto Next Island"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Raid["Auto Next Island"] then
            pcall(function()
                if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
                        if v.Name == "Island 5" and (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3000 then
                            Tween(v.CFrame * CFrame.new(0,70,0))
                        end
                    end
                elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
                        if v.Name == "Island 4" and (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3000 then
                            Tween(v.CFrame * CFrame.new(0,70,0))
                        end
                    end
                elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
                        if v.Name == "Island 3" and (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3000 then
                            Tween(v.CFrame * CFrame.new(0,70,0))
                        end
                    end
                elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
                        if v.Name == "Island 2" and (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3000 then
                            Tween(v.CFrame * CFrame.new(0,70,0))
                        end
                    end
                elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
                        if v.Name == "Island 1" and (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3000 then
                            Tween(v.CFrame * CFrame.new(0,70,0))
                        end
                    end
                end
            end)
        end
    end
end)

Raid1:AddToggle("RaidFunc5",{
    Text = "Auto Awaken Skills",
    Default = _G.Settings.Raid["Auto Awaken Abilities"], 
    Tooltip = "Auto Awaken", 
})

Toggles["RaidFunc5"]:OnChanged(function(value)
    _G.Settings.Raid["Auto Awaken Abilities"] = value
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Raid["Auto Awaken Abilities"] then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
            end)
        end
    end
end)

-- [ Chest's & Player's & Island's & Fruit's Tracer's]

VisualSection:AddToggle("TracerChest",{
    Text = "Esp Chests",
    Default = _G.Settings.Visual["Chest Tracer"],
    Tooltip = "Chest ESP",
})

Toggles["TracerChest"]:OnChanged(function(value)
    _G.Settings.Visual["Chest Tracer"] = value
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Settings.Visual["Chest Tracer"] then
                for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3" then
                        if not v:FindFirstChild("ChestESP") then
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")

                            BillboardGui.Parent = v
                            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            BillboardGui.Active = true
                            BillboardGui.Name = "ChestESP"
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1.000
                            BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Size = UDim2.new(0, 200, 0, 50)
                            TextLabel.Font = Enum.Font.GothamBold
                            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.Text.Size = 35
                            TextLabel.TextStrokeTransparency = 0.000
                            TextLabel.TextWrapped = true
                        end
                        local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude)
                        v.ChestESP.TextLabel.Text = v.Name.."\n"..Dis.." M."
                        if v.Name == "Chest1" then
                            v:FindFirstChild("ChestESP").TextLabel.TextStrokeColor3 = Color3.new(160,160,160)
                        elseif v.Name == "Chest2" then
                            v:FindFirstChild("ChestESP").TextLabel.TextStrokeColor3 = Color3.new(255,255,0)
                        elseif v.Name == "Chest3" then
                            v:FindFirstChild("ChestESP").TextLabel.TextStrokeColor3 = Color3.new(0,255,255)
                        end
                    end
                end
            else
                for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3" then
                        if v:FindFirstChild("ChestESP") then
                            v.ChestESP:Destroy()
                        end
                    end
                end
            end
        end)
    end
end)

VisualSection:AddToggle("TracerPlayers",{
    Text = "Esp Players",
    Default = _G.Settings.Visual["Player Tracer"],
    Tooltip = "Players ESP",
})

Toggles["TracerPlayers"]:OnChanged(function(value)
    _G.Settings.Visual["Player Tracer"] = value
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Settings.Visual["Player Tracer"] then
                for i,v in pairs(game.Players:GetChildren()) do
                    if v.Name ~= game.Players.LocalPlayer.Name then
                        if not v.Character.HumanoidRootPart:FindFirstChild("PlayerESP") then
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")

                            BillboardGui.Parent = v.Character.HumanoidRootPart
                            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            BillboardGui.Active = true
                            BillboardGui.Name = "PlayerESP"
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1.000
                            BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Size = UDim2.new(0, 200, 0, 50)
                            TextLabel.Font = Enum.Font.GothamBold
                            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.Text.Size = 35
                            TextLabel.TextStrokeTransparency = 0.000
                            TextLabel.TextWrapped = true
                        end
                        local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude)
                        v.Character.HumanoidRootPart:FindFirstChild("PlayerESP").TextLabel.Text = v.Name.."\n\n"..Dis.." M."
                        if v.Team == game.Players.LocalPlayer.Team then
                            v.Character.HumanoidRootPart:FindFirstChild("PlayerESP").TextLabel.TextStrokeColor3 = Color3.new(255,0,0)
                        else
                            v.Character.HumanoidRootPart:FindFirstChild("PlayerESP").TextLabel.TextStrokeColor3 = Color3.new(0,255,255)
                        end
                    end
                end
            else
                for i,v in pairs(game.Players:GetChildren()) do
                    if v.Name ~= game.Players.LocalPlayer.Name then
                        if v.Character.HumanoidRootPart:FindFirstChild("PlayerESP") then
                            v.Character.HumanoidRootPart.PlayerESP:Destroy()
                        end
                    end
                end
            end
        end)
    end
end)

VisualSection:AddToggle("TracerFruit",{
    Text = "Esp Fruits",
    Default = _G.Settings.Visual["Fruit Tracer"],
    Tooltip = "Fruit ESP",
})

Toggles["TracerFruit"]:OnChanged(function(value)
    _G.Settings.Visual["Fruit Tracer"] = value
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Settings.Visual["Fruit Tracer"] then
                for i,v in pairs(game.Workspace:GetChildren()) do
                    if v:IsA("Tool") or v.Name == "Fruit" then
                        if v:FindFirstChild("Handle") then
                            if not v.Handle:FindFirstChild("FruitESP") then
                                local BillboardGui = Instance.new("BillboardGui")
                                local TextLabel = Instance.new("TextLabel")

                                BillboardGui.Parent = v.Handle
                                BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                                BillboardGui.Active = true
                                BillboardGui.Name = "FruitESP"
                                BillboardGui.AlwaysOnTop = true
                                BillboardGui.LightInfluence = 1.000
                                BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                                BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                                TextLabel.Parent = BillboardGui
                                TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                TextLabel.BackgroundTransparency = 1.000
                                TextLabel.Size = UDim2.new(0, 200, 0, 50)
                                TextLabel.Font = Enum.Font.GothamBold
                                TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                                TextLabel.Text.Size = 35
                                TextLabel.TextStrokeTransparency = 0.000
                                TextLabel.TextWrapped = true
                            end
                            local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Handle.Position).Magnitude)
                            v.Handle.FruitESP.TextLabel.Text = v.Name.."\n"..Dis.." M."
                        end
                    end
                end
            else
                for i,v in pairs(game.Workspace:GetChildren()) do
                    if v:IsA("Tool") then
                        if v:FindFirstChild("Handle") then
                            if v.Handle:FindFirstChild("FruitESP") then
                                v.Handle.FruitESP:Destroy()
                            end
                        end
                    end
                end
            end
        end)
    end
end)

VisualSection:AddToggle("TracerIsland",{ 
    Text = "Esp Islands",
    Default = _G.Settings.Visual["Island Tracer"], 
    Tooltip = "Island ESP", 
})

Toggles["TracerIsland"]:OnChanged(function(value)
    _G.Settings.Visual["Island Tracer"] = value
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Settings.Visual["Island Tracer"] then
                for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
                    if not v:FindFirstChild("IslandEsp") then
                        local BillboardGui = Instance.new("BillboardGui")
                        local TextLabel = Instance.new("TextLabel")

                        BillboardGui.Parent = v
                        BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active = true
                        BillboardGui.Name = "IslandEsp"
                        BillboardGui.AlwaysOnTop = true
                        BillboardGui.LightInfluence = 1.000
                        BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                        BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                        TextLabel.Parent = BillboardGui
                        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency = 1.000
                        TextLabel.Size = UDim2.new(0, 200, 0, 50)
                        TextLabel.Font = Enum.Font.GothamBold
                        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.Text.Size = 35
                        TextLabel.TextStrokeTransparency = 0.000
                        TextLabel.TextWrapped = true
                    end
                    local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude / 10)
                    v.IslandEsp.TextLabel.Text = v.Name.."\n".."["..Dis.."]"
                end
            else
                for i,v in pairs (game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
                    if v:FindFirstChild("IslandEsp") then
                        v.IslandEsp:Destroy()
                    end
                end
            end
        end)
    end
end)

-- [ Players ]

PlayerList = {}

for i,v in pairs(game.Players:GetChildren()) do  
    table.insert(PlayerList ,v.Name)
end

local SelectedPly = Players1:AddDropdown("PlayerFunc1",{
    Default = _G.Settings.Players["Select Ply"], 
    Multi = false,
    Text = "Select Player",
    Values = PlayerList,
})

Options["PlayerFunc1"]:OnChanged(function(value)
    _G.Settings.Players["Select Ply"] = value
    SaveSettings()
end)

Players1:AddButton("Refresh Player",function()
    table.clear(PlayerList)
    for i,v in pairs(game.Players:GetChildren()) do  
        table.insert(PlayerList ,v.Name)
    end
    SelectedPly:SetValues(PlayerList)
end)

Players1:AddToggle("AimPlayer",{
    Text = "Aimbot [Selected Player]",
    Default = _G.Settings.Players["Aimbot Skill"], 
    Tooltip = "Aimbot the Selected Player (Skill or Gun)",
})

Toggles["AimPlayer"]:OnChanged(function(value)
    _G.Settings.Players["Aimbot Skill"] = value
    _G.Settings.Players["Aimbot Gun"] = value
end)

Players1:AddToggle("Lock3P",{
    Text = "Aim Lock Players",
    Default = _G.Settings.Players["Lock Player Aimbot"],
    Tooltip = "Lock Player (Right Click to Lock Camera)",
})

Toggles["Lock3P"]:OnChanged(function(value)
    _G.Settings.Players["Lock Player Aimbot"] = value
    SaveSettings()
end)

_G.Settings.Players["Lock Player Aimbot"] = false
local camera = game.Workspace.CurrentCamera
local localplayer = game:GetService("Players").LocalPlayer

if _G.Settings.Players["Lock Player Aimbot"] == false then
    function closestplayer()
        local dist = math.huge
        local target = nil 
        for i,v in pairs (game:GetService("Players"):GetPlayers()) do
            if v ~= localplayer then
                if v.Character and v.Character:FindFirstChild("HumanoidRootPart") and _G.Settings.Players["Lock Player Aimbot"] and v.Character.Humanoid.Health > 0 then
                    local magnitude = (v.Character.Head.Position - localplayer.Character.Head.Position).magnitude
                    if magnitude < dist then
                        dist = magnitude
                        target = v
                    end

                end
            end
        end
        return target
    end
end

local settings = {
    keybind = Enum.UserInputType.MouseButton2
}

local UIS = game:GetService("UserInputService")
local aiming = false 

UIS.InputBegan:Connect(function(inp)
    if inp.UserInputType == settings.keybind then
        aiming = true
    end
end)

UIS.InputEnded:Connect(function(inp)
    if inp.UserInputType == settings.keybind then
        aiming = false
    end
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if aiming then
        camera.CFrame = CFrame.new(camera.CFrame.Position,closestplayer().Character.Head.Position)
    end
end)

local Circle = Drawing.new("Circle")
Circle.Color =  Color3.fromRGB(255, 255, 255)
Circle.Thickness = 1
Circle.Radius = 250
Circle.NumSides = 460
Circle.Filled = false
Circle.Transparency = 1

game:GetService("RunService").Stepped:Connect(function()
    Circle.Radius = tonumber(_G.Settings.Players["Fov Size Aimbot"])
    Circle.Thickness = 1
    Circle.NumSides = 460
    Circle.Position = game:GetService('UserInputService'):GetMouseLocation()
    if _G.Settings.Players["Show Fov"] then
        Circle.Visible = true
    else
        Circle.Visible = false
    end
end)

Players1:AddToggle("ShowFoVp",{
    Text = "Show Fow",
    Default = _G.Settings.Players["Show Fov"], 
    Tooltip = "Fov for Aimbot",
})

Toggles["ShowFoVp"]:OnChanged(function(value)
    _G.Settings.Players["Show Fov"] = value
    SaveSettings()
end)

Players1:AddSlider("FovSize345",{
    Text = "Fov Size for [ Aimbot ]",
    Default = _G.Settings.Players["Fov Size Aimbot"],
    Min = 0,
    Max = 500,
    Rounding = 1,
    Compact = false, 
})

Options["FovSize345"]:OnChanged(function(value)
    _G.Settings.Players["Fov Size Aimbot"] = value
    SaveSettings()
end)

local lp = game:GetService('Players').LocalPlayer
local mouse = lp:GetMouse()

spawn(function()
	while task.wait() do
		if _G.Settings.Players["Aimbot Skill"] and _G.Settings.Players["Aimbot Gun"] then
			pcall(function()
				local MaxDist, Closest = math.huge
				for i,v in pairs(game:GetService("Players"):GetChildren()) do 
					local Head = v.Character:FindFirstChild("HumanoidRootPart")
					local Pos, Vis = game.Workspace.CurrentCamera.WorldToScreenPoint(game.Workspace.CurrentCamera, Head.Position)
					local MousePos, TheirPos = Vector2.new(mouse.X, mouse.Y), Vector2.new(Pos.X, Pos.Y)
					local Dist = (TheirPos - MousePos).Magnitude
					if Dist < MaxDist and Dist <= _G.Settings.Players["Fov Size"] and v.Name ~= game.Players.LocalPlayer.Name then
						MaxDist = Dist
						_G.Aim_Players = v
					end
				end
			end)
		end
	end
end)

spawn(function()
	while task.wait() do
		if _G.Settings.Players["Aimbot Skill"] then
			if game.Players:FindFirstChild(_G.Settings.Players["Select Ply"]) and game.Players:FindFirstChild(_G.Settings.Players["Select Ply"]).Character:FindFirstChild("HumanoidRootPart") and game.Players:FindFirstChild(_G.Settings.Players["Select Ply"]).Character:FindFirstChild("Humanoid") and game.Players:FindFirstChild(_G.Settings.Players["Select Ply"]).Character.Humanoid.Health > 0 then
				_G.AimBotSkillPosition = game.Players:FindFirstChild(_G.Settings.Players["Select Ply"]).Character:FindFirstChild("HumanoidRootPart").Position
			end
		end
	end
end)

local lp = game:GetService('Players').LocalPlayer
local mouse = lp:GetMouse()
mouse.Button1Down:Connect(function()
	if _G.Settings.Players["Aimbot Gun"] and game.Players.LocalPlayer.Character:FindFirstChild(CurrentEquipGun) and game:GetService("Players"):FindFirstChild(_G.Settings.Players["Select Ply"]) then
		tool = game:GetService("Players").LocalPlayer.Character[CurrentEquipGun]
		v17 = workspace:FindPartOnRayWithIgnoreList(Ray.new(tool.Handle.CFrame.p, (game:GetService("Players"):FindFirstChild(_G.Settings.Players["Select Ply"]).Character.HumanoidRootPart.Position - tool.Handle.CFrame.p).unit * 100), { game.Players.LocalPlayer.Character, workspace._WorldOrigin });
		game:GetService("Players").LocalPlayer.Character[CurrentEquipGun].RemoteFunctionShoot:InvokeServer(game:GetService("Players"):FindFirstChild(_G.Settings.Players["Select Ply"]).Character.HumanoidRootPart.Position, (require(game.ReplicatedStorage.Util).Other.hrpFromPart(v17)));
	end 
end)

-- [ Player's Control ]

Players2:AddToggle("PlayerFunc2",{
    Text = "Teleport Player",
    Default = _G.Settings.Players["Teleport Player"], 
    Tooltip = "Teleport the Selected Player",
})

Toggles["PlayerFunc2"]:OnChanged(function(value)
    _G.Settings.Players["Teleport Player"] = value
    pcall(function()
        if _G.Settings.Players["Teleport Player"] then
            repeat task.wait()
                Tween(game:GetService("Players")[_G.Settings.Players["Select Ply"]].Character.HumanoidRootPart.CFrame) wait() until _G.Settings.Players["Teleport Player"] == false
        end
        CancelTween(_G.Settings.Players["Teleport Player"])
    end)
    SaveSettings()
end)

Players2:AddToggle("PlayerFunc3",{
    Text = "Spectate Player",
    Default = _G.Settings.Players["Spectate Player"],
    Tooltip = "Spectate the Selected Player",
})

Toggles["PlayerFunc3"]:OnChanged(function(value)
    _G.Settings.Players["Spectate Player"] = value
    pcall(function()
        local plr1 = game:GetService("Players").LocalPlayer.Character.Humanoid
        local plr2 = game:GetService("Players"):FindFirstChild(_G.Settings.Players["Select Ply"])
        repeat task.wait()
            game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(_G.Settings.Players["Select Ply"]).Character.Humanoid
        until _G.Settings.Players["Spectate Player"] == false
        game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
    end)
    SaveSettings()
end)

Players2:AddToggle("PlayerFunc4",{
    Text = "Kill Player using [Melee]",
    Default = _G.Settings.Players["Kill Player Melee"],
    Tooltip = "Kill Player not Rage",
})

Toggles["PlayerFunc4"]:OnChanged(function(value)
    _G.Settings.Players["Kill Player Melee"] = value
    CancelTween(_G.Settings.Players["Kill Player Melee"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Players["Kill Player Melee"] then
            pcall(function()
                if game.Players:FindFirstChild(_G.Settings.Players["Select Ply"]) then
                    for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                        if v.Name == _G.Settings.Players["Select Ply"] then
                            repeat task.wait()
                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                    EquipTool(KillPlayerUsingMelee)
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                end
                            until game.Players:FindFirstChild(_G.Settings.Players["Select Ply"]).Character.Humanoid.Health <= 0 or not _G.Settings.Players["Kill Player Melee"] or not game.Players:FindFirstChild(_G.Settings.Players["Select Ply"])
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    pcall(function()
        for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
            if v.ToolTip == "Melee" then
                if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                    KillPlayerUsingMelee = tostring(v.Name)
                end
            end
        end
    end)
end)

Players2:AddToggle("PlayerFunc5",{
    Text = "Kill Player using [Gun]",
    Default = _G.Settings.Players["Kill Player Gun"],
    Tooltip = "Kill Player Rageee",
})

Toggles["PlayerFunc5"]:OnChanged(function(value)
    _G.Settings.Players["Kill Player Gun"] = value
    CancelTween(_G.Settings.Players["Kill Player Gun"])
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Players["Kill Player Gun"] then
            pcall(function()
                if game.Players:FindFirstChild(_G.Settings.Players["Select Ply"]) then
                    for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                        if v.Name == _G.Settings.Players["Select Ply"] then
                            repeat task.wait()
                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                    Tween(v.HumanoidRootPart.CFrame)
                                elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                    EquipTool(CurrentEquipGun)
                                    UseGunKillPlayer = true
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(_G.Settings.Coords["X"],_G.Settings.Coords["Y"],_G.Settings.Coords["Z"]))
                                    game:GetService("Players").LocalPlayer.Character[CurrentEquipGun].Cooldown.Value = 0
                                end
                            until game.Players:FindFirstChild(_G.Settings.Players["Select Ply"]).Character.Humanoid.Health <= 0 or not _G.Settings.Players["Kill Player Gun"] or not game.Players:FindFirstChild(_G.Settings.Players["Select Ply"])
                        end
                    end
                else
                    UseGunKillPlayer = false
                end
            end)
        end
    end
end)

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if UseGunKillPlayer then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                    if v.Name == _G.Settings.Players["Select Ply"] then
                        game:GetService("Players").LocalPlayer.Character[CurrentEquipGun].RemoteFunctionShoot:InvokeServer(v.HumanoidRootPart.Position,v.HumanoidRootPart)
                    end
                end
            end)
        end
    end)
end)

-- [ Buff ]

Players3:AddToggle("MiscFunc2",{
    Text = "Dodge no Cooldown",
    Default = _G.Settings.Buff["Dodge without Cool"], 
    Tooltip = "Dodge without cooldown",
})

Toggles["MiscFunc2"]:OnChanged(function(value)
    _G.Settings.Buff["Dodge without Cool"] = value
    NoCooldown()
    SaveSettings()
end)

Players3:AddToggle("MiscFunc3",{
    Text = "Infinite Energy",
    Default = _G.Settings.Buff["Infinite Ability"], 
    Tooltip = "Infinite Abilities",
})

Toggles["MiscFunc3"]:OnChanged(function(value)
    _G.Settings.Buff["Infinite Ability"] = value
    InfinityEnergy()
    SaveSettings()
end)

Players3:AddToggle("MiscFunc5",{
    Text = "Infinite Geppo",
    Default = _G.Settings.Buff["Infinite Geppo"], 
    Tooltip = "Infinite Geppo",
})

Toggles["MiscFunc5"]:OnChanged(function(value)
    _G.Settings.Buff["Infinite Geppo"] = value
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Buff["Infinite Geppo"] then
            pcall(function()
                for i,v in next, getgc() do
                    if getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Geppo then
                        for i2,v2 in next, getupvalues(v) do
                            if tostring(v2) == "0" then
                                repeat task.wait()
                                    setupvalue(v,i2,0)
                                until not _G.Settings.Buff["Infinite Geppo"] or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0
                            end
                        end
                    end
                end
            end)
        end
    end
end)

Players3:AddToggle("MiscFunc6",{
    Text = "Infinite Soru",
    Default = _G.Settings.Buff["Infinite Soru"], 
    Tooltip = "Infinite Soru",
})

Toggles["MiscFunc6"]:OnChanged(function(value)
    _G.Settings.Buff["Infinite Soru"] = value
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Buff["Infinite Soru"] and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil  then
            pcall(function()
                for i,v in next, getgc() do
                    if game:GetService("Players").LocalPlayer.Character.Soru then
                        if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Soru then
                            for i2,v2 in next, getupvalues(v) do
                                if typeof(v2) == "table" then
                                    repeat wait(.1)
                                        v2.LastUse = 0
                                    until not _G.Settings.Buff["Infinite Soru"] or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

Players3:AddToggle("MiscFunc7",{
    Text = "Walk on Water",
    Default = _G.Settings.Buff["Walk above Water"], 
    Tooltip = "Walking on the water without dying",
})

Toggles["MiscFunc7"]:OnChanged(function(value)
    _G.Settings.Buff["Walk above Water"] = value
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Buff["Walk above Water"] then
            pcall(function()
                if not nelzkie then
                    game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
                else
                    game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
                end
            end)
        end
    end
end)

-- [ Shop ]

-- [ Mixed ]

local TotalBone = MixedShop:AddLabel("")
    
spawn(function()
    pcall(function()
        while task.wait() do
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check") then
                TotalBone:SetText("Bone : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check"))
            else
                TotalBone:SetText("Bone : 0")
            end
        end
    end)
end)

MixedShop:AddToggle("EssentialsFunc2",{
    Text = "Auto Trade Bone",
    Default = _G.Settings.Main["Auto Trade Bone"], 
    Tooltip = "Auto Trade Bone from Death King",
})

Toggles["EssentialsFunc2"]:OnChanged(function(value)
    _G.Settings.Main["Auto Trade Bone"] = value
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Trade Bone"] then   
            pcall(function() 
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
            end)
        end
    end
end)

-- [ Legendary Sword and Legendary Color Haki ]

Essential:AddToggle("EssentialsFunc3",{
    Text = "Auto Buy Legendary Sword",
    Default = _G.Settings.Main["Auto Legendary Sword"], 
    Tooltip = "Auto Buy Legendary Sword from Sword Dealer",
})

Toggles["EssentialsFunc3"]:OnChanged(function(value)
    _G.Settings.Main["Auto Legendary Sword"] = value
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Legendary Sword"] then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySworldDealer","1")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySworldDealer","2")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySworldDealer","2")
            end)
        end
    end
end)

Essential:AddToggle("EssentialsFunc4",{
    Text = "Auto Buy Enchancement Color",
    Default = _G.Settings.Main["Auto Color Haki"], 
    Tooltip = "Auto Buy Enchancement Colour from Colors Dealer",
})

Toggles["EssentialsFunc4"]:OnChanged(function(value)
    _G.Settings.Main["Auto Color Haki"] = value
    SaveSettings()
end)

spawn(function()
    while task.wait() do
        if _G.Settings.Main["Auto Color Haki"] then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ColorsDealer","2")
            end)
        end
    end
end)

-- [ Other ]

MixedShop:AddButton("Race Reroll",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
end)

MixedShop:AddButton("Refund Stats",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
end)

-- [ Abilities ]

Shop2:AddButton("Geppo",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
end)

Shop2:AddButton("Buso Haki",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
end)

Shop2:AddButton("Soru",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
end)

Shop2:AddButton("Observation Ken Haki",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
end)

-- [ Fighting Styles ]

Shop3:AddButton("Black Leg",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
end)

Shop3:AddButton("Electro",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
end)

Shop3:AddButton("Fishman Karate",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
end)

Shop3:AddButton("Dragon Claw",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
end)

Shop3:AddButton("Superhuman",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
end)

Shop3:AddButton("Death Step",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
end)

Shop3:AddButton("Sharkman Karate",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
end)

Shop3:AddButton("Electric Claw",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
end)

Shop3:AddButton("Dragon Talon",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
end)

Shop3:AddButton("God Human",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
end)

-- [ Accessories ]

Shop4:AddButton("Tomoe Ring",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
end)

Shop4:AddButton("Black Cape",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
end)

Shop4:AddButton("Swordsman Hat",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Swordsman Hat")
end)

-- [ Swords ]

Shop5:AddButton("Cutlass",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
end)

Shop5:AddButton("Katana",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
end)

Shop5:AddButton("Iron Mace",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
end)

Shop5:AddButton("Duel Katana",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
end)

Shop5:AddButton("Triple Katana",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
end)

Shop5:AddButton("Pipe",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
end)

Shop5:AddButton("Dual Headed Blade",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
end)

Shop5:AddButton("Bisento",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
end)

Shop5:AddButton("Soul Cane",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
end)

-- [ Gun ]

Shop6:AddButton("Slingshot",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
end)

Shop6:AddButton("Musket",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
end)

Shop6:AddButton("Flintlock",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
end)

Shop6:AddButton("Refined Flintlock",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
end)

Shop6:AddButton("Cannon",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
end)

Shop6:AddButton("Kabucha",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
end)

-- [ Misc ]

Misc1:AddButton("Rejoin Server",function()
    game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
end)

Misc1:AddButton("Hop Server (Low playing)",function()
    Teleport()
end)

Misc1:AddToggle("InstantTP", {
    Text = "Crtl + LClick = Teleport",
    Default = _G.Settings.Teleport["Crtl Click Tp"],
    Tooltip = "Teleport Tool CTRL + LClick",
})

Toggles["InstantTP"]:OnChanged(function(value)
    _G.Settings.Teleport["Crtl Click Tp"] = value
    local Plr = game:GetService("Players").LocalPlayer
    local Mouse = Plr:GetMouse()
    Mouse.Button1Down:connect(
        function()
            if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
                return
            end
            if not Mouse.Target then
                return
            end
            if _G.Settings.Teleport["Crtl Click Tp"] then
                Plr.Character:MoveTo(Mouse.Hit.p)
            end
        end)
end)

-- [ Misc 2 ]

Misc2:AddButton("Pirates",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates") 
end)
    
Misc2:AddButton("Marines",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines") 
end)

-- [ Misc 3 ]

Misc3:AddButton("Devil Shop",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
    game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
end)
                
Misc3:AddButton("Title Name",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getTitles") 
    game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
end)

Misc3:AddButton("Color Haki",function()
    game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
end)

Misc3:AddButton("Awakening Toggles",function()
    game.Players.LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
end)

-- [ Change Buso State ]

HakiState = {"State 0","State 1","State 2","State 3","State 4","State 5"}

Misc4:AddDropdown("MiscFunc1",{
    Default = _G.Settings.Misc["Select Buso State"], 
    Multi = false,
    Text = "Select Haki State",
    Values = HakiState,
})

Options["MiscFunc1"]:OnChanged(function(value)
    _G.Settings.Misc["Select Buso State"] = value
    SaveSettings()
end)

Misc4:AddButton("Change Haki State",function()
    if _G.Settings.Misc["Select Buso State"] == "State 0" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",0)
    elseif _G.Settings.Misc["Select Buso State"] == "State 1" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",1)
    elseif _G.Settings.Misc["Select Buso State"] == "State 2" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",2)
    elseif _G.Settings.Misc["Select Buso State"] == "State 3" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",3)
    elseif _G.Settings.Misc["Select Buso State"] == "State 4" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",4)
    elseif _G.Settings.Misc["Select Buso State"] == "State 5" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",5)
    end
end) 

-- [ Webhook ]

local WebHookLog = {}

local AllRequest = http_request or request or HttpPost or syn.request
function WebHookLog:WebHookKaiTanSend(WebHookUrl)

    function GetFightingStyle(Style)
        ReturnText = ""
        for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") then
                if v.ToolTip == Style then
                    ReturnText = v.Name
                end
            end
        end
        for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Tool") then
                if v.ToolTip == Style then
                    ReturnText = v.Name
                end
            end
        end
        if ReturnText ~= "" then
            return ReturnText
        else
            return "Not Have"
        end
    end

    function GetAwaken()
        ReturnText = ""
        Awakened_Z = ":x:"
        Awakened_X = ":x:"
        Awakened_C = ":x:"
        Awakened_V = ":x:"
        Awakened_F = ":x:"
        for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") then
                if v.ToolTip == "Blox Fruit" then
                    if v:FindFirstChild("AwakenedMoves") then
                        if v.AwakenedMoves:FindFirstChild("Z") then
                            Awakened_Z = ":white_check_mark:"
                        end
                        if v.AwakenedMoves:FindFirstChild("X") then
                            Awakened_X = ":white_check_mark:"
                        end
                        if v.AwakenedMoves:FindFirstChild("C") then
                            Awakened_C = ":white_check_mark:"
                        end
                        if v.AwakenedMoves:FindFirstChild("V") then
                            Awakened_V = ":white_check_mark:"
                        end
                        if v.AwakenedMoves:FindFirstChild("F") then
                            Awakened_F = ":white_check_mark:"
                        end
                        ReturnText = ":regional_indicator_z:"..Awakened_Z..
                            "\n"..":regional_indicator_x:"..Awakened_X..
                            "\n"..":regional_indicator_c:"..Awakened_C..
                            "\n"..":regional_indicator_v:"..Awakened_V..
                            "\n"..":regional_indicator_f:"..Awakened_F
                    else
                        ReturnText = "This Fruit Can't Awakened"
                    end
                end
            end
        end
        for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Tool") then
                if v.ToolTip == "Blox Fruit" then
                    if v:FindFirstChild("AwakenedMoves") then
                        if v.AwakenedMoves:FindFirstChild("Z") then
                            Awakened_Z = ":white_check_mark:"
                        end
                        if v.AwakenedMoves:FindFirstChild("X") then
                            Awakened_X = ":white_check_mark:"
                        end
                        if v.AwakenedMoves:FindFirstChild("C") then
                            Awakened_C = ":white_check_mark:"
                        end
                        if v.AwakenedMoves:FindFirstChild("V") then
                            Awakened_V = ":white_check_mark:"
                        end
                        if v.AwakenedMoves:FindFirstChild("F") then
                            Awakened_F = ":white_check_mark:"
                        end
                        ReturnText = ":regional_indicator_z:"..Awakened_Z..
                            "\n"..":regional_indicator_x:"..Awakened_X..
                            "\n"..":regional_indicator_c:"..Awakened_C..
                            "\n"..":regional_indicator_v:"..Awakened_V..
                            "\n"..":regional_indicator_f:"..Awakened_F
                    else
                        ReturnText = "This Fruit Can't Awakened"
                    end
                end
            end
        end
        if ReturnText ~= "" then
            return ReturnText
        else
            return "Not Have"
        end
    end

    function GetWeapon(Rare)
        if Rare == "Common" then
            RareNumber = 0
        elseif Rare == "Uncommon" then
            RareNumber = 1
        elseif Rare == "Rare" then
            RareNumber = 2
        elseif Rare == "Legendary" then
            RareNumber = 3
        elseif Rare == "Mythical" then
            RareNumber = 4
        else
            return "Worng InPut"
        end
        local ReturnText = ""
        for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryWeapons")) do
            if type(v) == "table" then
                if v.Rarity then
                    if tonumber(v.Rarity) == RareNumber then
                        ReturnText = ReturnText .. v.Name .. "\n"
                    end
                end
            end
        end
        if ReturnText ~= "" then
            return ReturnText
        else
            return "Not Have"
        end
    end

    function GetFruitInU()
        local ReturnText = ""
        for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
            if type(v) == "table" then
                if v ~= nil then
                    ReturnText = ReturnText .. v.Name .. " : " .. v.Price .. "\n"
                end
            end
        end

        if ReturnText ~= "" then
            return ReturnText
        else
            return "Not Have"
        end
    end

    function GetAllMelee()
        BuyDragonTalon = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true))
        if BuyDragonTalon then
            if BuyDragonTalon == 1 then
                TalComplete = true
            end
        end
        BuySuperhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true))
        if BuySuperhuman then
            if BuySuperhuman == 1 then
                SupComplete = true
            end
        end
        BuySharkmanKarate = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true))
        if BuySharkmanKarate then
            if BuySharkmanKarate == 1 then
                SharkComplete = true
            end
        end
        BuyDeathStep = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true))
        if BuyDeathStep then
            if BuyDeathStep == 1 then
                DeathComplete = true
            end
        end
        BuyElectricClaw = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true))
        if BuyElectricClaw then
            if BuyElectricClaw == 1 then
                EClawComplete = true
            end
        end
        BuyGod = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true))
        if BuyGod then
            if BuyGod == 1 then
                GodComplete = true
            end
        end
        ReturnText = {}
        if SupComplete == true then
            table.insert(ReturnText,"SuperHuman")
        end
        if EClawComplete == true then
            table.insert(ReturnText,"Electric Claw")
        end
        if TalComplete == true then
            table.insert(ReturnText,"Dragon Talon")
        end
        if SharkComplete == true then
            table.insert(ReturnText,"Sharkman Karate")
        end
        if DeathComplete == true then
            table.insert(ReturnText,"Death Step")
        end
        if GodComplete == true then
            table.insert(ReturnText,"God Human")
        end

        if #ReturnText ~= 0 then
            return table.concat(ReturnText,",")
        else
            return "Not Have"
        end
    end

    local Embeds = {{
        ["title"] = "**Shadow Hub Webhooks!**",
        ["color"] = tonumber(0xD936FF),
        ["fields"] = {
            {
                ["name"] = "User Name",
                ["value"] = "||"..tostring(game.Players.LocalPlayer.Name).."||",
                ["inline"] = true
            },
            {
                ["name"] = "Level",
                ["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Level").Value),
                ["inline"] = true
            },
            {
                ["name"] = "Fragments",
                ["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Fragments").Value),
                ["inline"] = true
            },
            {
                ["name"] = "Bounty/Honor",
                ["value"] = tostring(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value),
                ["inline"] = true
            },
            {
                ["name"] = "Beli",
                ["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Beli").Value),
                ["inline"] = true
            },
            {
                ["name"] = "Fighting Style",
                ["value"] = GetFightingStyle("Melee"),
                ["inline"] = true
            },
            {
                ["name"] = "Sword",
                ["value"] = GetFightingStyle("Sword"),
                ["inline"] = true
            },
            {
                ["name"] = "Devil Fruit",
                ["value"] = GetFightingStyle("Blox Fruit"),
                ["inline"] = true
            },
            {
                ["name"] = "Gun",
                ["value"] = GetFightingStyle("Gun"),
                ["inline"] = true
            },
            {
                ["name"] = "Accessory",
                ["value"] = GetFightingStyle("Wear"),
                ["inline"] = true
            },
            {
                ["name"] = "Race",
                ["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Race").Value),
                ["inline"] = true
            },
            {
                ["name"] = "Awakened",
                ["value"] = tostring(GetAwaken()),
                ["inline"] = true
            },
            {
                ["name"] = "Status",
                ["value"] = "```sml\n"..tostring("Melee : "..game:GetService("Players").LocalPlayer.Data.Stats.Melee:WaitForChild("Level").Value ..
                    "\nDefense : "..game:GetService("Players").LocalPlayer.Data.Stats.Defense:WaitForChild("Level").Value ..
                    "\nSword : "..game:GetService("Players").LocalPlayer.Data.Stats.Sword:WaitForChild("Level").Value..
                    "\nGun : "..game:GetService("Players").LocalPlayer.Data.Stats.Gun:WaitForChild("Level").Value ..
                    "\nDevil Fruit : "..game:GetService("Players").LocalPlayer.Data.Stats["Demon Fruit"]:WaitForChild("Level").Value).."```",
                ["inline"] = true
            },
            {
                ["name"] = "Common :blue_circle:",
                ["value"] = "```sml\n"..tostring(GetWeapon("Common")).."```",
                ["inline"] = true
            },
            {
                ["name"] = "Uncommon :green_circle:",
                ["value"] = "```sml\n"..tostring(GetWeapon("Uncommon")).."```",
                ["inline"] = true
            },
            {
                ["name"] = "Rare :yellow_circle:",
                ["value"] = "```sml\n"..tostring(GetWeapon("Rare")).."```",
                ["inline"] = true
            },
            {
                ["name"] = "Legendary :purple_circle:",
                ["value"] = "```sml\n"..tostring(GetWeapon("Legendary")).."```",
                ["inline"] = true
            },
            {
                ["name"] = "Mythical :red_circle:",
                ["value"] = "```sml\n"..tostring(GetWeapon("Mythical")).."```",
                ["inline"] = true
            },
            {
                ["name"] = "Fruit In Inventory",
                ["value"] = "```sml\n"..tostring(GetFruitInU()).."```",
                ["inline"] = true
            },
            {
                ["name"] = "All Melee",
                ["value"] = "```sml\n"..tostring(GetAllMelee()).."```",
                ["inline"] = true
            },



            {
                ["name"] = "ㅤ",
                ["value"] = tostring("ㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤ"),
                ["inline"] = false
            }},
        ["footer"] = {
            ["text"] = "Made by xPeachy#7674".."\nTime".." : "..os.date("%c").." ("..os.date("%X")..")",
            ["icon_url"] = ""
        },
    }}

    local Message
    if _G.SendWebHookPing then
        Message = {
            ['username'] = "Shadow Hub Webhooks!",
            ["avatar_url"] = "",
            ["content"] = "@everyone",
            ["embeds"] = Embeds,
        }
    else
        Message = {
            ['username'] = "Shadow Hub Webhooks!",
            ["avatar_url"] = "",
            ["embeds"] = Embeds,
        }
    end

    local DataCallBack = AllRequest({
        Url = WebHookUrl,
        Method = 'POST',
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = game:GetService("HttpService"):JSONEncode(Message)
    })
    return DataCallBack
end

function WebHookLog:SheetBestLogSend(SheetBestUrl)

    function GetFightingStyle(Style)
        ReturnText = ""
        for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") then
                if v.ToolTip == Style then
                    ReturnText = v.Name
                end
            end
        end
        for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Tool") then
                if v.ToolTip == Style then
                    ReturnText = v.Name
                end
            end
        end
        if ReturnText ~= "" then
            return ReturnText
        else
            return "Not Have"
        end
    end

    function GetAllMelee()
        BuyDragonTalon = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true))
        if BuyDragonTalon then
            if BuyDragonTalon == 1 then
                TalComplete = true
            end
        end
        BuySuperhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true))
        if BuySuperhuman then
            if BuySuperhuman == 1 then
                SupComplete = true
            end
        end
        BuySharkmanKarate = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true))
        if BuySharkmanKarate then
            if BuySharkmanKarate == 1 then
                SharkComplete = true
            end
        end
        BuyDeathStep = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true))
        if BuyDeathStep then
            if BuyDeathStep == 1 then
                DeathComplete = true
            end
        end
        BuyElectricClaw = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true))
        if BuyElectricClaw then
            if BuyElectricClaw == 1 then
                EClawComplete = true
            end
        end
        BuyGod = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true))
        if BuyGod then
            if BuyGod == 1 then
                GodComplete = true
            end
        end
        ReturnText = {}
        if SupComplete == true then
            table.insert(ReturnText,"SuperHuman")
        end
        if EClawComplete == true then
            table.insert(ReturnText,"Electric Claw")
        end
        if TalComplete == true then
            table.insert(ReturnText,"Dragon Talon")
        end
        if SharkComplete == true then
            table.insert(ReturnText,"Sharkman Karate")
        end
        if DeathComplete == true then
            table.insert(ReturnText,"Death Step")
        end
        if GodComplete == true then
            table.insert(ReturnText,"God Human")
        end

        if #ReturnText ~= 0 then
            return table.concat(ReturnText,",")
        else
            return "Not Have"
        end
    end

    function GetAwaken()
        ReturnText = ""
        Awakened_Z = "❌"
        Awakened_X = "❌"
        Awakened_C = "❌"
        Awakened_V = "❌"
        Awakened_F = "❌"
        for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") then
                if v.ToolTip == "Blox Fruit" then
                    if v:FindFirstChild("AwakenedMoves") then
                        if v.AwakenedMoves:FindFirstChild("Z") then
                            Awakened_Z = "Z"
                        end
                        if v.AwakenedMoves:FindFirstChild("X") then
                            Awakened_X = "X"
                        end
                        if v.AwakenedMoves:FindFirstChild("C") then
                            Awakened_C = "C"
                        end
                        if v.AwakenedMoves:FindFirstChild("V") then
                            Awakened_V = "V"
                        end
                        if v.AwakenedMoves:FindFirstChild("F") then
                            Awakened_F = "F"
                        end
                        ReturnText = Awakened_Z..
                            " : "..Awakened_X..
                            " : "..Awakened_C..
                            " : "..Awakened_V..
                            " : "..Awakened_F
                    else
                        ReturnText = "This Fruit Can't Awakened"
                    end
                end
            end
        end
        for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Tool") then
                if v.ToolTip == "Blox Fruit" then
                    if v:FindFirstChild("AwakenedMoves") then
                        if v.AwakenedMoves:FindFirstChild("Z") then
                            Awakened_Z = ":white_check_mark:"
                        end
                        if v.AwakenedMoves:FindFirstChild("X") then
                            Awakened_X = ":white_check_mark:"
                        end
                        if v.AwakenedMoves:FindFirstChild("C") then
                            Awakened_C = ":white_check_mark:"
                        end
                        if v.AwakenedMoves:FindFirstChild("V") then
                            Awakened_V = ":white_check_mark:"
                        end
                        if v.AwakenedMoves:FindFirstChild("F") then
                            Awakened_F = ":white_check_mark:"
                        end
                        ReturnText = ":regional_indicator_z:"..Awakened_Z..
                            " : "..":regional_indicator_x:"..Awakened_X..
                            " : "..":regional_indicator_c:"..Awakened_C..
                            " : "..":regional_indicator_v:"..Awakened_V..
                            " : "..":regional_indicator_f:"..Awakened_F
                    else
                        ReturnText = "This Fruit Can't Awakened"
                    end
                end
            end
        end
        if ReturnText ~= "" then
            return ReturnText
        else
            return "Not Have"
        end
    end

    function GetWeapon()
        local ReturnText = ""
        for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryWeapons")) do
            if type(v) == "table" then
                if v.Name then
                    ReturnText = ReturnText .. v.Name .. " "
                end
            end
        end
        if ReturnText ~= "" then
            return ReturnText
        else
            return "Not Have"
        end
    end

    function GetFruitInU()
        local ReturnText = ""
        for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
            if type(v) == "table" then
                if v ~= nil then
                    ReturnText = ReturnText .. v.Name .. " "
                end
            end
        end

        if ReturnText ~= "" then
            return ReturnText
        else
            return "Not Have"
        end
    end

    function GetWeaponMastery(Style)
        ReturnText = ""
        for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") then
                if v.ToolTip == Style then
                    ReturnText = v:FindFirstChild("Level").Value
                end
            end
        end
        for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Tool") then
                if v.ToolTip == Style then
                    ReturnText = v:FindFirstChild("Level").Value
                end
            end
        end
        if ReturnText ~= "" then
            return ReturnText
        else
            return "Not Have"
        end
    end

    function Abbreviate(x)
        local abbreviations = {
            "K", -- 4 digits
            "M", -- 7 digits
            "B", -- 10 digits
            "T", -- 13 digits
            "QD", -- 16 digits
            "QT", -- 19 digits
            "SXT", -- 22 digits
            "SEPT", -- 25 digits
            "OCT", -- 28 digits
            "NON", -- 31 digits
            "DEC", -- 34 digits
            "UDEC", -- 37 digits
            "DDEC", -- 40 digits
        }
        if x < 1000 then
            return tostring(x)
        end

        local digits = math.floor(math.log10(x)) + 1
        local index = math.min(#abbreviations, math.floor((digits - 1) / 3))
        local front = x / math.pow(10, index * 3)

        return string.format("%i%s+", front, abbreviations[index])
    end

    local Message
    Message = {
        ["UserName"] = tostring(game.Players.LocalPlayer.Name),
        ["Level"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Level").Value),
        ["Weapon inventory"] = tostring(GetWeapon()),
        ["Fruit inventory"] = tostring(GetFruitInU()),
        ["Melee"] = tostring(GetAllMelee()),
        ["Fruit"] = tostring(GetFightingStyle("Blox Fruit")),
        ["Fruit Mastery"] = tostring(GetWeaponMastery("Blox Fruit")),
        ["Fruit Awake"] = tostring(GetAwaken()),
        ["Beli"] = tostring(Abbreviate(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Beli").Value)),
        ["Fragment"] = tostring(Abbreviate(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Fragments").Value)),
        ["Race"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Race").Value)
    }

    local DataCallBack = AllRequest({
        Url = SheetBestUrl,
        Method = 'POST',
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = game:GetService("HttpService"):JSONEncode(Message)
    })
    return DataCallBack
end

Misc5:AddInput("WebHookNotify",{
    Default = "Input Webhook",
    Numeric = false,
    Finished = false,
    Text = "Webhook Link",
    Tooltip = "Put ur webhook here",
    Placeholder = "Put a Webhook Link!",
})

Options["WebHookNotify"]:OnChanged(function(value)
    Webhooklink = value
end)

Misc5:AddButton("Send Webhook",function()
    WebHookLog:WebHookKaiTanSend(Webhooklink)
end)

Misc6:AddButton("Kaitun Cap",function()
    local cac = require(game:GetService("Players").LocalPlayer.PlayerGui.Main.UIController.Inventory)
    local Inventory = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
    local Items = {}
    local RaityLevel = {"Mythical","Legendary","Rare","Uncommon","Common"}
    local RaityColor =  {
        ["Common"] = Color3.fromRGB(179, 179, 179),
        ["Uncommon"] = Color3.fromRGB(92, 140, 211),
        ["Rare"] =  Color3.fromRGB(140, 82, 255),
        ["Legendary"] = Color3.fromRGB(213, 43, 228) ,
        ["Mythical"] =  Color3.fromRGB(238, 47, 50)
    }
    function GetRaity(color)
        for k,v in pairs(RaityColor) do
            if v==color then return k end
        end
    end

    for k,v in pairs(Inventory) do
        Items[v.Name] = v
    end

    local total = #getupvalue(cac.UpdateRender,4)
    local rac = {}
    local allitem = {}
    local total2 = 0
    while total2<total do
        local i = 0
        while i < 25000 and total2<total do
            game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.CanvasPosition = Vector2.new(0,i)
            for k,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.Frame:GetChildren()) do
                if v:IsA("Frame") and not rac[v.ItemName.Text] and v.ItemName.Visible==true then
                    local vaihuhu = GetRaity(v.Background.BackgroundColor3)
                    if vaihuhu then
                        print("Rac")
                        if not allitem[vaihuhu] then
                            allitem[vaihuhu] = {}
                        end
                        table.insert(allitem[vaihuhu],v:Clone())
                    end
                    total2=total2+1
                    rac[v.ItemName.Text] = true
                end
            end
            i=i+20
        end
        wait()
    end
    function GetXY(vec)
        return vec*100
    end

    local tvk = Instance.new("UIListLayout")
    tvk.FillDirection = Enum.FillDirection.Vertical
    tvk.SortOrder = 2
    tvk.Padding = UDim.new(0,10)

    local Left = Instance.new("Frame",game.Players.LocalPlayer.PlayerGui.BubbleChat)
    Left.BackgroundTransparency = 1
    Left.Size = UDim2.new(.5,0,1,0)
    tvk.Parent = Left

    local Right = Instance.new("Frame",game.Players.LocalPlayer.PlayerGui.BubbleChat)
    Right.BackgroundTransparency = 1
    Right.Size = UDim2.new(.5,0,1,0)
    Right.Position = UDim2.new(.6,0,0,0)
    tvk:Clone().Parent = Right
    for k,v in pairs(allitem) do
        local cac = Instance.new("Frame",Left)
        cac.BackgroundTransparency = 1
        cac.Size = UDim2.new(1,0,0,0)
        cac.LayoutOrder = table.find(RaityLevel,k)

        local cac2 = Instance.new("Frame",Right)
        cac2.BackgroundTransparency = 1
        cac2.Size = UDim2.new(1,0,0,0)
        cac2.LayoutOrder = table.find(RaityLevel,k)

        local tvk = Instance.new("UIGridLayout",cac)
        tvk.CellPadding = UDim2.new(.005,0,.005,0)
        tvk.CellSize =  UDim2.new(0,70,0,70)
        tvk.FillDirectionMaxCells = 100
        tvk.FillDirection = Enum.FillDirection.Horizontal

        local ccc = tvk:Clone()
        ccc.Parent = cac2
        for k,v in pairs(v) do
            if Items[v.ItemName.Text] and Items[v.ItemName.Text].Mastery then
                if v.ItemLine2.Text~="Accessory" then
                    local bucac = v.ItemName:Clone()
                    bucac.BackgroundTransparency = 1
                    bucac.TextSize = 10
                    bucac.TextXAlignment  = 2
                    bucac.TextYAlignment  = 2
                    bucac.ZIndex  = 5
                    bucac.Text = Items[v.ItemName.Text].Mastery
                    bucac.Size = UDim2.new(.5,0,.5,0)
                    bucac.Position = UDim2.new(.5,0,.5,0)
                    bucac.Parent = v
                end
                v.Parent = cac
            elseif v.ItemLine2.Text == "Blox Fruit" then
                v.Parent = cac2
            end
        end
        cac.AutomaticSize = 2
        cac2.AutomaticSize = 2
    end
    local ListHuhu = {
        ["Superhuman"] = Vector2.new(3,2),
        ["DeathStep"] = Vector2.new(4,3),
        ["ElectricClaw"] = Vector2.new(2,0),
        ["SharkmanKarate"] = Vector2.new(0,0),
        ["DragonTalon"] = Vector2.new(1,5)
    }
    local MeleeG = Instance.new("Frame",Left)
    MeleeG.BackgroundTransparency = 1
    MeleeG.Size = UDim2.new(1,0,0,0)
    MeleeG.LayoutOrder = table.find(RaityLevel,k)
    MeleeG.AutomaticSize=2
    MeleeG.LayoutOrder = 100
    local tvk = Instance.new("UIGridLayout",MeleeG)
    tvk.CellPadding = UDim2.new(.005,0,.005,0)
    tvk.CellSize =  UDim2.new(0,70,0,70)
    tvk.FillDirectionMaxCells = 100
    tvk.FillDirection = Enum.FillDirection.Horizontal

    local cac = {"Superhuman","ElectricClaw","DragonTalon","SharkmanKarate","DeathStep","GodHuman"}
    for k,v in pairs(cac) do
        if ListHuhu[v] and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy"..v,true) == 1 then
            local huhu = Instance.new("ImageLabel",MeleeG)
            huhu.Image = "rbxassetid://9945562382"
            huhu.ImageRectSize = Vector2.new(100,100)
            huhu.ImageRectOffset = ListHuhu[v]*100
        end
    end
    function formatNumber(v)
        return tostring(v):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
    end
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.Position = UDim2.new(0,800,0,500)
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Position = UDim2.new(0,800,0,550)

    local thieunang = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone()
    thieunang.Parent = game:GetService("Players").LocalPlayer.PlayerGui.BubbleChat
    thieunang.Position = UDim2.new(0,800,0.63,0)
    local n = formatNumber(game.Players.LocalPlayer.Data.Fragments.Value)
    thieunang.Text = "ƒ"..n
    print("Done")
    pcall(function()
        game:GetService("Players").LocalPlayer.PlayerGui.Main.MenuButton:Destroy()
    end)
    pcall(function()
        game:GetService("Players").LocalPlayer.PlayerGui.Main.HP:Destroy()
    end)
    pcall(function()
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Energy:Destroy()
    end)
    for k,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main:GetChildren()) do
        if v:IsA("ImageButton") then
            v:Destroy()
        end
    end
    pcall(function()
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Compass:Destroy()
    end)
end)

Misc6:AddButton("Remove Kaitun Cap",function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").localPlayer)
end)

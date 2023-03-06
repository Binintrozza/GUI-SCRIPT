local Yutohub = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Binintrozza/GUI-SCRIPT/main/GUI_NEW.lua')))()

if game.PlaceId == 8540346411 then
    local Window = Yutohub:MakeWindow({Name = "YUTO HUB      [🐉UPDATE!] Rebirth Champions X  ", HidePremium = false, SaveConfig = true, IntroEnabled = true, IntroText = "YUTO HUB", IntroIcon = "rbxassetid://12699767780",Intro ="rbxassetid://7054195524" , ConfigFolder = "Yuto hub"})
    local MainToggleEnabled = false
    local Main = Window:MakeTab({
        Name = "💎 MAIN 💎",
        Icon = "rbxassetid://12699767780",
        PremiumOnly = false
    })
    local Section = Main:AddSection({
        Name = "Main"
    })
    Main:AddParagraph("👆 Auto Click For Auto farm 👆 ","Use for auto farm ")
    Main:AddToggle({
        Name = "Auto click",
        Default = false,
        Callback = function(toggleState)
            MainToggleEnabled = toggleState
            while MainToggleEnabled do -- loop while the toggle is enabled
                local Event = game:GetService("ReplicatedStorage").Events.Click3
                Event:FireServer()
                wait(0.01) -- wait for a short time before repeating
            end
        end
    })
    Main:AddButton({
        Name = "spin daily",
        Callback = function()
            local Event = game:GetService("ReplicatedStorage").Functions.Spin
            Event:InvokeServer()      
          end    
    })
    local pv = math.random(1, 5)
    Main:AddToggle({
        Name = "Auto claim Reward Daily",
        Default = false,
        Callback = function(toggleState)
            MainToggleEnabled = toggleState
            while MainToggleEnabled do -- loop while the toggle is enabled
                local A_1 = PV
                local Event = game:GetService("ReplicatedStorage").Events.DailyReward
               Event:FireServer(A_1)
        
                    wait(1) -- wait for a short time before repeating
            end
        end
    })
    local function AntiAFK()
        local vu = game:GetService("VirtualUser")
        game:GetService("Players").LocalPlayer.Idled:connect(function()
            vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            wait(1)
            vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        end)
    end
    
    AntiAFK()
    ---Local player
    local Player = Window:MakeTab({
        Name = "LOCAL PLAYER",
        Icon = "rbxassetid://12699767780",
        PremiumOnly = false
    })
    Player:AddParagraph("Local Player 🟢","Run and Jump ")
    Player:AddSlider({
        Name = "Walkspeed",
        Min = 0,
        Max = 500,
        Default = false,
        Color = Color3.fromRGB(255,255,255),
        Increment = 1,
        ValueName = "Speeds",
        Callback = function(s)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
        end  
    })
    Player:AddSlider({
        Name = "JumpPower",
        Min = 0,
        Max = 500,
        Default = false,
        Color = Color3.fromRGB(255,255,255),
        Increment = 1,
        ValueName = "Powers",
        Callback = function(s)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
        end  
    })
    --auto hatch
    local Egg = Window:MakeTab({
        Name = "AUTO HATCH🥚",
        Icon = "rbxassetid://12699767780",
        PremiumOnly = false
    })
    local eggToggleEnabled = false
    local Section = Egg:AddSection({
        Name = "🚀 AUTO HATCH X3 SPAWN EGG 🚀"
    })
    Egg:AddDropdown({
        Name = "🥚EGG SELECT To Hatch🥚",
        Default = false,
        Options = {"Forest", "Basic", "Mythic","Atlantis","Desert","Winter","Volcano","Magma","Moon","Cyber","Magic","Heaven","Nuclear","Void","Spooky","Cave","Steampunk","Hell"},
        Callback = function(currentOption)
            u = currentOption
            print(currentOption)
        end    
    })
    Egg:AddToggle({
        Name = "🚀 Auto Hatch Egg SPAWN Select 🚀",
        Default = false,
        Callback = function(toggleState)
            eggToggleEnabled = toggleState
            while eggToggleEnabled do
                local A_1 = u
                local A_2 = "Triple"
                local Event = game:GetService("ReplicatedStorage").Functions.Unbox
                Event:InvokeServer(A_1, A_2)
                wait(0.1) -- sửa lỗi chính tả, nó phải là 0.1 thay vì 0,1
            end
        end
    })
    local Section = Egg:AddSection({
        Name = "🌎 AUTO HATCH X3 SPACE EGG 🌎"
    })
    Egg:AddDropdown({
        Name = "🥚EGG SELECT To Hatch🥚",
        Default = false,
        Options = {"Space", "Mars", "Alien","Galaxy Forest","Spacelab","Fantasy","Neon","Shadow","Dectruction","Sun","Saturn","Hacker","Black Hole"},
        Callback = function(currentOption)
            o = currentOption
            print(currentOption)
        end    
    })
    Egg:AddToggle({
        Name = "🌎 Auto Hatch  Egg Space Select 🌍",
        Default = false,
        Callback = function(toggleState)
            eggToggleEnabled = toggleState
            while eggToggleEnabled do
                local A_1 = o
                local A_2 = "Triple"
                local Event = game:GetService("ReplicatedStorage").Functions.Unbox
                Event:InvokeServer(A_1, A_2)
                wait(0.1) -- sửa lỗi chính tả, nó phải là 0.1 thay vì 0,1
            end
        end
    })
    local Section = Egg:AddSection({
        Name = "🌊 AUTO HATCH X3 OCEAN EGG 🌊"
    })
    Egg:AddDropdown({
        Name = "🌊 OCEAN MAP SELECT EGG 🌊",
        Default = false,
        Options = {"Aqua","Axolotl", "Underwater Lab", "Pixel","Sea Cave","Acient","Pirate","Exotic Island","Fishing Village","Ocean","Motlen"},
        Callback = function(currentOption)
            po = currentOption
            print(currentOption)
        end    
    })
    Egg:AddToggle({
        Name = "🌊 Auto Hatch Egg OCEAN Select 🌊",
        Default = false,
        Callback = function(toggleState)
            eggToggleEnabled = toggleState
            while eggToggleEnabled do
                local A_1 = po
                local A_2 = "Triple"
                local Event = game:GetService("ReplicatedStorage").Functions.Unbox
                Event:InvokeServer(A_1, A_2)
                wait(0.1) -- sửa lỗi chính tả, nó phải là 0.1 thay vì 0,1
            end
        end
    })
    local Section = Egg:AddSection({
        Name = "🌴 AUTO HATCH X3 Fantasy EGG🌴"
    })
    Egg:AddDropdown({
        Name = "🌴 Fantasy MAP SELECT EGG 🌴",
        Default = false,
        Options = {"Fantasy Spawn", "Fantasy Jungle","Dragon"},
        Callback = function(currentOption)
            lo = currentOption
            print(currentOption)
        end    
    })
    Egg:AddToggle({
        Name = "🌴 Auto Egg Fantasy Select 🌴",
        Default = false,
        Callback = function(toggleState)
            eggToggleEnabled = toggleState
            while eggToggleEnabled do
                local A_1 = lo
                local A_2 = "Triple"
                local Event = game:GetService("ReplicatedStorage").Functions.Unbox
                Event:InvokeServer(A_1, A_2)
                wait(0.1) -- sửa lỗi chính tả, nó phải là 0.1 thay vì 0,1
            end
        end
    })
    --Auto rebirth
    local Rebirth = Window:MakeTab({
        Name = "AUTO REBIRTH🔃",
        Icon = "rbxassetid://12699767780",
        PremiumOnly = false
    })
    local RebirthToggleEnabled=false

    local Section = Rebirth:AddSection({
        Name = "🔃AUTO REBIRTH🔃"
    })
    
    Rebirth:AddDropdown({
        Name = "🔃Rebirth select🔃",
        Default = false,
        Options = {  
            [1]  = "1 Rebirth",
        [2] = "5 Rebirth",
        [3] = "10 Rebirth",
        [4] = "25 Rebirth",
        [5] = "100 Rebirth",
        [6] = "500 Rebirth",
        [7] = "2K5 Rebirth",
        [8] = "5K Rebirth",
        [9] = "10K Rebirth",
        [10] = "50k Rebirth",
        [11] = "250K Rebirth",
        [12] = "1M Rebirth",
        [13] = "25M Rebirth",
        [14] = "100M Rebirth",
        [15] = "500M Rebirth ",
        [16] = "1B Rebirth ",
        [17] = "2.5B Rebirth ",
        [18] = "10B Rebirth ",
        [19] = "250B Rebirth ",
        [20] = "1T Rebirth ",
        [21] = "10T Rebirth ",
        [22] = "25T Rebirth ",
        [23] = "100T Rebirth ",
        [24] = "250T Rebirth ",
        [25] = "1Qd Rebirth ",
        [26] = "2.5Qd Rebirth ",
        [27] = "10Qd Rebirth ",
        [28] = "50Qd Rebirth ",
        [29] = "250Qd Rebirth ",
        [30] = "1Qn Rebirth",
        [31] = "5Qn Rebirth",
        [32] = "50Qn Rebirth",
        [33] = "100Qn Rebirth",
        [34] = "500Qn Rebirth",
        [35] = "1Sx Rebirth",
        [36] = "5Sx Rebirth",
        [37] = "10Sx Rebirth",
        [38] = "24.99Sx Rebirth",
        [39] = "99.99Sx Rebirth",
        [40] = "500Sx Rebirth",
        [41] = "1Sp Rebirth",
        [42] = "2.5Sp Rebirth",
        [43] = "10Sp Rebirth",
        [44] = "25Sp Rebirth",
        [45] = "100Sp Rebirth",
        [46] = "250Sp Rebirth",
        [47] = "1O Rebirth",
        [48] = "2.5O Rebirth",
        [49] = "10O Rebirth",
        [50] = "24.99O Rebirth",
        [51] = "99.99O Rebirth",
        [52] = "250O Rebirth",
        [53] = "1N Rebirth",
        [54] = "2.5N Rebirth",
        [55] = "10N Rebirth",
        [56] = "25N Rebirth",
        [57] = "100N Rebirth",
        [58] = "249.99N Rebirth",
        [59] = "1de Rebirth",
        [60] = "2.5de Rebirth",
        [61] = "10de Rebirth",
        [62] = "25de Rebirth",
        [63] = "100de Rebirth",
        [64] = "250de Rebirth",
        [65] = "1Ud Rebirth",
        [66] = "2.5Ud Rebirth",
        [67] = "10Ud Rebirth",
        [68] = "25Ud Rebirth",
        [69] = "100Ud Rebirth",
        [70] = "249.99Ud Rebirth",
        [71] = "1DD Rebirth",
        [72] = "2.5DD Rebirth",
        [73] = "10DD Rebirth",
        [74] = "25DD Rebirth",
        [75] = "100DD Rebirth",
        [76] = "250DD Rebirth",
        [77] = "1tdD Rebirth",
        [78] = "2.5tdD Rebirth",
        [79] = "10tdD Rebirth",
        [80] = "25tdD Rebirth",
        [81] = "100tdD Rebirth",
        [82] = "249.99tdD Rebirth",
        [83] = "1qdD Rebirth",
        [84] = "2.5qdD Rebirth",
        [85] = "10qD Rebirth",
        [86] = "25qdD Rebirth",
        [87] = "100qdD Rebirth",
        [88] = "250qdD Rebirth",
        [89] = "1QnD Rebirth",
        [90] = "2.49QnD Rebirth",
        [91] = "9.99QnD Rebirth",
        [92] = "25QnD Rebirth",
        [93] = "100QnD Rebirth",
        [94] = "250QnD Rebirth",
        [95] = "1sxD Rebirth",
        [96] = "2.5sxD DRebirth",
        [97] = "10sxD Rebirth",
        [98] = "25sxD Rebirth ",},
        Callback = function(value)
            print(value)
            if value == "1 Rebirth" then 
                i = 1
            elseif value == "5 Rebirth" then
                i = 2
            elseif value == "10 Rebirth" then
                i = 3
            elseif value == "25 Rebirth" then
                i = 4
            elseif value == "100 Rebirth" then
                i = 5
            elseif value == "500 Rebirth" then
                i = 6
            elseif value == "2K5 Rebirth" then
                i = 7
            elseif value == "5K Rebirth" then
                i = 8
            elseif value == "10K Rebirth" then
                i = 9
            elseif value == "50k Rebirth" then
                i = 10
            elseif value == "250K Rebirth" then
                i = 11
            elseif value == "1M Rebirth" then
                i = 12
            elseif value == "25M Rebirth" then
                i = 13
            elseif value == "100M Rebirth" then
                i = 14
            elseif value == "500M Rebirth" then
                i = 15
            elseif value == "1B Rebirth" then
                i = 16
            elseif value == "2.5B Rebirth" then
                i = 17
            elseif value == "10B Rebirth" then
                i = 18
            elseif value == "250B Rebirth" then
                i = 19
            elseif value == "1T Rebirth" then
                i = 20
            elseif value == "10T Rebirth" then
                i = 21
            elseif value == "25T Rebirth" then
                i = 22
            elseif value == "100T Rebirth" then
                i = 23
            elseif value == "250T Rebirth" then
                i = 24
            elseif value == "1Qd Rebirth" then
                i = 25
            elseif value == "2.5Qd Rebirth" then
                i = 26
            elseif value == "10Qd Rebirth" then
                i = 27
            elseif value == "50Qd Rebirth" then
                i = 28
            elseif value == "250Qd Rebirth" then
                i = 29
            elseif value == "1Qn Rebirth" then
                i = 30
            elseif value == "5Qn Rebirth" then
                i = 31
            elseif value == "50Qn Rebirth" then
                i = 32
            elseif value == "100Qn Rebirth" then
                i = 33
            elseif value == "500Qn Rebirth" then
                i = 34
            elseif value == "1Sx Rebirth" then
                i = 35
            elseif value == "5Sx Rebirth" then
                i = 36
            elseif value == "10Sx Rebirth" then
                i = 37
            elseif value == "24.99Sx Rebirth" then
                i = 38
            elseif value == "99.99Sx Rebirth" then
                i = 39
            elseif value == "500Sx Rebirth" then
                i = 40
            elseif value == "1Sp Rebirth" then
                i = 41
            elseif value == "2.5Sp Rebirth" then
                i = 42
            elseif value == "10Sp Rebirth" then
                i = 43
            elseif value == "25Sp Rebirth" then
                i = 44
            elseif value == "100Sp Rebirth" then
                i = 45
            elseif value == "250Sp Rebirth" then
                i = 46
            elseif value == "1O Rebirth" then
                i = 47
            elseif value == "2.5O Rebirth" then
                i = 48
            elseif value == "10O Rebirth" then
                i = 49
            elseif value == "24.99O Rebirth" then
                i = 50
            elseif value == "99.99O Rebirth" then
                i = 51
            elseif value == "250O Rebirth" then
                i = 52
            elseif value == "1N Rebirth" then
                i = 53
            elseif value == "2.5N Rebirth" then
                i = 54
            elseif value == "10N Rebirth" then
                i = 55
            elseif value == "25N Rebirth" then
                i = 56
            elseif value == "100N Rebirth" then
                i = 57
            elseif value == "249.99N Rebirth" then
                i = 58
            elseif value == "1de Rebirth" then
                i = 59
            elseif value == "2.5de Rebirth" then
                i = 60
            elseif value == "10de Rebirth" then
                i = 61
            elseif value == "25de Rebirth" then
                i = 62
            elseif value == "100de Rebirth" then
                i = 63
            elseif value == "250de Rebirth" then
                i = 64
            elseif value == "1Ud Rebirth" then
                i = 65
            elseif value == "2.5Ud Rebirth" then
                i = 66
            elseif value == "10Ud Rebirth" then
                i = 67
            elseif value == "25Ud Rebirth" then
                i = 68
            elseif value == "100Ud Rebirth" then
                i = 69
            elseif value == "249.99Ud Rebirth" then
                i = 70
            elseif value == "1DD Rebirth" then
                i = 71
            elseif value == "2.5DD Rebirth" then
                i = 72
            elseif value == "10DD Rebirth" then
                i = 73
            elseif value == "25DD Rebirth" then
                i = 74
            elseif value == "100DD Rebirth" then
                i = 75
            elseif value == "250DD Rebirth" then
                i = 76
            elseif value == "1tdD Rebirth" then
                i = 77
            elseif value == "2.5tdD Rebirth" then
                i = 78
            elseif value == "10tdD Rebirth" then
                i = 79
            elseif value == "25tdD Rebirth" then
                i = 80
            elseif value == "100tdD Rebirth" then
                i = 81
            elseif value == "249.99tdD Rebirth" then
                i = 82
            elseif value == "1qdD Rebirth" then
                i = 83
            elseif value == "2.5qdD Rebirth" then
                i = 84
            elseif value == "10qD Rebirth" then
                i = 85
            elseif value == "25qdD Rebirth" then
                i = 86
            elseif value == "100qdD Rebirth" then
                i = 87
            elseif value == "250qdD Rebirth" then
                i = 88
            elseif value == "1QnD Rebirth" then
                i = 89
            elseif value == "2.49QnD Rebirth" then
                i = 90
            elseif value == "9.99QnD Rebirth" then
                i = 91
            elseif value == "25QnD Rebirth" then
                i = 92
            elseif value == "100QnD Rebirth" then
                i = 93
            elseif value == "250QnD Rebirth" then
                i = 94
            elseif value == "1sxD Rebirth" then
                i = 95
            elseif value == "2.5sxD Rebirth" then
                i = 96
            elseif value == "10sxD Rebirth" then
                i = 97
            elseif value == "25sxD Rebirth" then
                i = 98
                print(i) 
            end
        end       
    })
    
    Rebirth:AddToggle({
        Name = "🔃Auto rebirth🔃",
        Default = false,
        Callback = function(toggleState)
            RebirthToggleEnabled = toggleState
            while RebirthToggleEnabled do
                local A_1 = i
                local Event = game:GetService("ReplicatedStorage").Events.Rebirth
                Event:FireServer(A_1)
                wait(0.1)
            end
        end
    })
    --shop
    local Shop = Window:MakeTab({
        Name = "SHOP BOOST🏪",
        Icon = "rbxassetid://12699767780",
        PremiumOnly = false
    })
    
    local Section = Shop:AddSection({
        Name = "🏪Select BOOST SPAWN WORLD 🏪"
    })
    local il = "x2Gems"
    Shop:AddDropdown({
        Name = "🏪 Boost select To Buy 🏪",
        Default = false,
        Options = {"x2Gems","x2Luck","x2PetXP","x2HatchSpeed","x2Rebirths"},
        Callback = function(currentOption)
            il = currentOption
            print(currentOption)
        end    
    })
    Shop:AddButton({
        Name = "Buy x1 BOOST🏪 ",
        Callback = function()
            local A_1 = il
            local A_2 = 1
            local Event = game:GetService("ReplicatedStorage").Events.Potion
            Event:FireServer(A_1, A_2)
        end
    })
    Shop:AddButton({
        Name = "Buy x10 BOOST🏪 ",
        Callback = function()
            local A_1 = il
            local A_2 = 10
            local Event = game:GetService("ReplicatedStorage").Events.Potion
            Event:FireServer(A_1, A_2)
        end
    })
    Shop:AddButton({
        Name = "Buy x100 BOOST🏪 ",
        Callback = function()
            local A_1 = il
            local A_2 = 100
            local Event = game:GetService("ReplicatedStorage").Events.Potion
            Event:FireServer(A_1, A_2)
        end
    })
    local Section = Shop:AddSection({
        Name = "🌊 Select BOOST OCEAN WORLD 🌊"
    })
    Shop:AddDropdown({
        Name = "🌊 Boost OCEAN select To Buy 🌊",
        Default = false,
        Options = {"x3Clicks","x3Gems","x3PetLevel","x3Rebirths"},
        Callback = function(currentOption)
            ik = currentOption
            print(currentOption)
        end    
    })
    Shop:AddButton({
        Name = "🌊 Buy x1 BOOST OCEAN 🌊",
        Callback = function()
            local A_1 = ik
            local A_2 = 1
            local A_3 = "aqua"
            local Event = game:GetService("ReplicatedStorage").Events.Potion
            Event:FireServer(A_1, A_2, A_3)
        end
    })
    Shop:AddButton({
        Name = "🌊 Buy x10 BOOST OCEAN 🌊",
        Callback = function()
            local A_1 = ik
            local A_2 = 10
            local A_3 = "aqua"
            local Event = game:GetService("ReplicatedStorage").Events.Potion
            Event:FireServer(A_1, A_2, A_3)
        end
    })
    Shop:AddButton({
        Name = "🌊 Buy x100 BOOST OCEAN 🌊",
        Callback = function()
            local A_1 = ik
            local A_2 = 100
            local A_3 = "aqua"
            local Event = game:GetService("ReplicatedStorage").Events.Potion
            Event:FireServer(A_1, A_2, A_3)
        end
    })
    --pet option
    local Pet = Window:MakeTab({
        Name = "🐶Pet Option🐶",
        Icon = "rbxassetid://12699767780",
        PremiumOnly = false
    })
    local Section = Pet:AddSection({
        Name = "⚒️ Auto Craft Pet ⚒️"
    })
    local PetsToggleEnabled = false
    Pet:AddToggle({
        Name = "⚒️ Auto craft all ⚒️",
        Default = false,
        Callback = function(toggleState)
            PetsToggleEnabled = toggleState
            while PetsToggleEnabled do -- loop while the toggle is enabled
                local A_1 = "CraftAll"
                local A_2 = {}
                local Event = game:GetService("ReplicatedStorage").Functions.Request
                Event:InvokeServer(A_1, A_2)
                wait(1) -- wait for a short time before repeating
            end
        end
    })
    
    local Section = Pet:AddSection({
        Name = "🗑️ AUTO DELETE Pet 🗑️"
    })
    local autoDelete = false
    local au = false
    local aut = false
    local auto = false
    local autoDe = false
    local autoDele = false
    Pet:AddToggle({
        Name = "🗑️ Auto Delete Common Pet 🗑️",
        Default = false,
        Callback = function(toggleState)
            autoDelete = toggleState
    
            while autoDelete do -- loop while auto delete is enabled
                local A_1 = "Common"
                local A_2 = true
                local Event = game:GetService("ReplicatedStorage").Events.AutoDelete
                Event:FireServer(A_1, A_2)
                wait(1) -- wait for a short time before repeating
            end
        
            local A_1 = "Common"
            local A_2 = false
            local Event = game:GetService("ReplicatedStorage").Events.AutoDelete
            Event:FireServer(A_1, A_2)
        end
    })
    Pet:AddToggle({
        Name = "🗑️ Auto Delete Uncommon Pet 🗑️",
        Default = false,
        Callback = function(toggleState)
            au = toggleState
    
            while au do -- loop while auto delete is enabled
                local A_1 = "Uncommon"
                local A_2 = true
                local Event = game:GetService("ReplicatedStorage").Events.AutoDelete
                Event:FireServer(A_1, A_2)
                wait(1) -- wait for a short time before repeating
            end
        
            local A_1 = "Uncommon"
            local A_2 = false
            local Event = game:GetService("ReplicatedStorage").Events.AutoDelete
            Event:FireServer(A_1, A_2)
        end
    })
    Pet:AddToggle({
        Name = "🗑️ Auto Delete Rare Pet 🗑️",
        Default = false,
        Callback = function(toggleState)
            autoDele = toggleState
    
            while autoDele do -- loop while auto delete is enabled
                local A_1 = "Rare"
                local A_2 = true
                local Event = game:GetService("ReplicatedStorage").Events.AutoDelete
                Event:FireServer(A_1, A_2)
                wait(1) -- wait for a short time before repeating
            end
        
            local A_1 = "Rare"
            local A_2 = false
            local Event = game:GetService("ReplicatedStorage").Events.AutoDelete
            Event:FireServer(A_1, A_2)
        end
    })
    Pet:AddToggle({
        Name = "🗑️ Auto Delete Epic Pet 🗑️",
        Default = false,
        Callback = function(toggleState)
            aut = toggleState
    
            while aut do -- loop while auto delete is enabled
                local A_1 = "Epic"
                local A_2 = true
                local Event = game:GetService("ReplicatedStorage").Events.AutoDelete
                Event:FireServer(A_1, A_2)
                wait(1) -- wait for a short time before repeating
            end
        
            local A_1 = "Epic"
            local A_2 = false
            local Event = game:GetService("ReplicatedStorage").Events.AutoDelete
            Event:FireServer(A_1, A_2)
        end
    })
    Pet:AddToggle({
        Name = "🗑️ Auto Delete Legendary Pet 🗑️",
        Default = false,
        Callback = function(toggleState)
            auto  = toggleState
            while auto do -- loop while auto delete is enabled
                local A_1 = "Legendary"
                local A_2 = true
                local Event = game:GetService("ReplicatedStorage").Events.AutoDelete
                Event:FireServer(A_1, A_2)
                wait(1) -- wait for a short time before repeating
            end
        
            local A_1 = "Legendary"
            local A_2 = false
            local Event = game:GetService("ReplicatedStorage").Events.AutoDelete
            Event:FireServer(A_1, A_2)
        end
    })
    Pet:AddToggle({
        Name = "🗑️ Auto Delete Mythical Pet 🗑️",
        Default = false,
        Callback = function(toggleState)
            autoDe= toggleState
    
            while autoDe do -- loop while auto delete is enabled
                local A_1 = "Mythical"
                local A_2 = true
                local Event = game:GetService("ReplicatedStorage").Events.AutoDelete
                Event:FireServer(A_1, A_2)
                wait(1) -- wait for a short time before repeating
            end
        
            local A_1 = "Mythical"
            local A_2 = false
            local Event = game:GetService("ReplicatedStorage").Events.AutoDelete
            Event:FireServer(A_1, A_2)
        end
    })
    --gui
      local Gui = Window:MakeTab({
        Name = "🌠GUI OPEN🌠",
        Icon = "rbxassetid://12699767780",
        PremiumOnly = false
    })
    
    local Section = Gui:AddSection({
        Name = "🚀 GUI  SPAWN WORLD 🚀"
    })
    local optionCoords = {
        ["Tap Skins"] = Vector3.new(271, 5, 96),
        ["Upgrades"] = Vector3.new(192, 5, 110),
        ["Index"] = Vector3.new(267, 5, 25),
        ["Auras"] = Vector3.new(-49, 8, 640),
        ["Pet Machine"] = Vector3.new(-73, 37, -458)
    }
    
    local op = ""
    
    Gui:AddDropdown({
        Name = "🎸Select Gui to tele 🎸",
        Default = false,
        Options = {"Tap Skins","Upgrades","Index","Auras","Pet Machine"},
        Callback = function(currentOption)
            op = currentOption
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(optionCoords[op])
        end    
    })
    local Section = Gui:AddSection({
        Name = "🚀 GUI  SPACE , OCEAN , FANTASY WORLD 🚀"
        
    })
    local optionCoords = {
        ["Pet Upgrader"] = Vector3.new(1809, 19, -602),
        ["Space Upgrades"] = Vector3.new(401, 90, -1757),
        ["Fantasy Upgrades"] =  Vector3.new(-154, 3, -2431),
        ["Aqua Upgrades"] =  Vector3.new(-2159, 4, -266),        
        ["Dectruction Machine"] = Vector3.new(-1095, 30, 430),
        ["Evolution machine (Aqua)"] = Vector3.new(-2186, 6, -746),

    }
    local sp = ""
    
    Gui:AddDropdown({
        Name = "🎸Select Gui to tele 🎸",
        Default = false,
        Options = {"Pet Upgrader","Space Upgrades","Dectruction Machine","Evolution machine (Aqua)","Fantasy Upgrades","Aqua Upgrades"},
        Callback = function(currentOption)
            sp = currentOption
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(optionCoords[sp])
        end    
    })
    --auto craft Amulet
    local Amulet = Window:MakeTab({
        Name = "💎 Craft Amulet💎",
        Icon = "rbxassetid://12699767780",
        PremiumOnly = false
    })
    Amulet:AddParagraph("AMULET TELEPORT ❓ ","📜 PRESS E TO COLECT Ingredients 📜")
    local Section = Amulet:AddSection({
        Name = "🚀 Craft Amulet SPAWN WORLD 🚀"
    })
    local optionCoords = {
        ["MushRoom 1"] = Vector3.new(-391, 33, 213),
        ["MushRoom 2"] = Vector3.new(-441, 33, 205),
        ["MushRoom 3"] = Vector3.new(243, 7, 59),
        ["MushRoom 4"] = Vector3.new(-478, 33, 187),
        ["MushRoom 5"] = Vector3.new(371, 8, 20),
        ["MushRoom 6"] = Vector3.new(-393, 33, 139),
        ["MushRoom 7"] = Vector3.new(344, -51, 116),
        ["MushRoom 8"] = Vector3.new(163, 8, 127)
    }
    local kp = ""
    
    Amulet:AddDropdown({
        Name = "🍄 Select Mushroom Tele For Craft 🍄",
        Default = false,
        Options = {"MushRoom 1","MushRoom 2","MushRoom 3","MushRoom 4","MushRoom 5","MushRoom 6","MushRoom 7","MushRoom 8"},
        Callback = function(currentOption)
            kp = currentOption
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(optionCoords[kp])
        end    
    })
    Amulet:AddButton({
        Name = "💎Craft Forest Amulet💎 ",
        Callback = function()
            local A_1 = "Forest"
            local Event = game:GetService("ReplicatedStorage").Events.CraftAmulet
            Event:FireServer(A_1)
        end
    })
    local Section = Amulet:AddSection({
        Name = "🚀 Craft Amulet SPACE WORLD🚀"
    })
    local optionCoords = {
        ["Planet 1"] = Vector3.new(-762, 37, -765),
        ["Planet 2"] = Vector3.new(-1302, 53, -802),
        ["Planet 3"] = Vector3.new(-226, -50, -272),
        ["Planet 4"] = Vector3.new(345, 94, -2035),
        ["Planet 5"] = Vector3.new(1006, 43, -976),
        ["Planet 6"] = Vector3.new(937, 14, -309),
        ["Planet 7"] = Vector3.new(-1625, 31, 6),
        ["Planet 8"] = Vector3.new(-1431, 32, 685)
    }
    local pl = ""
    
    Amulet:AddDropdown({
        Name = "🍄 Select Mushroom Tele For Craft 🍄",
        Default = false,
        Options = {"Planet 1","Planet 2","Planet 3","Planet 4","Planet 5","Planet 6","Planet 7","Planet 8"},
        Callback = function(currentOption)
            pl = currentOption
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(optionCoords[pl])
        end    
    })
    Amulet:AddButton({
        Name = "💎Craft Space Amulet💎",
        Callback = function()
            local A_1 = "Space"
            local Event = game:GetService("ReplicatedStorage").Events.CraftAmulet
            Event:FireServer(A_1)
        end
    })
    local Section = Amulet:AddSection({
        Name = "🌊 Craft Amulet Aqua 🌊"
    })
    local optionCoords = {
        ["oysters 1"] = Vector3.new(-2013, 5, -222),
        ["oysters 2"] = Vector3.new(-2185, 5, -263),
        ["oysters 3"] = Vector3.new(-2122, 26, -426),
        ["oysters 4"] = Vector3.new(-2100, 5, -433),
        ["oysters 5"] = Vector3.new(-1684, 54, -428),
        ["oysters 6"] = Vector3.new(-1995, 5, -444),
        ["oysters 7"] = Vector3.new(-1716, 90, -375),
        ["oysters 8"] = Vector3.new(-2112, 35, -183)
    }
    local oy = ""
    
    Amulet:AddDropdown({
        Name = "🌠 Select Oyster Tele For Craft 🌠",
        Default = false,
        Options = {"oysters 1","oysters 2","oysters 3","oysters 4","oysters 5","oysters 6","oysters 7","oysters 8"},
        Callback = function(currentOption)
            pl = currentOption
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(optionCoords[pl])
        end    
    })
    Amulet:AddButton({
        Name = "💎Craft Aqua Amulet💎",
        Callback = function()
            local A_1 = "Aqua"
            local Event = game:GetService("ReplicatedStorage").Events.CraftAmulet
            Event:FireServer(A_1)
        end
    })
    local Section = Amulet:AddSection({
        Name = "🌴 Craft Amulet Junggle 🌴"
    })
    local optionCoords = {
        ["Flower 1"] = Vector3.new(-172, 9, -2630),
        ["Flower 2"] = Vector3.new(-491, 34, 959),
        ["Flower 3"] = Vector3.new(-494, 14, -2984),
        ["Flower 4"] = Vector3.new(533, 53, -766),
        ["Flower 5"] = Vector3.new(-581, 33, -1293),
        ["Flower 6"] = Vector3.new(30, 15, 724),
        ["Flower 7"] = Vector3.new(182, 11, -34),
        ["Flower 8"] = Vector3.new(-1422, -5, -1640)
    }
    local fl = ""
    
    Amulet:AddDropdown({
        Name = "🌻 Select FLower Tele For Craft 🌻",
        Default = false,
        Options = {"Flower 1","Flower 2","Flower 3","Flower 4","Flower 5","Flower 6","Flower 7","Flower 8"},
        Callback = function(currentOption)
            fl = currentOption
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(optionCoords[fl])
        end    
    })
    Amulet:AddButton({
        Name = "💎Craft Fantasy Amulet💎",
        Callback = function()
            local A_1 = "Fantasy"
            local Event = game:GetService("ReplicatedStorage").Events.CraftAmulet
            Event:FireServer(A_1)
        end
    })
    local Credit = Window:MakeTab({
        Name = "📜 DISCORD 📜",
        Icon = "rbxassetid://12699767780",
        PremiumOnly = false
    })
    Credit:AddParagraph("📜Click To Copy Link Discord COMMUNITY To clipboard 📜","WHEN YOU COPY WILL HAVE A NOTIFICATION ")
    Credit:AddButton({
        Name = "📜 COPY SERVER DISCORD LINK 📜",
        Callback = function()
            local serverLink = "https://discord.gg/Rq7m89mwvD" -- Thay xxxxxxxxxx bằng mã link server Discord của bạn
            setclipboard(serverLink) -- Copy link Discord vào clipboard
            local success = true
            if success then
                Yutohub:MakeNotification({
                    Name = "Copy To clipboard",
                    Content = "Let Join DISCORD SEVER ( YUTO HUB | COMMUNITY )",
                    Image = "rbxassetid://12699767780",
                    Time = 5
                })
            end
        end
    })
    

    
    
else
    Yutohub:MakeNotification({
        Name = "DONT SUPPORT THIS GAME",
        Content = "Check STATUS ON DISCORD SEVER ( YUTO HUB | COMMUNITY )",
        Image = "rbxassetid://12699767780",
        Time = 10
    })
    

    Yutohub:Init()
end

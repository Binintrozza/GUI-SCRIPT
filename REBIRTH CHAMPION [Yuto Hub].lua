local v0=loadstring(game:HttpGet("https://raw.githubusercontent.com/Binintrozza/GUI-SCRIPT/main/GUI_NEW.lua"))();if (game.PlaceId==8540346411) then local v1=v0:MakeWindow({Name="YUTO HUB      [🐉UPDATE!] Rebirth Champions X  ",HidePremium=false,SaveConfig=true,IntroEnabled=true,IntroText="YUTO HUB",IntroIcon="rbxassetid://12699767780",Intro="rbxassetid://7054195524",ConfigFolder="Yuto hub"});local v2=false;local v3=v1:MakeTab({Name="💎 MAIN 💎",Icon="rbxassetid://12699767780",PremiumOnly=false});local v4=v3:AddSection({Name="Main"});v3:AddParagraph("👆 Auto Click For Auto farm 👆 ","Use for auto farm ");v3:AddToggle({Name="Auto click",Default=false,Callback=function(v5)v2=v5;while v2 do local v95=game:GetService("ReplicatedStorage").Events.Click3;v95:FireServer();wait(0.01);end end});v3:AddButton({Name="spin daily",Callback=function()local v36=game:GetService("ReplicatedStorage").Functions.Spin;v36:InvokeServer();end});local v6=math.random(1,5);v3:AddToggle({Name="Auto claim Reward Daily",Default=false,Callback=function(v5)v2=v5;while v2 do local v96=PV;local v97=game:GetService("ReplicatedStorage").Events.DailyReward;v97:FireServer(v96);wait(1);end end});local function v7()local v37=game:GetService("VirtualUser");game:GetService("Players").LocalPlayer.Idled:connect(function()v37:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame);wait(1);v37:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame);end);end v7();local v8=v1:MakeTab({Name="LOCAL PLAYER",Icon="rbxassetid://12699767780",PremiumOnly=false});v8:AddParagraph("Local Player 🟢","Run and Jump ");v8:AddSlider({Name="Walkspeed",Min=0,Max=500,Default=false,Color=Color3.fromRGB(255,255,255),Increment=1,ValueName="Speeds",Callback=function(v9)game.Players.LocalPlayer.Character.Humanoid.WalkSpeed=v9;end});v8:AddSlider({Name="JumpPower",Min=0,Max=500,Default=false,Color=Color3.fromRGB(255,255,255),Increment=1,ValueName="Powers",Callback=function(v9)game.Players.LocalPlayer.Character.Humanoid.JumpPower=v9;end});local v10=v1:MakeTab({Name="AUTO HATCH🥚",Icon="rbxassetid://12699767780",PremiumOnly=false});local v11=false;local v4=v10:AddSection({Name="🚀 AUTO HATCH X3 SPAWN EGG 🚀"});v10:AddDropdown({Name="🥚EGG SELECT To Hatch🥚",Default=false,Options={"Forest","Basic","Mythic","Atlantis","Desert","Winter","Volcano","Magma","Moon","Cyber","Magic","Heaven","Nuclear","Void","Spooky","Cave","Steampunk","Hell"},Callback=function(v12)u=v12;print(v12);end});v10:AddToggle({Name="🚀 Auto Hatch Egg SPAWN Select 🚀",Default=false,Callback=function(v5)v11=v5;while v11 do local v98=u;local v99="Triple";local v100=game:GetService("ReplicatedStorage").Functions.Unbox;v100:InvokeServer(v98,v99);wait(0.1);end end});local v4=v10:AddSection({Name="🌎 AUTO HATCH X3 SPACE EGG 🌎"});v10:AddDropdown({Name="🥚EGG SELECT To Hatch🥚",Default=false,Options={"Space","Mars","Alien","Galaxy Forest","Spacelab","Fantasy","Neon","Shadow","Dectruction","Sun","Saturn","Hacker","Black Hole"},Callback=function(v12)o=v12;print(v12);end});v10:AddToggle({Name="🌎 Auto Hatch  Egg Space Select 🌍",Default=false,Callback=function(v5)v11=v5;while v11 do local v101=o;local v102="Triple";local v103=game:GetService("ReplicatedStorage").Functions.Unbox;v103:InvokeServer(v101,v102);wait(0.1);end end});local v4=v10:AddSection({Name="🌊 AUTO HATCH X3 OCEAN EGG 🌊"});v10:AddDropdown({Name="🌊 OCEAN MAP SELECT EGG 🌊",Default=false,Options={"Aqua","Axolotl","Underwater Lab","Pixel","Sea Cave","Acient","Pirate","Exotic Island","Fishing Village","Ocean","Motlen"},Callback=function(v12)po=v12;print(v12);end});v10:AddToggle({Name="🌊 Auto Hatch Egg OCEAN Select 🌊",Default=false,Callback=function(v5)v11=v5;while v11 do local v104=po;local v105="Triple";local v106=game:GetService("ReplicatedStorage").Functions.Unbox;v106:InvokeServer(v104,v105);wait(0.1);end end});local v4=v10:AddSection({Name="🌴 AUTO HATCH X3 Fantasy EGG🌴"});v10:AddDropdown({Name="🌴 Fantasy MAP SELECT EGG 🌴",Default=false,Options={"Fantasy Spawn","Fantasy Jungle","Dragon"},Callback=function(v12)lo=v12;print(v12);end});v10:AddToggle({Name="🌴 Auto Egg Fantasy Select 🌴",Default=false,Callback=function(v5)v11=v5;while v11 do local v107=lo;local v108="Triple";local v109=game:GetService("ReplicatedStorage").Functions.Unbox;v109:InvokeServer(v107,v108);wait(0.1);end end});local v13=v1:MakeTab({Name="AUTO REBIRTH🔃",Icon="rbxassetid://12699767780",PremiumOnly=false});local v14=false;local v4=v13:AddSection({Name="🔃AUTO REBIRTH🔃"});v13:AddDropdown({Name="🔃Rebirth select🔃",Default=false,Options={[1]="1 Rebirth",[2]="5 Rebirth",[3]="10 Rebirth",[4]="25 Rebirth",[5]="100 Rebirth",[6]="500 Rebirth",[7]="2K5 Rebirth",[8]="5K Rebirth",[9]="10K Rebirth",[10]="50k Rebirth",[11]="250K Rebirth",[12]="1M Rebirth",[13]="25M Rebirth",[14]="100M Rebirth",[15]="500M Rebirth ",[16]="1B Rebirth ",[17]="2.5B Rebirth ",[18]="10B Rebirth ",[19]="250B Rebirth ",[20]="1T Rebirth ",[21]="10T Rebirth ",[22]="25T Rebirth ",[23]="100T Rebirth ",[24]="250T Rebirth ",[25]="1Qd Rebirth ",[26]="2.5Qd Rebirth ",[27]="10Qd Rebirth ",[28]="50Qd Rebirth ",[29]="250Qd Rebirth ",[30]="1Qn Rebirth",[31]="5Qn Rebirth",[32]="50Qn Rebirth",[33]="100Qn Rebirth",[34]="500Qn Rebirth",[35]="1Sx Rebirth",[36]="5Sx Rebirth",[37]="10Sx Rebirth",[38]="24.99Sx Rebirth",[39]="99.99Sx Rebirth",[40]="500Sx Rebirth",[41]="1Sp Rebirth",[42]="2.5Sp Rebirth",[43]="10Sp Rebirth",[44]="25Sp Rebirth",[45]="100Sp Rebirth",[46]="250Sp Rebirth",[47]="1O Rebirth",[48]="2.5O Rebirth",[49]="10O Rebirth",[50]="24.99O Rebirth",[51]="99.99O Rebirth",[52]="250O Rebirth",[53]="1N Rebirth",[54]="2.5N Rebirth",[55]="10N Rebirth",[56]="25N Rebirth",[57]="100N Rebirth",[58]="249.99N Rebirth",[59]="1de Rebirth",[60]="2.5de Rebirth",[61]="10de Rebirth",[62]="25de Rebirth",[63]="100de Rebirth",[64]="250de Rebirth",[65]="1Ud Rebirth",[66]="2.5Ud Rebirth",[67]="10Ud Rebirth",[68]="25Ud Rebirth",[69]="100Ud Rebirth",[70]="249.99Ud Rebirth",[71]="1DD Rebirth",[72]="2.5DD Rebirth",[73]="10DD Rebirth",[74]="25DD Rebirth",[75]="100DD Rebirth",[76]="250DD Rebirth",[77]="1tdD Rebirth",[78]="2.5tdD Rebirth",[79]="10tdD Rebirth",[80]="25tdD Rebirth",[81]="100tdD Rebirth",[82]="249.99tdD Rebirth",[83]="1qdD Rebirth",[84]="2.5qdD Rebirth",[85]="10qD Rebirth",[86]="25qdD Rebirth",[87]="100qdD Rebirth",[88]="250qdD Rebirth",[89]="1QnD Rebirth",[90]="2.49QnD Rebirth",[91]="9.99QnD Rebirth",[92]="25QnD Rebirth",[93]="100QnD Rebirth",[94]="250QnD Rebirth",[95]="1sxD Rebirth",[96]="2.5sxD DRebirth",[97]="10sxD Rebirth",[98]="25sxD Rebirth "},Callback=function(v15)print(v15);if (v15=="1 Rebirth") then i=1;elseif (v15=="5 Rebirth") then i=2;elseif (v15=="10 Rebirth") then i=3;elseif (v15=="25 Rebirth") then i=4;elseif (v15=="100 Rebirth") then i=5;elseif (v15=="500 Rebirth") then i=6;elseif (v15=="2K5 Rebirth") then i=7;elseif (v15=="5K Rebirth") then i=8;elseif (v15=="10K Rebirth") then i=9;elseif (v15=="50k Rebirth") then i=10;elseif (v15=="250K Rebirth") then i=11;elseif (v15=="1M Rebirth") then i=12;elseif (v15=="25M Rebirth") then i=13;elseif (v15=="100M Rebirth") then i=14;elseif (v15=="500M Rebirth") then i=15;elseif (v15=="1B Rebirth") then i=16;elseif (v15=="2.5B Rebirth") then i=17;elseif (v15=="10B Rebirth") then i=18;elseif (v15=="250B Rebirth") then i=19;elseif (v15=="1T Rebirth") then i=20;elseif (v15=="10T Rebirth") then i=21;elseif (v15=="25T Rebirth") then i=22;elseif (v15=="100T Rebirth") then i=23;elseif (v15=="250T Rebirth") then i=24;elseif (v15=="1Qd Rebirth") then i=25;elseif (v15=="2.5Qd Rebirth") then i=26;elseif (v15=="10Qd Rebirth") then i=27;elseif (v15=="50Qd Rebirth") then i=28;elseif (v15=="250Qd Rebirth") then i=29;elseif (v15=="1Qn Rebirth") then i=30;elseif (v15=="5Qn Rebirth") then i=31;elseif (v15=="50Qn Rebirth") then i=32;elseif (v15=="100Qn Rebirth") then i=33;elseif (v15=="500Qn Rebirth") then i=34;elseif (v15=="1Sx Rebirth") then i=35;elseif (v15=="5Sx Rebirth") then i=36;elseif (v15=="10Sx Rebirth") then i=37;elseif (v15=="24.99Sx Rebirth") then i=38;elseif (v15=="99.99Sx Rebirth") then i=39;elseif (v15=="500Sx Rebirth") then i=40;elseif (v15=="1Sp Rebirth") then i=41;elseif (v15=="2.5Sp Rebirth") then i=42;elseif (v15=="10Sp Rebirth") then i=43;elseif (v15=="25Sp Rebirth") then i=44;elseif (v15=="100Sp Rebirth") then i=45;elseif (v15=="250Sp Rebirth") then i=46;elseif (v15=="1O Rebirth") then i=47;elseif (v15=="2.5O Rebirth") then i=48;elseif (v15=="10O Rebirth") then i=49;elseif (v15=="24.99O Rebirth") then i=50;elseif (v15=="99.99O Rebirth") then i=51;elseif (v15=="250O Rebirth") then i=52;elseif (v15=="1N Rebirth") then i=53;elseif (v15=="2.5N Rebirth") then i=54;elseif (v15=="10N Rebirth") then i=55;elseif (v15=="25N Rebirth") then i=56;elseif (v15=="100N Rebirth") then i=57;elseif (v15=="249.99N Rebirth") then i=58;elseif (v15=="1de Rebirth") then i=59;elseif (v15=="2.5de Rebirth") then i=60;elseif (v15=="10de Rebirth") then i=61;elseif (v15=="25de Rebirth") then i=62;elseif (v15=="100de Rebirth") then i=63;elseif (v15=="250de Rebirth") then i=64;elseif (v15=="1Ud Rebirth") then i=65;elseif (v15=="2.5Ud Rebirth") then i=66;elseif (v15=="10Ud Rebirth") then i=67;elseif (v15=="25Ud Rebirth") then i=68;elseif (v15=="100Ud Rebirth") then i=69;elseif (v15=="249.99Ud Rebirth") then i=70;elseif (v15=="1DD Rebirth") then i=71;elseif (v15=="2.5DD Rebirth") then i=72;elseif (v15=="10DD Rebirth") then i=73;elseif (v15=="25DD Rebirth") then i=74;elseif (v15=="100DD Rebirth") then i=75;elseif (v15=="250DD Rebirth") then i=76;elseif (v15=="1tdD Rebirth") then i=77;elseif (v15=="2.5tdD Rebirth") then i=78;elseif (v15=="10tdD Rebirth") then i=79;elseif (v15=="25tdD Rebirth") then i=80;elseif (v15=="100tdD Rebirth") then i=81;elseif (v15=="249.99tdD Rebirth") then i=82;elseif (v15=="1qdD Rebirth") then i=83;elseif (v15=="2.5qdD Rebirth") then i=84;elseif (v15=="10qD Rebirth") then i=85;elseif (v15=="25qdD Rebirth") then i=86;elseif (v15=="100qdD Rebirth") then i=87;elseif (v15=="250qdD Rebirth") then i=88;elseif (v15=="1QnD Rebirth") then i=89;elseif (v15=="2.49QnD Rebirth") then i=90;elseif (v15=="9.99QnD Rebirth") then i=91;elseif (v15=="25QnD Rebirth") then i=92;elseif (v15=="100QnD Rebirth") then i=93;elseif (v15=="250QnD Rebirth") then i=94;elseif (v15=="1sxD Rebirth") then i=95;elseif (v15=="2.5sxD Rebirth") then i=96;elseif (v15=="10sxD Rebirth") then i=97;elseif (v15=="25sxD Rebirth") then i=98;print(i);end end});v13:AddToggle({Name="🔃Auto rebirth🔃",Default=false,Callback=function(v5)v14=v5;while v14 do local v110=i;local v111=game:GetService("ReplicatedStorage").Events.Rebirth;v111:FireServer(v110);wait(0.1);end end});local v16=v1:MakeTab({Name="SHOP BOOST🏪",Icon="rbxassetid://12699767780",PremiumOnly=false});local v4=v16:AddSection({Name="🏪Select BOOST SPAWN WORLD 🏪"});local v17="x2Gems";v16:AddDropdown({Name="🏪 Boost select To Buy 🏪",Default=false,Options={"x2Gems","x2Luck","x2PetXP","x2HatchSpeed","x2Rebirths"},Callback=function(v12)v17=v12;print(v12);end});v16:AddButton({Name="Buy x1 BOOST🏪 ",Callback=function()local v40=v17;local v41=1;local v42=game:GetService("ReplicatedStorage").Events.Potion;v42:FireServer(v40,v41);end});v16:AddButton({Name="Buy x10 BOOST🏪 ",Callback=function()local v43=v17;local v44=10;local v45=game:GetService("ReplicatedStorage").Events.Potion;v45:FireServer(v43,v44);end});v16:AddButton({Name="Buy x100 BOOST🏪 ",Callback=function()local v46=v17;local v47=100;local v48=game:GetService("ReplicatedStorage").Events.Potion;v48:FireServer(v46,v47);end});local v4=v16:AddSection({Name="🌊 Select BOOST OCEAN WORLD 🌊"});v16:AddDropdown({Name="🌊 Boost OCEAN select To Buy 🌊",Default=false,Options={"x3Clicks","x3Gems","x3PetLevel","x3Rebirths"},Callback=function(v12)ik=v12;print(v12);end});v16:AddButton({Name="🌊 Buy x1 BOOST OCEAN 🌊",Callback=function()local v49=ik;local v50=1;local v51="aqua";local v52=game:GetService("ReplicatedStorage").Events.Potion;v52:FireServer(v49,v50,v51);end});v16:AddButton({Name="🌊 Buy x10 BOOST OCEAN 🌊",Callback=function()local v53=ik;local v54=10;local v55="aqua";local v56=game:GetService("ReplicatedStorage").Events.Potion;v56:FireServer(v53,v54,v55);end});v16:AddButton({Name="🌊 Buy x100 BOOST OCEAN 🌊",Callback=function()local v57=ik;local v58=100;local v59="aqua";local v60=game:GetService("ReplicatedStorage").Events.Potion;v60:FireServer(v57,v58,v59);end});local v18=v1:MakeTab({Name="🐶Pet Option🐶",Icon="rbxassetid://12699767780",PremiumOnly=false});local v4=v18:AddSection({Name="⚒️ Auto Craft Pet ⚒️"});local v19=false;v18:AddToggle({Name="⚒️ Auto craft all ⚒️",Default=false,Callback=function(v5)v19=v5;while v19 do local v112="CraftAll";local v113={};local v114=game:GetService("ReplicatedStorage").Functions.Request;v114:InvokeServer(v112,v113);wait(1);end end});local v4=v18:AddSection({Name="🗑️ AUTO DELETE Pet 🗑️"});local v20=false;local v21=false;local v22=false;local v23=false;local v24=false;local v25=false;v18:AddToggle({Name="🗑️ Auto Delete Common Pet 🗑️",Default=false,Callback=function(v5)v20=v5;while v20 do local v115="Common";local v116=true;local v117=game:GetService("ReplicatedStorage").Events.AutoDelete;v117:FireServer(v115,v116);wait(1);end local v61="Common";local v62=false;local v63=game:GetService("ReplicatedStorage").Events.AutoDelete;v63:FireServer(v61,v62);end});v18:AddToggle({Name="🗑️ Auto Delete Uncommon Pet 🗑️",Default=false,Callback=function(v5)v21=v5;while v21 do local v118="Uncommon";local v119=true;local v120=game:GetService("ReplicatedStorage").Events.AutoDelete;v120:FireServer(v118,v119);wait(1);end local v64="Uncommon";local v65=false;local v66=game:GetService("ReplicatedStorage").Events.AutoDelete;v66:FireServer(v64,v65);end});v18:AddToggle({Name="🗑️ Auto Delete Rare Pet 🗑️",Default=false,Callback=function(v5)v25=v5;while v25 do local v121="Rare";local v122=true;local v123=game:GetService("ReplicatedStorage").Events.AutoDelete;v123:FireServer(v121,v122);wait(1);end local v67="Rare";local v68=false;local v69=game:GetService("ReplicatedStorage").Events.AutoDelete;v69:FireServer(v67,v68);end});v18:AddToggle({Name="🗑️ Auto Delete Epic Pet 🗑️",Default=false,Callback=function(v5)v22=v5;while v22 do local v124="Epic";local v125=true;local v126=game:GetService("ReplicatedStorage").Events.AutoDelete;v126:FireServer(v124,v125);wait(1);end local v70="Epic";local v71=false;local v72=game:GetService("ReplicatedStorage").Events.AutoDelete;v72:FireServer(v70,v71);end});v18:AddToggle({Name="🗑️ Auto Delete Legendary Pet 🗑️",Default=false,Callback=function(v5)v23=v5;while v23 do local v127="Legendary";local v128=true;local v129=game:GetService("ReplicatedStorage").Events.AutoDelete;v129:FireServer(v127,v128);wait(1);end local v73="Legendary";local v74=false;local v75=game:GetService("ReplicatedStorage").Events.AutoDelete;v75:FireServer(v73,v74);end});v18:AddToggle({Name="🗑️ Auto Delete Mythical Pet 🗑️",Default=false,Callback=function(v5)v24=v5;while v24 do local v130="Mythical";local v131=true;local v132=game:GetService("ReplicatedStorage").Events.AutoDelete;v132:FireServer(v130,v131);wait(1);end local v76="Mythical";local v77=false;local v78=game:GetService("ReplicatedStorage").Events.AutoDelete;v78:FireServer(v76,v77);end});local v26=v1:MakeTab({Name="🌠GUI OPEN🌠",Icon="rbxassetid://12699767780",PremiumOnly=false});local v4=v26:AddSection({Name="🚀 GUI  SPAWN WORLD 🚀"});local v27={["Tap Skins"]=Vector3.new(271,5,96),Upgrades=Vector3.new(192,5,110),Index=Vector3.new(267,5,25),Auras=Vector3.new( -49,8,640),["Pet Machine"]=Vector3.new( -73,37, -458)};local v28="";v26:AddDropdown({Name="🎸Select Gui to tele 🎸",Default=false,Options={"Tap Skins","Upgrades","Index","Auras","Pet Machine"},Callback=function(v12)v28=v12;game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(v27[v28]);end});local v4=v26:AddSection({Name="🚀 GUI  SPACE , OCEAN , FANTASY WORLD 🚀"});local v27={["Pet Upgrader"]=Vector3.new(1809,19, -602),["Space Upgrades"]=Vector3.new(401,90, -1757),["Fantasy Upgrades"]=Vector3.new( -154,3, -2431),["Aqua Upgrades"]=Vector3.new( -2159,4, -266),["Dectruction Machine"]=Vector3.new( -1095,30,430),["Evolution machine (Aqua)"]=Vector3.new( -2186,6, -746)};local v29="";v26:AddDropdown({Name="🎸Select Gui to tele 🎸",Default=false,Options={"Pet Upgrader","Space Upgrades","Dectruction Machine","Evolution machine (Aqua)","Fantasy Upgrades","Aqua Upgrades"},Callback=function(v12)v29=v12;game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(v27[v29]);end});local v30=v1:MakeTab({Name="💎 Craft Amulet💎",Icon="rbxassetid://12699767780",PremiumOnly=false});v30:AddParagraph("AMULET TELEPORT ❓ ","📜 PRESS E TO COLECT Ingredients 📜");local v4=v30:AddSection({Name="🚀 Craft Amulet SPAWN WORLD 🚀"});local v27={["MushRoom 1"]=Vector3.new( -391,33,213),["MushRoom 2"]=Vector3.new( -441,33,205),["MushRoom 3"]=Vector3.new(243,7,59),["MushRoom 4"]=Vector3.new( -478,33,187),["MushRoom 5"]=Vector3.new(371,8,20),["MushRoom 6"]=Vector3.new( -393,33,139),["MushRoom 7"]=Vector3.new(344, -51,116),["MushRoom 8"]=Vector3.new(163,8,127)};local v31="";v30:AddDropdown({Name="🍄 Select Mushroom Tele For Craft 🍄",Default=false,Options={"MushRoom 1","MushRoom 2","MushRoom 3","MushRoom 4","MushRoom 5","MushRoom 6","MushRoom 7","MushRoom 8"},Callback=function(v12)v31=v12;game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(v27[v31]);end});v30:AddButton({Name="💎Craft Forest Amulet💎 ",Callback=function()local v82="Forest";local v83=game:GetService("ReplicatedStorage").Events.CraftAmulet;v83:FireServer(v82);end});local v4=v30:AddSection({Name="🚀 Craft Amulet SPACE WORLD🚀"});local v27={["Planet 1"]=Vector3.new( -762,37, -765),["Planet 2"]=Vector3.new( -1302,53, -802),["Planet 3"]=Vector3.new( -226, -50, -272),["Planet 4"]=Vector3.new(345,94, -2035),["Planet 5"]=Vector3.new(1006,43, -976),["Planet 6"]=Vector3.new(937,14, -309),["Planet 7"]=Vector3.new( -1625,31,6),["Planet 8"]=Vector3.new( -1431,32,685)};local v32="";v30:AddDropdown({Name="🍄 Select Mushroom Tele For Craft 🍄",Default=false,Options={"Planet 1","Planet 2","Planet 3","Planet 4","Planet 5","Planet 6","Planet 7","Planet 8"},Callback=function(v12)v32=v12;game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(v27[v32]);end});v30:AddButton({Name="💎Craft Space Amulet💎",Callback=function()local v85="Space";local v86=game:GetService("ReplicatedStorage").Events.CraftAmulet;v86:FireServer(v85);end});local v4=v30:AddSection({Name="🌊 Craft Amulet Aqua 🌊"});local v27={["oysters 1"]=Vector3.new( -2013,5, -222),["oysters 2"]=Vector3.new( -2185,5, -263),["oysters 3"]=Vector3.new( -2122,26, -426),["oysters 4"]=Vector3.new( -2100,5, -433),["oysters 5"]=Vector3.new( -1684,54, -428),["oysters 6"]=Vector3.new( -1995,5, -444),["oysters 7"]=Vector3.new( -1716,90, -375),["oysters 8"]=Vector3.new( -2112,35, -183)};local v33="";v30:AddDropdown({Name="🌠 Select Oyster Tele For Craft 🌠",Default=false,Options={"oysters 1","oysters 2","oysters 3","oysters 4","oysters 5","oysters 6","oysters 7","oysters 8"},Callback=function(v12)v32=v12;game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(v27[v32]);end});v30:AddButton({Name="💎Craft Aqua Amulet💎",Callback=function()local v88="Aqua";local v89=game:GetService("ReplicatedStorage").Events.CraftAmulet;v89:FireServer(v88);end});local v4=v30:AddSection({Name="🌴 Craft Amulet Junggle 🌴"});local v27={["Flower 1"]=Vector3.new( -172,9, -2630),["Flower 2"]=Vector3.new( -491,34,959),["Flower 3"]=Vector3.new( -494,14, -2984),["Flower 4"]=Vector3.new(533,53, -766),["Flower 5"]=Vector3.new( -581,33, -1293),["Flower 6"]=Vector3.new(30,15,724),["Flower 7"]=Vector3.new(182,11, -34),["Flower 8"]=Vector3.new( -1422, -5, -1640)};local v34="";v30:AddDropdown({Name="🌻 Select FLower Tele For Craft 🌻",Default=false,Options={"Flower 1","Flower 2","Flower 3","Flower 4","Flower 5","Flower 6","Flower 7","Flower 8"},Callback=function(v12)v34=v12;game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(v27[v34]);end});v30:AddButton({Name="💎Craft Fantasy Amulet💎",Callback=function()local v91="Fantasy";local v92=game:GetService("ReplicatedStorage").Events.CraftAmulet;v92:FireServer(v91);end});local v35=v1:MakeTab({Name="📜 DISCORD 📜",Icon="rbxassetid://12699767780",PremiumOnly=false});v35:AddParagraph("📜Click To Copy Link Discord COMMUNITY To clipboard 📜","WHEN YOU COPY WILL HAVE A NOTIFICATION ");v35:AddButton({Name="📜 COPY SERVER DISCORD LINK 📜",Callback=function()local v93="https://discord.gg/Rq7m89mwvD";setclipboard(v93);local v94=true;if v94 then v0:MakeNotification({Name="Copy To clipboard",Content="Let Join DISCORD SEVER ( YUTO HUB | COMMUNITY )",Image="rbxassetid://12699767780",Time=5});end end});else v0:MakeNotification({Name="DONT SUPPORT THIS GAME",Content="Check STATUS ON DISCORD SEVER ( YUTO HUB | COMMUNITY )",Image="rbxassetid://12699767780",Time=10});v0:Init();end

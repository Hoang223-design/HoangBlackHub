loadstring(game:HttpGet(("https://raw.githubusercontent.com/Hoang223-design/GuiHoang01/refs/heads/main/GuiHoang01.lua")))()

local Window = MakeWindow({
    Hub = {
        Title = "HoàngBlackHub Beta v0.2 ( permium admin script )",
        Animation = "Cre: NgọcHoàng20?👑"
    },
    Key = {
        KeySystem = false,
        Title = "Nhập key để tiếp tục🌚🥵",
        Description = "Được Tạo Bởi: Huỳnh Ngọc Hoàng👑",
        KeyLink = "Link key không tồn tại muốn sở hữu được key thì phải nhắn admin script!",
        Keys = {"1"},
        Notifi = {
            Notifications = true,
            CorrectKey = "Script Đang Chạy🥵!",
            Incorrectkey = "Key không tồn tại🥵",
            CopyKeyLink = "Đã sao chép, hãy đọc tin nhắn bạn vừa copy🌚"
        }
    }
})

MinimizeButton({
    Image = "http://www.roblox.com/asset/?id=93018818295521",
    Size = {40, 40},
    Color = Color3.fromRGB(10, 10, 10),
    Corner = true,
    Stroke = false,
    StrokeColor = Color3.fromRGB(255, 0, 0)
})

local Tab1o = MakeTab({Name = "Nhạc🥁🎷"})
local Tab2o = MakeTab({Name = "Main👉🏻👈🏻"})
local Tab3o = MakeTab({Name = "Trái cây/raid🤤🍑"})
local Tab4o = MakeTab({Name = "Pvp🥵"})
local Tab5o = MakeTab({Name = "Khác☘️"})
local Tab6o = MakeTab({Name = "Dịch Chuyển🛸"})
local Tab7o = MakeTab({Name = "Server🌐"})

-- Biến toàn cục
local currentSound = nil
local flying = false
local flySpeed = 175
local flyHeight = 75
local bodyVelocity, bodyGyro

-- Tab Nhạc (giữ nguyên)
AddToggle(Tab1o, {
    Name = "Chipi chipi chapa🐱",
    Default = false,
    Callback = function(state)
        if currentSound and currentSound ~= nil then
            currentSound:Stop()
            currentSound = nil
        end
        
        if state then
            local sound = Instance.new("Sound")
            sound.Name = "ChipiMusic"
            sound.Parent = game.Workspace
            sound.SoundId = "rbxassetid://16190783444"
            sound.Volume = 2
            sound.Looped = true
            sound:Play()
            currentSound = sound
            
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo!",
                Text = "Đã bật nhạc Chipi chipi chapa😼!",
                Duration = 5
            })
        end
    end
})

AddToggle(Tab1o, {
    Name = "Money🤑Rain (Phonk)",
    Default = false,
    Callback = function(state)
        if currentSound and currentSound ~= nil then
            currentSound:Stop()
            currentSound = nil
        end
        
        if state then
            local sound = Instance.new("Sound")
            sound.Name = "MoneyRainMusic"
            sound.Parent = game.Workspace
            sound.SoundId = "rbxassetid://9046862941"
            sound.Volume = 2
            sound.Looped = true
            sound:Play()
            currentSound = sound
            
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo🔊!",
                Text = "🥵Đã bật nhạc Money Rain🥵!",
                Duration = 5
            })
        end
    end
})

-- Tab Main (giữ nguyên)
AddButton(Tab2o, {
    Name = "🩸z",
    Callback = function()
        local Settings = {
            JoinTeam = "Pirates",
            Translator = true
        }
        loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))(Settings)
    end
})

AddButton(Tab2o, {
    Name = "Ve🚗",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dex-Bear/Vxezehub/refs/heads/main/Skidlamcho.txt"))()
    end
})

AddButton(Tab2o, {
    Name = "HoHo",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
    end
})

AddButton(Tab2o, {
    Name = "ASTRAL",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Overgustx2/Main/refs/heads/main/BloxFruits_25.html"))()
    end
})

AddButton(Tab2o, {
    Name = "Xero",
    Callback = function()
        getgenv().Team = "Marines"
        getgenv().Hide_Menu = false
        getgenv().Auto_Execute = false
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/XeroHub/refs/heads/main/main.lua"))()
    end
})

-- Tab Trái cây/Raid (giữ nguyên)
AddButton(Tab3o, {
    Name = "auto Nhặt 🍑🤤",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/marisdeptrai/Script-Free/main/FruitFinder.lua"))()
    end
})

-- Tab PvP (giữ nguyên)
AddButton(Tab4o, {
    Name = "sắp có😍 !!",
    Callback = function()
    end
})

-- Tab Khác (giữ nguyên)
AddButton(Tab5o, {
    Name = "dành cho máy yếu💥 x3",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))()
    end
})

-- Tab Dịch Chuyển
local Sea1Locations = {
    {"Windmill Village", CFrame.new(979, 16, 1200)},
    {"Marine Start", CFrame.new(-2570, 6, 2050)},
    {"Middle Town", CFrame.new(-650, 25, 1800)},
    {"Jungle", CFrame.new(-1200, 37, 280)},
    {"Pirate Village", CFrame.new(-1120, 4, 3870)},
    {"Desert", CFrame.new(950, 7, 4370)},
    {"Frozen Village", CFrame.new(1150, 7, -1130)},
    {"Marine Fortress", CFrame.new(-5000, 20, 4350)},
    {"Skypiea", CFrame.new(-200, 400, -5000)},
    {"Prison", CFrame.new(4870, 5, 735)},
    {"Colosseum", CFrame.new(-1450, 7, -3050)},
    {"Magma Village", CFrame.new(-5250, 8, 8500)},
    {"Underwater City", CFrame.new(4000, 0, -1500)},
    {"Fountain City", CFrame.new(5120, 4, 4050)}
}

local Sea2Locations = {
    {"Cafe", CFrame.new(-380, 77, 255)},
    {"Kingdom of Rose", CFrame.new(-450, 72, 1250)},
    {"Green Zone", CFrame.new(-2250, 72, -1250)},
    {"Graveyard", CFrame.new(-5350, 8, 5150)},
    {"Snow Mountain", CFrame.new(500, 400, -5350)},
    {"Hot and Cold", CFrame.new(-5900, 15, -2850)},
    {"Cursed Ship", CFrame.new(920, 125, 32850)},
    {"Ice Castle", CFrame.new(5500, 40, -6100)},
    {"Forgotten Island", CFrame.new(-3050, 15, -9750)},
    {"Dark Arena", CFrame.new(3800, 15, -3800)},
    {"Usoap Island", CFrame.new(4750, 8, 2850)}
}

local Sea3Locations = {
    {"Port Town", CFrame.new(-950, 15, 5500)},
    {"Hydra Island", CFrame.new(3400, 72, 2000)},
    {"Great Tree", CFrame.new(2200, 300, -1500)},
    {"Floating Turtle", CFrame.new(-10500, 331, -8500)},
    {"Castle on the Sea", CFrame.new(-5000, 314, -3000)},
    {"Haunted Castle", CFrame.new(-9500, 100, 5500)},
    {"Sea of Treats", CFrame.new(-2000, 50, -9000)},
    {"Tiki Outpost", CFrame.new(-16500, 10, 1000)}
}

local function startFly(targetCFrame)
    local player = game.Players.LocalPlayer
    local character = player.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then return end
    
    local rootPart = character.HumanoidRootPart
    bodyVelocity = Instance.new("BodyVelocity")
    bodyGyro = Instance.new("BodyGyro")
    
    bodyVelocity.MaxForce = Vector3.new(400000, 400000, 400000)
    bodyVelocity.Parent = rootPart
    
    bodyGyro.MaxTorque = Vector3.new(400000, 400000, 400000)
    bodyGyro.Parent = rootPart
    
    flying = true
    
    spawn(function()
        local startPos = rootPart.Position
        local endPos = targetCFrame.Position + Vector3.new(0, flyHeight, 0)
        
        while flying do
            local currentPos = rootPart.Position
            local distanceToTarget = (currentPos - endPos).Magnitude
            
            if distanceToTarget < 2 then
                rootPart.CFrame = CFrame.new(endPos, targetCFrame.Position)
                stopFly()
                break
            end
            
            local adjustedSpeed = flySpeed
            if distanceToTarget < 50 then
                adjustedSpeed = math.max(flySpeed * (distanceToTarget / 50), 10)
            end
            
            local direction = (endPos - currentPos).Unit
            bodyVelocity.Velocity = direction * adjustedSpeed
            bodyGyro.CFrame = CFrame.lookAt(currentPos, endPos)
            
            wait(0.03)
        end
    end)
end

local function stopFly()
    flying = false
    if bodyVelocity then bodyVelocity:Destroy() end
    if bodyGyro then bodyGyro:Destroy() end
end

local function TeleportTo(pos)
    local player = game.Players.LocalPlayer
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = pos
    end
end

local function GetCurrentSea()
    local player = game.Players.LocalPlayer
    local level = player.Data.Level.Value
    if level < 700 then
        return 1
    elseif level < 1500 then
        return 2
    else
        return 3
    end
end

local function SmartTeleport(targetCFrame)
    local player = game.Players.LocalPlayer
    local currentSea = GetCurrentSea()
    local targetSea = nil
    
    for _, loc in pairs(Sea1Locations) do
        if loc[2] == targetCFrame then targetSea = 1 break end
    end
    for _, loc in pairs(Sea2Locations) do
        if loc[2] == targetCFrame then targetSea = 2 break end
    end
    for _, loc in pairs(Sea3Locations) do
        if loc[2] == targetCFrame then targetSea = 3 break end
    end
    
    if targetSea and currentSea ~= targetSea then
        if currentSea == 3 or targetSea == 3 then
            TeleportTo(CFrame.new(-5000, 314, -3000)) -- Đi đến Castle on the Sea
            wait(1)
        end
    end
    
    startFly(targetCFrame)
end

-- Sửa lại teleport giữa các Sea bằng Remote
local function TravelToSea(targetSea)
    local success = false
    pcall(function()
        if targetSea == 1 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
        elseif targetSea == 2 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
        elseif targetSea == 3 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
        end
        wait(2) -- Chờ game xử lý dịch chuyển
        success = true
    end)
    return success
end

AddDropdown(Tab6o, {
    Name = "Chọn đảo cần tới🏞️",
    Default = "Chọn đảo🏜️",
    Options = (function()
        local currentSea = GetCurrentSea()
        if currentSea == 1 then
            return {"Windmill Village", "Marine Start", "Middle Town", "Jungle", "Pirate Village", "Desert",
                    "Frozen Village", "Marine Fortress", "Skypiea", "Prison", "Colosseum", "Magma Village",
                    "Underwater City", "Fountain City"}
        elseif currentSea == 2 then
            return {"Cafe", "Kingdom of Rose", "Green Zone", "Graveyard", "Snow Mountain", "Hot and Cold",
                    "Cursed Ship", "Ice Castle", "Forgotten Island", "Dark Arena", "Usoap Island"}
        else
            return {"Port Town", "Hydra Island", "Great Tree", "Floating Turtle", "Castle on the Sea",
                    "Haunted Castle", "Sea of Treats", "Tiki Outpost"}
        end
    end)(),
    Callback = function(value)
        local currentSea = GetCurrentSea()
        local locations = (currentSea == 1 and Sea1Locations) or (currentSea == 2 and Sea2Locations) or Sea3Locations
        
        for _, loc in pairs(locations) do
            if loc[1] == value then
                if flying then stopFly() end
                SmartTeleport(loc[2])
                game.StarterGui:SetCore("SendNotification", {
                    Title = "Thông báo🔊!",
                    Text = "Đang dịch chuyển " .. value .. "!",
                    Duration = 5
                })
                break
            end
        end
    end
})

AddButton(Tab6o, {
    Name = "Dừng Tele🐧",
    Callback = function()
        if flying then
            stopFly()
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo🔊!",
                Text = "Đã dừng dịch chuyển!",
                Duration = 5
            })
        else
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo🔊!",
                Text = "Không có dịch chuyển nào đang hoạt động!",
                Duration = 5
            })
        end
    end
})

AddButton(Tab6o, {
    Name = "🌲🌲Sea 1🛸",
    Callback = function()
        if TravelToSea(1) then
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo🔊!",
                Text = "Đã dịch chuyển đến Sea 1!",
                Duration = 5
            })
        else
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo🔊!",
                Text = "Không thể dịch chuyển đến Sea 1!",
                Duration = 5
            })
        end
    end
})

AddButton(Tab6o, {
    Name = "🌲☕Sea 2🛸",
    Callback = function()
        if TravelToSea(2) then
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo🔊!",
                Text = "Đã dịch chuyển đến Sea 2!",
                Duration = 5
            })
        else
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo🔊!",
                Text = "Không thể dịch chuyển đến Sea 2!",
                Duration = 5
            })
        end
    end
})

AddButton(Tab6o, {
    Name = "🐢Sea 3🛸",
    Callback = function()
        if TravelToSea(3) then
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo🔊!",
                Text = "Đã dịch chuyển đến Sea 3!",
                Duration = 5
            })
        else
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo🔊!",
                Text = "Không thể dịch chuyển đến Sea 3!",
                Duration = 5
            })
        end
    end
})

-- Tab Server
local function RejoinServer()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
    game.StarterGui:SetCore("SendNotification", {
        Title = "Thông báo🔊!",
        Text = "Đang tham gia lại server...",
        Duration = 5
    })
end

local function HopServer()
    local success, error = pcall(function()
        local servers = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"))
        for _, server in pairs(servers.data) do
            if server.playing < server.maxPlayers and server.id ~= game.JobId then
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, server.id, game.Players.LocalPlayer)
                break
            end
        end
    end)
    if success then
        game.StarterGui:SetCore("SendNotification", {
            Title = "Thông báo🔊!",
            Text = "Đang chuyển sang server mới...",
            Duration = 5
        })
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = "Thông báo🔊!",
            Text = "Không tìm thấy server mới!",
            Duration = 5
        })
    end
end

local function FindLowPlayerServer()
    local success, error = pcall(function()
        local servers = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"))
        local lowestPlayers = math.huge
        local targetServer = nil
        
        for _, server in pairs(servers.data) do
            if server.playing < lowestPlayers and server.id ~= game.JobId then
                lowestPlayers = server.playing
                targetServer = server.id
            end
        end
        
        if targetServer then
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, targetServer, game.Players.LocalPlayer)
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo🔊!",
                Text = "Đang chuyển đến server ít người (" .. lowestPlayers .. " người)...",
                Duration = 5
            })
        else
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo🔊!",
                Text = "Không tìm thấy server ít người!",
                Duration = 5
            })
        end
    end)
    if not success then
        game.StarterGui:SetCore("SendNotification", {
            Title = "Thông báo🔊!",
            Text = "Lỗi khi tìm server: " .. tostring(error),
            Duration = 5
        })
    end
end

AddButton(Tab7o, {
    Name = "🔄 Rejoin Server",
    Callback = function()
        RejoinServer()
    end
})

AddButton(Tab7o, {
    Name = "🌍 Chuyển đổi server",
    Callback = function()
        HopServer()
    end
})

AddButton(Tab7o, {
    Name = "👥 Tìm Server Ít Người",
    Callback = function()
        FindLowPlayerServer()
    end
})

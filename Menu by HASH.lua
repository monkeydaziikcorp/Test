local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "💜 • HASH-C V3.5", HidePremium = false, SaveConfig = true, IntroEnabled = false})

OrionLib:MakeNotification({
	Name = "Connexion valide !",
	Content = "Vous etes connecte "..Player.Name..". !",
	Image = "rbxassetid://4483345998",
	Time = 5
})



function SpeedHack20()
    getgenv().WalkSpeedValue = 20; --set your desired walkspeed here
    local Player = game:service'Players'.LocalPlayer;
    Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
    Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
    end)
    Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
end

function SpeedHack30()
    getgenv().WalkSpeedValue = 30; --set your desired walkspeed here
    local Player = game:service'Players'.LocalPlayer;
    Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
    Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
    end)
    Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
end

function SpeedHack40()
    getgenv().WalkSpeedValue = 40; --set your desired walkspeed here
    local Player = game:service'Players'.LocalPlayer;
    Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
    Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
    end)
    Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
end

function SpeedHack50()
    getgenv().WalkSpeedValue = 50; --set your desired walkspeed here
    local Player = game:service'Players'.LocalPlayer;
    Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
    Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
    end)
    Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
end

function SpeedHack60()
    getgenv().WalkSpeedValue = 60; --set your desired walkspeed here
    local Player = game:service'Players'.LocalPlayer;
    Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
    Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
    end)
    Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
end

function SpeedHack70()
    getgenv().WalkSpeedValue = 70; --set your desired walkspeed here
    local Player = game:service'Players'.LocalPlayer;
    Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
    Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
    end)
    Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
end

function SpeedHack80()
    getgenv().WalkSpeedValue = 80; --set your desired walkspeed here
    local Player = game:service'Players'.LocalPlayer;
    Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
    Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
    end)
    Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
end

function SpeedHack90()
    getgenv().WalkSpeedValue = 90; --set your desired walkspeed here
    local Player = game:service'Players'.LocalPlayer;
    Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
    Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
    end)
    Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
end

function SpeedHack100()
    getgenv().WalkSpeedValue = 100; --set your desired walkspeed here
    local Player = game:service'Players'.LocalPlayer;
    Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
    Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
    end)
    Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
end

function SpeedDefault()
    getgenv().WalkSpeedValue = 16; --set your desired walkspeed here
    local Player = game:service'Players'.LocalPlayer;
    Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
    Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
    end)
    Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
end

function Aimbot()
    local Camera = workspace.CurrentCamera
    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local UserInputService = game:GetService("UserInputService")
    local TweenService = game:GetService("TweenService")
    local LocalPlayer = Players.LocalPlayer
    local Holding = false
    
    _G.AimbotEnabled = true
    _G.TeamCheck = false -- If set to true then the script would only lock your aim at enemy team members.
    _G.AimPart = "Head" -- Where the aimbot script would lock at.
    _G.Sensitivity = 0 -- How many seconds it takes for the aimbot script to officially lock onto the target's aimpart.
    
    local function GetClosestPlayer()
        local MaximumDistance = math.huge
        local Target = nil
      
          coroutine.wrap(function()
                wait(20); MaximumDistance = math.huge -- Reset the MaximumDistance so that the Aimbot doesn't remember it as a very small variable and stop capturing players...
          end)()
    
        for _, v in next, Players:GetPlayers() do
            if v.Name ~= LocalPlayer.Name then
                if _G.TeamCheck == true then
                    if v.Team ~= LocalPlayer.Team then
                        if v.Character ~= nil then
                            if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
                                if v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
                                    local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
                                    local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude
                                    
                                    if VectorDistance < MaximumDistance then
                                        Target = v
                                                  MaximumDistance = VectorDistance
                                    end
                                end
                            end
                        end
                    end
                else
                    if v.Character ~= nil then
                        if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
                            if v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
                                local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
                                local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude
                                
                                if VectorDistance < MaximumDistance then
                                    Target = v
                                               MaximumDistance = VectorDistance
                                end
                            end
                        end
                    end
                end
            end
        end
    
        return Target
    end
    
    UserInputService.InputBegan:Connect(function(Input)
        if Input.UserInputType == Enum.UserInputType.MouseButton2 then
            Holding = true
        end
    end)
    
    UserInputService.InputEnded:Connect(function(Input)
        if Input.UserInputType == Enum.UserInputType.MouseButton2 then
            Holding = false
        end
    end)
    
    RunService.RenderStepped:Connect(function()
        if Holding == true and _G.AimbotEnabled == true then
            TweenService:Create(Camera, TweenInfo.new(_G.Sensitivity, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {CFrame = CFrame.new(Camera.CFrame.Position, GetClosestPlayer().Character[_G.AimPart].Position)}):Play()
        end
    end)
end

function ESP()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/monkeydaziikcorp/Test/main/ESP%20-%20Aimbot%20by%20HASH.lua", true))()
end


local Tab = Window:MakeTab({
	Name = "SpeedHack",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Default Speed",
	Callback = function()
        SpeedDefault()
  	end    
})

Tab:AddButton({
	Name = "Speed x20",
	Callback = function()
        SpeedHack20()()
  	end    
})

Tab:AddButton({
	Name = "Speed x30",
	Callback = function()
        SpeedHack30()()
  	end    
})

Tab:AddButton({
	Name = "Speed x40",
	Callback = function()
        SpeedHack40()()
  	end    
})

Tab:AddButton({
	Name = "Speed x50",
	Callback = function()
        SpeedHack50()()
  	end    
})

Tab:AddButton({
	Name = "Speed x60",
	Callback = function()
        SpeedHack60()()
  	end    
})

Tab:AddButton({
	Name = "Speed x70",
	Callback = function()
        SpeedHack70()()
  	end    
})

Tab:AddButton({
	Name = "Speed x80",
	Callback = function()
        SpeedHack80()()
  	end    
})

Tab:AddButton({
	Name = "Speed x90",
	Callback = function()
        SpeedHack90()()
  	end    
})

Tab:AddButton({
	Name = "Speed x100",
	Callback = function()
        SpeedHack100()()
  	end    
})

local Tab = Window:MakeTab({
	Name = "Aimbot",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Activer Aimbot",
	Callback = function()
        Aimbot()
  	end    
})

local Tab = Window:MakeTab({
	Name = "ESP (Box)",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Activer ESP",
	Callback = function()
        ESP()
  	end    
})

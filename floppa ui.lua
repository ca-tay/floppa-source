-- Loader
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
local UI = Library.Load({
    Title = "Flipper Flopper",
    Style = 4,
    SizeX = 400,
    SizeY = 400,
    Theme = "Mocha"
})
-- Pages
local Floppa = UI.New({
    Title = "The famous flopper"
})
local NonFloppa = UI.New({
    Title = "FE Converted Scripts"

})
local Credits = UI.New({
    Title = "Credits"
        
})
local Fling = UI.New({
    Title = "Fe fling flong 9000"
    
})
Floppa.Button({
    Text = "Coming soon!",
    Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/poopyhead121/floppa-source/main/floppa.lua'),true))()
        end
    
})

NonFloppa.Button({
    Text = "FE Shortsword Converted",
    Callback = function()
       loadstring(game:HttpGet(('https://raw.githubusercontent.com/poopyhead121/floppa-source/main/shortsword.lua'),true))()
 
    end
})

NonFloppa.Button({
    Text = "FE Chara Converted",
    Callback = function()
       loadstring(game:HttpGet(('https://raw.githubusercontent.com/poopyhead121/floppa-source/main/chara%20convert.lua'),true))()
 
    end
})
NonFloppa.Button({
    Text = "RESET",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/1gtVMUz3"))()
        end
    
})

Credits.Button({
        Text = "Click and press F9 for credits",
        Callback = function()
            print('Oofhead, Perception, Emper')
            end
        })
    local Victim = victim
    
    Fling.TextField({
        Text = "Name",
        Callback = function(Victim)
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/poopyhead121/floppa-source/main/poo.lua'),true))()
            wait(0.5)
        local P=game:GetService'Players'.LocalPlayer
local C=P.Character or P.CharacterAdded:Wait()
game:GetService'RunService'.Heartbeat:Connect(function()
    C:WaitForChild'HumanoidRootPart'.CFrame=CFrame.new(game:GetService'Players':FindFirstChild(Victim).Character:WaitForChild'Head'.Position) * CFrame.new(0,-2,0) * CFrame.Angles(9e9,0,0) --loop this
    wait(5)
    loadstring(game:HttpGet("https://pastebin.com/raw/1gtVMUz3"))()

    --C:WaitForChild'HumanoidRootPart'.CFrame=CFrame.new(0,50,0)

 
end)
end
    })

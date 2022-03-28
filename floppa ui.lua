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
    Title = "FE Scripts"

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
    Text = "Creeper",
    Callback = function()
       loadstring(game:HttpGet(('https://raw.githubusercontent.com/poopyhead121/floppa-source/main/creeper.lua'),true))()
 
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
            print('Oofhead, Perception, Emper, Gelatek, ネイサン, Xen')
            end
        })
    
    local Victim = victim
    Fling.TextField({
        Text = "Name",
        Callback = function(victim)
            
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/poopyhead121/floppa-source/main/poo.lua'),true))()

    --C:WaitForChild'HumanoidRootPart'.CFrame=CFrame.new(0,50,0)

 
end
    })

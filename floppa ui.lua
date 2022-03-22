-- Loader
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
local UI = Library.Load({
    Title = "Floppa Hub",
    Style = 4,
    SizeX = 400,
    SizeY = 400,
    Theme = "Mocha"
})
-- Pages
local Floppa = UI.New({
    Title = "Floppas"
})
local NonFloppa = UI.New({
    Title = "FE Converted Scripts"

})
local Credits = UI.New({
    Title = "Credits"
})

NonFloppa.Button({
    Text = "FE Shortsword Converted",
    Callback = function()
       print("Clicked!") 
    end
})

--credits to oofhead and nexo
game.Players:Chat("-gh 6838517854,7495844044,6995288595,62724852,451220849,63690008,62234425")
wait(1)
local Plr = game:GetService("Players").LocalPlayer -- you
local Player = game:GetService("Players").LocalPlayer-- you
local Character = Player.Character-- your character
local armmesh1 = Character:WaitForChild("Right Arm")

local armmesh2 = Character:WaitForChild("Left Arm")
local legmesh1 = Character:WaitForChild("Right Leg")
local legmesh2 = Character:WaitForChild("Left Leg")

local Hats = {
    Arm1 = Character:WaitForChild("Hat1"),
    Arm2 = Character:WaitForChild("Pal Hair"),
    Leg1 = Character:WaitForChild("LavanderHair"),
    Leg2 = Character:WaitForChild("Kate Hair"),
    Torso = Character:WaitForChild("Boat Car "),
    Head = Character:WaitForChild("FLOPPA"),
    Tail = Character:WaitForChild("Brown Fluffy Tail")
} -- the hat/body limb name

Hats.Arm1.Handle.Mesh:Remove()
Hats.Arm2.Handle.Mesh:Remove()
Hats.Leg1.Handle.Mesh:Remove()
Hats.Leg2.Handle.Mesh:Remove()
Hats.Torso.Handle.SpecialMesh:Remove()
armmesh1.Size = Vector3.new(0,0,0)
armmesh2.Size = Vector3.new(0,0,0)
legmesh1.Size = Vector3.new(0,0,0)
legmesh2.Size = Vector3.new(0,0,0)
Character.Humanoid.HipHeight = 1.9

wait(.1)

HumanDied = false
local reanim
function noplsmesh(hat)
_G.OldCF=workspace.Camera.CFrame
oldchar=game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character=workspace[game.Players.LocalPlayer.Name]
for i,v in next, workspace[game.Players.LocalPlayer.Name][hat]:GetDescendants() do
if v:IsA('Mesh') or v:IsA('SpecialMesh') then
v:Remove()
end
end
game.Players.LocalPlayer.Character=oldchar
wait()
workspace.Camera.CFrame=_G.OldCF
game.Players.LocalPlayer.Character=oldchar
end
_G.ClickFling=false -- Set this to true if u want.
loadstring(game:HttpGet(('https://raw.githubusercontent.com/XeneonPlays/Reanimate/main/FlingReanimate'),true))()

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor
------------------------------------
local Modes = { ---- add modes here when you add them make sure it equals to false
    [1] = true ,
    [2] = false ,
    [3] = false

}
local function Select(Mode)
    for i=1,#Modes do
        Modes[i] = false
    end
    Modes[Mode] = true
end

------------------------------------
speed = 1
sine = 1
srv = game:GetService('RunService')

function hatset(yes,part,c1,c0,nm)
reanim[yes].Handle.AccessoryWeld.Part1=reanim[part]
reanim[yes].Handle.AccessoryWeld.C1=c1 or CFrame.new()
reanim[yes].Handle.AccessoryWeld.C0=c0 or CFrame.new()--3bbb322dad5929d0d4f25adcebf30aa5
if nm==true then
noplsmesh(yes)
end
end

function setuptrail(parent,Pos1,Pos2,Color,LT,LE,Texture)
    IT = Instance.new
    local Part1 = parent
    local A1 = IT("Attachment",Part1)
    A1.Position = Pos1
    A1.Name = "ATH10"
    local B1 = IT("Attachment",Part1)
    B1.Position = Pos2
    B1.Name = "ATH11"
    local Trail1 = IT("Trail",Part1)
    Trail1.Name = "Nexo Trail"
    Trail1.Color = Color
    Trail1.Attachment0 = B1
    Trail1.Attachment1 = A1
    Trail1.Lifetime = LT
    Trail1.LightEmission = LE
    Trail1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
    Trail1.Texture = Texture
    Trail1.Enabled = true
end

--                          |
--put the setup trail below v

--put the hat script converted below

reanim = game.Players.LocalPlayer.Character.CWExtra.NexoPD
RJ = reanim.HumanoidRootPart.RootJoint
RS = reanim.Torso['Right Shoulder']
LS = reanim.Torso['Left Shoulder']
RH = reanim.Torso['Right Hip']
LH = reanim.Torso['Left Hip']
Root = reanim.HumanoidRootPart
NECK = reanim.Torso.Neck
NECK.C0 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
NECK.C1 = CF(0,-0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C1 = CF(-0.5,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C1 = CF(0.5,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))

game:GetService("UserInputService").InputEnded:Connect(function(inp,gp)
    if not gp then
        if inp.KeyCode == Enum.KeyCode.Q then
            srv.RenderStepped:Wait()
            Select(1)
        end
        if inp.KeyCode == Enum.KeyCode.Z then
            srv.RenderStepped:Wait()
            Select(2)
        end
        if inp.KeyCode == Enum.KeyCode.E then
            srv.RenderStepped:Wait()
            Select(3)
        end
    end
end)

coroutine.wrap(function()
    while true do -- anim changer
hatset('Boat Car ','Torso',CFrame.new(),reanim['Boat Car '].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),1),false)
hatset('Hat1','Right Arm',CFrame.new(),reanim['Hat1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),1),false)
hatset('Pal Hair','Left Arm',CFrame.new(),reanim['Pal Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),1),false)
hatset('LavanderHair','Right Leg',CFrame.new(),reanim['LavanderHair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),1),false)
hatset('Kate Hair','Left Leg',CFrame.new(),reanim['Kate Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),1),false)
hatset('Brown Fluffy Tail','Torso',CFrame.new(),reanim['Brown Fluffy Tail'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),-0.4+0*math.cos(sine/13),3.3+0*math.cos(sine/13))*ANGLES(RAD(-90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(180+0*math.cos(sine/13))),1),false)
        if HumanDied then break end
        sine = sine + speed
        if Root.Velocity.y > 1 then -- jump
            if Modes[1] == true then
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1.9+0*math.cos(sine/13),0.75+0*math.cos(sine/13))*ANGLES(RAD(90+-1*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.05*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-70+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(0.7+0*math.cos(sine/13),1.7+0*math.cos(sine/13),-1.5+-0.05*math.cos(sine/13))*ANGLES(RAD(140+0*math.cos(sine/13)),RAD(-9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-0.7+0*math.cos(sine/13),1.7+0*math.cos(sine/13),-1.5+-0.05*math.cos(sine/13))*ANGLES(RAD(147+0*math.cos(sine/13)),RAD(4+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(1.2+0*math.cos(sine/13),-1.7+0*math.cos(sine/13),-1+-0.05*math.cos(sine/13))*ANGLES(RAD(44+0*math.cos(sine/13)),RAD(13+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-1.2+0*math.cos(sine/13),-1.7+0*math.cos(sine/13),-1+-0.05*math.cos(sine/13))*ANGLES(RAD(35+0*math.cos(sine/13)),RAD(-7+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
            elseif Modes[2] == true then
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1.9+0*math.cos(sine/13),0.75+0*math.cos(sine/13))*ANGLES(RAD(90+-1*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.05*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-70+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(0.7+0*math.cos(sine/13),1.7+0*math.cos(sine/13),-1.5+-0.05*math.cos(sine/13))*ANGLES(RAD(140+0*math.cos(sine/13)),RAD(-9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-0.7+0*math.cos(sine/13),1.7+0*math.cos(sine/13),-1.5+-0.05*math.cos(sine/13))*ANGLES(RAD(147+0*math.cos(sine/13)),RAD(4+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(1.2+0*math.cos(sine/13),-1.7+0*math.cos(sine/13),-1+-0.05*math.cos(sine/13))*ANGLES(RAD(44+0*math.cos(sine/13)),RAD(13+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-1.2+0*math.cos(sine/13),-1.7+0*math.cos(sine/13),-1+-0.05*math.cos(sine/13))*ANGLES(RAD(35+0*math.cos(sine/13)),RAD(-7+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
            elseif Modes[3] == true then
                NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1.9+0*math.cos(sine/13),0.75+0*math.cos(sine/13))*ANGLES(RAD(42+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
                RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),3+0.05*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-29+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
                RS.C0 = RS.C0:Lerp(CF(0.7+0*math.cos(sine/13),1.7+0*math.cos(sine/13),-1.5+0*math.cos(sine/13))*ANGLES(RAD(26+-6*math.cos(sine/13)),RAD(-9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
                LS.C0 = LS.C0:Lerp(CF(-0.7+0*math.cos(sine/13),1.7+0*math.cos(sine/13),-1.5+0*math.cos(sine/13))*ANGLES(RAD(22+-8*math.cos(sine/13)),RAD(9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
                RH.C0 = RH.C0:Lerp(CF(1.2+0*math.cos(sine/13),-1.7+0*math.cos(sine/13),-1+0*math.cos(sine/13))*ANGLES(RAD(28+-6*math.cos(sine/13)),RAD(9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
                LH.C0 = LH.C0:Lerp(CF(-1.2+0*math.cos(sine/13),-1.7+0*math.cos(sine/13),-1+0*math.cos(sine/13))*ANGLES(RAD(20+-7*math.cos(sine/13)),RAD(-9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
            end
        elseif Root.Velocity.y < -1 then -- fall
            if Modes[1] == true then
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1.9+0*math.cos(sine/13),0.75+0*math.cos(sine/13))*ANGLES(RAD(90+-1*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.05*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-114+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(0.7+0*math.cos(sine/13),1.7+0*math.cos(sine/13),-1.5+-0.05*math.cos(sine/13))*ANGLES(RAD(140+0*math.cos(sine/13)),RAD(-9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-0.7+0*math.cos(sine/13),1.7+0*math.cos(sine/13),-1.5+-0.05*math.cos(sine/13))*ANGLES(RAD(147+0*math.cos(sine/13)),RAD(4+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(1.2+0*math.cos(sine/13),-1.7+0*math.cos(sine/13),-1+-0.05*math.cos(sine/13))*ANGLES(RAD(44+0*math.cos(sine/13)),RAD(13+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-1.2+0*math.cos(sine/13),-1.7+0*math.cos(sine/13),-1+-0.05*math.cos(sine/13))*ANGLES(RAD(35+0*math.cos(sine/13)),RAD(-7+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
            elseif Modes[2] == true then
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1.9+0*math.cos(sine/13),0.75+0*math.cos(sine/13))*ANGLES(RAD(90+-1*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.05*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-114+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(0.7+0*math.cos(sine/13),1.7+0*math.cos(sine/13),-1.5+-0.05*math.cos(sine/13))*ANGLES(RAD(140+0*math.cos(sine/13)),RAD(-9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-0.7+0*math.cos(sine/13),1.7+0*math.cos(sine/13),-1.5+-0.05*math.cos(sine/13))*ANGLES(RAD(147+0*math.cos(sine/13)),RAD(4+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(1.2+0*math.cos(sine/13),-1.7+0*math.cos(sine/13),-1+-0.05*math.cos(sine/13))*ANGLES(RAD(44+0*math.cos(sine/13)),RAD(13+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-1.2+0*math.cos(sine/13),-1.7+0*math.cos(sine/13),-1+-0.05*math.cos(sine/13))*ANGLES(RAD(35+0*math.cos(sine/13)),RAD(-7+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
            elseif Modes[3] == true then
                NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1.9+0*math.cos(sine/13),0.75+0*math.cos(sine/13))*ANGLES(RAD(42+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
                RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),3+0.05*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-29+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
                RS.C0 = RS.C0:Lerp(CF(0.7+0*math.cos(sine/13),1.7+0*math.cos(sine/13),-1.5+0*math.cos(sine/13))*ANGLES(RAD(26+-6*math.cos(sine/13)),RAD(-9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
                LS.C0 = LS.C0:Lerp(CF(-0.7+0*math.cos(sine/13),1.7+0*math.cos(sine/13),-1.5+0*math.cos(sine/13))*ANGLES(RAD(22+-8*math.cos(sine/13)),RAD(9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
                RH.C0 = RH.C0:Lerp(CF(1.2+0*math.cos(sine/13),-1.7+0*math.cos(sine/13),-1+0*math.cos(sine/13))*ANGLES(RAD(28+-6*math.cos(sine/13)),RAD(9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
                LH.C0 = LH.C0:Lerp(CF(-1.2+0*math.cos(sine/13),-1.7+0*math.cos(sine/13),-1+0*math.cos(sine/13))*ANGLES(RAD(20+-7*math.cos(sine/13)),RAD(-9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
            end
        elseif Root.Velocity.Magnitude < 2 then -- idle
            if Modes[1] == true then
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1.9+0*math.cos(sine/13),0.75+0*math.cos(sine/13))*ANGLES(RAD(90+-1*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.05*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(0.7+0*math.cos(sine/13),1.7+0*math.cos(sine/13),-1.5+-0.05*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(-9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-0.7+0*math.cos(sine/13),1.7+0*math.cos(sine/13),-1.5+-0.05*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(4+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(1.2+0*math.cos(sine/13),-1.7+0*math.cos(sine/13),-1+-0.05*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(13+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-1.2+0*math.cos(sine/13),-1.7+0*math.cos(sine/13),-1+-0.05*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(-7+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
            elseif Modes[2] == true then
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1.9+0*math.cos(sine/13),0.75+0*math.cos(sine/13))*ANGLES(RAD(69+-1*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),-1.3+0.05*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-74+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(0.7+0*math.cos(sine/13),1.7+0*math.cos(sine/13),-1+-0.05*math.cos(sine/13))*ANGLES(RAD(75+0*math.cos(sine/13)),RAD(-9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-0.7+0*math.cos(sine/13),1.7+0*math.cos(sine/13),-1+-0.05*math.cos(sine/13))*ANGLES(RAD(73+0*math.cos(sine/13)),RAD(9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(1.2+0*math.cos(sine/13),-1.7+0*math.cos(sine/13),-1+-0.05*math.cos(sine/13))*ANGLES(RAD(162+0*math.cos(sine/13)),RAD(9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-1.2+0*math.cos(sine/13),-1.7+0*math.cos(sine/13),-1+-0.05*math.cos(sine/13))*ANGLES(RAD(162+0*math.cos(sine/13)),RAD(-9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
            elseif Modes[3] == true then
                NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1.9+0*math.cos(sine/13),0.75+0*math.cos(sine/13))*ANGLES(RAD(42+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
                RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),3+0.05*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-29+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
                RS.C0 = RS.C0:Lerp(CF(0.7+0*math.cos(sine/13),1.7+0*math.cos(sine/13),-1.5+0*math.cos(sine/13))*ANGLES(RAD(26+-6*math.cos(sine/13)),RAD(-9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
                LS.C0 = LS.C0:Lerp(CF(-0.7+0*math.cos(sine/13),1.7+0*math.cos(sine/13),-1.5+0*math.cos(sine/13))*ANGLES(RAD(22+-8*math.cos(sine/13)),RAD(9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
                RH.C0 = RH.C0:Lerp(CF(1.2+0*math.cos(sine/13),-1.7+0*math.cos(sine/13),-1+0*math.cos(sine/13))*ANGLES(RAD(28+-6*math.cos(sine/13)),RAD(9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
                LH.C0 = LH.C0:Lerp(CF(-1.2+0*math.cos(sine/13),-1.7+0*math.cos(sine/13),-1+0*math.cos(sine/13))*ANGLES(RAD(20+-7*math.cos(sine/13)),RAD(-9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
            end
        elseif Root.Velocity.Magnitude < 20 then -- walk
            if Modes[1] == true then
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1.9+0*math.cos(sine/13),0.75+0*math.cos(sine/13))*ANGLES(RAD(90+-1*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.05*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-93+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(0.7+0*math.cos(sine/13),1.7+0*math.cos(sine/13),-1.5+-0.05*math.cos(sine/13))*ANGLES(RAD(90+26*math.cos(sine/13)),RAD(-9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-0.7+0*math.cos(sine/13),1.7+0*math.cos(sine/13),-1.5+-0.05*math.cos(sine/13))*ANGLES(RAD(90+-26*math.cos(sine/13)),RAD(4+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(1.2+0*math.cos(sine/13),-1.7+0*math.cos(sine/13),-1+-0.05*math.cos(sine/13))*ANGLES(RAD(90+-26*math.cos(sine/13)),RAD(13+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-1.2+0*math.cos(sine/13),-1.7+0*math.cos(sine/13),-1+-0.05*math.cos(sine/13))*ANGLES(RAD(90+26*math.cos(sine/13)),RAD(-7+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
            elseif Modes[2] == true then
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1.9+0*math.cos(sine/13),0.75+0*math.cos(sine/13))*ANGLES(RAD(90+-1*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.05*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-93+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(0.7+0*math.cos(sine/13),1.7+0*math.cos(sine/13),-1.5+-0.05*math.cos(sine/13))*ANGLES(RAD(90+26*math.cos(sine/13)),RAD(-9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-0.7+0*math.cos(sine/13),1.7+0*math.cos(sine/13),-1.5+-0.05*math.cos(sine/13))*ANGLES(RAD(90+-26*math.cos(sine/13)),RAD(4+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(1.2+0*math.cos(sine/13),-1.7+0*math.cos(sine/13),-1+-0.05*math.cos(sine/13))*ANGLES(RAD(90+-26*math.cos(sine/13)),RAD(13+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-1.2+0*math.cos(sine/13),-1.7+0*math.cos(sine/13),-1+-0.05*math.cos(sine/13))*ANGLES(RAD(90+26*math.cos(sine/13)),RAD(-7+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
            elseif Modes[3] == true then
                NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1.9+0*math.cos(sine/13),0.75+0*math.cos(sine/13))*ANGLES(RAD(78+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
                RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),3+0.05*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
                RS.C0 = RS.C0:Lerp(CF(0.7+0*math.cos(sine/13),1.7+0*math.cos(sine/13),-1.5+0*math.cos(sine/13))*ANGLES(RAD(26+-6*math.cos(sine/13)),RAD(-9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
                LS.C0 = LS.C0:Lerp(CF(-0.7+0*math.cos(sine/13),1.7+0*math.cos(sine/13),-1.5+0*math.cos(sine/13))*ANGLES(RAD(22+-8*math.cos(sine/13)),RAD(9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
                RH.C0 = RH.C0:Lerp(CF(1.2+0*math.cos(sine/13),-1.7+0*math.cos(sine/13),-1+0*math.cos(sine/13))*ANGLES(RAD(28+-6*math.cos(sine/13)),RAD(9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
                LH.C0 = LH.C0:Lerp(CF(-1.2+0*math.cos(sine/13),-1.7+0*math.cos(sine/13),-1+0*math.cos(sine/13))*ANGLES(RAD(20+-7*math.cos(sine/13)),RAD(-9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
            end
        elseif Root.Velocity.Magnitude > 20 then -- run
            if Modes[1] == true then
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1.9+0*math.cos(sine/13),0.75+0*math.cos(sine/13))*ANGLES(RAD(90+-1*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.05*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-93+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(0.7+0*math.cos(sine/13),1.7+0*math.cos(sine/13),-1.5+-0.05*math.cos(sine/13))*ANGLES(RAD(90+26*math.cos(sine/13)),RAD(-9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-0.7+0*math.cos(sine/13),1.7+0*math.cos(sine/13),-1.5+-0.05*math.cos(sine/13))*ANGLES(RAD(90+-26*math.cos(sine/13)),RAD(4+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(1.2+0*math.cos(sine/13),-1.7+0*math.cos(sine/13),-1+-0.05*math.cos(sine/13))*ANGLES(RAD(90+-26*math.cos(sine/13)),RAD(13+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-1.2+0*math.cos(sine/13),-1.7+0*math.cos(sine/13),-1+-0.05*math.cos(sine/13))*ANGLES(RAD(90+26*math.cos(sine/13)),RAD(-7+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
            elseif Modes[2] == true then
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1.9+0*math.cos(sine/13),0.75+0*math.cos(sine/13))*ANGLES(RAD(90+-1*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.05*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-93+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(0.7+0*math.cos(sine/13),1.7+0*math.cos(sine/13),-1.5+-0.05*math.cos(sine/13))*ANGLES(RAD(90+26*math.cos(sine/13)),RAD(-9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-0.7+0*math.cos(sine/13),1.7+0*math.cos(sine/13),-1.5+-0.05*math.cos(sine/13))*ANGLES(RAD(90+-26*math.cos(sine/13)),RAD(4+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(1.2+0*math.cos(sine/13),-1.7+0*math.cos(sine/13),-1+-0.05*math.cos(sine/13))*ANGLES(RAD(90+-26*math.cos(sine/13)),RAD(13+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-1.2+0*math.cos(sine/13),-1.7+0*math.cos(sine/13),-1+-0.05*math.cos(sine/13))*ANGLES(RAD(90+26*math.cos(sine/13)),RAD(-7+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
            elseif Modes[3] == true then
                NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1.9+0*math.cos(sine/13),0.75+0*math.cos(sine/13))*ANGLES(RAD(78+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
                RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),3+0.05*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
                RS.C0 = RS.C0:Lerp(CF(0.7+0*math.cos(sine/13),1.7+0*math.cos(sine/13),-1.5+0*math.cos(sine/13))*ANGLES(RAD(26+-6*math.cos(sine/13)),RAD(-9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
                LS.C0 = LS.C0:Lerp(CF(-0.7+0*math.cos(sine/13),1.7+0*math.cos(sine/13),-1.5+0*math.cos(sine/13))*ANGLES(RAD(22+-8*math.cos(sine/13)),RAD(9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
                RH.C0 = RH.C0:Lerp(CF(1.2+0*math.cos(sine/13),-1.7+0*math.cos(sine/13),-1+0*math.cos(sine/13))*ANGLES(RAD(28+-6*math.cos(sine/13)),RAD(9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
                LH.C0 = LH.C0:Lerp(CF(-1.2+0*math.cos(sine/13),-1.7+0*math.cos(sine/13),-1+0*math.cos(sine/13))*ANGLES(RAD(20+-7*math.cos(sine/13)),RAD(-9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
            end
        end
        srv.RenderStepped:Wait()
    end
end)()
---
reanim.Humanoid.WalkSpeed = 11
-- hat clerp
--[[elseif Modes[2] == true then
    reanim['New Tonk'].Handle.AccessoryWeld.Part1 = reanim['Torso']
    reanim['New Tonk'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
    reanim['New Tonk'].Handle.AccessoryWeld.C0 = reanim['New Tonk'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),-0.4+0*math.cos(sine/13),-1+0*math.cos(sine/13))*ANGLES(RAD(-90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
end)]]

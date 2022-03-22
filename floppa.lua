local hairAccessoriesWithoutHairInName = {
    --put the Accessory's name in dex here if u dont want it to remove accessories
   ['DemonGodSword'] = true;
    ['RainbowGodSword'] = true;

    }
     
        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Accessory") and not hairAccessoriesWithoutHairInName[v.Name] and v.Handle:FindFirstChild("Mesh") then
        ag = v.Handle:FindFirstChild("Mesh")
        ag:Destroy()
        end
        end
     
         for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Accessory") and not hairAccessoriesWithoutHairInName[v.Name] and v.Handle:FindFirstChild("SpecialMesh") then
        ag = v.Handle:FindFirstChild("SpecialMesh")
        ag:Destroy()
        end
        end
HumanDied = false
local reanim
local te
local ct
local m
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
loadstring(game:HttpGet(('https://raw.githubusercontent.com/XeneonPlays/Nexo/main/NexoReanimate'),true))()

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

--put the hat script converted below

reanim = game.Players.LocalPlayer.Character
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

Mode='1'

mousechanger=game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(k)
if k == 'e' then-- first mode
Mode='1'
elseif k == 'q' then-- second mode
Mode='2'
elseif k == '2' then-- third mode
Mode='3'
end
end)

coroutine.wrap(function()
while true do -- anim changer
if HumanDied then mousechanger:Disconnect() break end
sine = sine + speed
local rlegray = Ray.new(reanim["Right Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local rlegpart, rlegendPoint = workspace:FindPartOnRay(rlegray, char)
local llegray = Ray.new(reanim["Left Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local llegpart, llegendPoint = workspace:FindPartOnRay(llegray, char)
local rightvector = (Root.Velocity * Root.CFrame.rightVector).X + (Root.Velocity * Root.CFrame.rightVector).Z
local lookvector = (Root.Velocity * Root.CFrame.lookVector).X + (Root.Velocity * Root.CFrame.lookVector).Z
if lookvector > reanim.Humanoid.WalkSpeed then
lookvector = reanim.Humanoid.WalkSpeed
end
if lookvector < -reanim.Humanoid.WalkSpeed then
lookvector = -reanim.Humanoid.WalkSpeed
end
if rightvector > reanim.Humanoid.WalkSpeed then
rightvector = reanim.Humanoid.WalkSpeed
end
if rightvector < -reanim.Humanoid.WalkSpeed then
rightvector = -reanim.Humanoid.WalkSpeed
end
local lookvel = lookvector / reanim.Humanoid.WalkSpeed
local rightvel = rightvector / reanim.Humanoid.WalkSpeed
if Mode == '1' then
if Root.Velocity.y > 1 then -- jump
    reanim['Cyber Peacock Tail 2.0'].Handle.AccessoryWeld.Part1 = reanim['Torso']
    reanim['Cyber Peacock Tail 2.0'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
    reanim['Cyber Peacock Tail 2.0'].Handle.AccessoryWeld.C0 = reanim['Cyber Peacock Tail 2.0'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanim['Leg1'].Handle.AccessoryWeld.Part1 = reanim['Right Leg']
    reanim['Leg1'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
    reanim['Leg1'].Handle.AccessoryWeld.C0 = reanim['Leg1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanim['Leg2'].Handle.AccessoryWeld.Part1 = reanim['Left Leg']
    reanim['Leg2'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
    reanim['Leg2'].Handle.AccessoryWeld.C0 = reanim['Leg2'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanim['ArmHat1'].Handle.AccessoryWeld.Part1 = reanim['Right Arm']
    reanim['ArmHat1'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
    reanim['ArmHat1'].Handle.AccessoryWeld.C0 = reanim['ArmHat1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanim['ArmHat2'].Handle.AccessoryWeld.Part1 = reanim['Left Arm']
    reanim['ArmHat2'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
    reanim['ArmHat2'].Handle.AccessoryWeld.C0 = reanim['ArmHat2'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),3+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(2.5+0*math.cos(sine/5),0.5+0*math.cos(sine/5),0+0*math.cos(sine/5))*ANGLES(RAD(100+3*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(0+3*math.cos(sine/5))),.3)
LS.C0 = LS.C0:Lerp(CF(-2.5+0*math.cos(sine/5),0.5+0*math.cos(sine/5),0+0*math.cos(sine/5))*ANGLES(RAD(90+-3*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(0+3*math.cos(sine/5))),.3)
RH.C0 = RH.C0:Lerp(CF(1+0*math.cos(sine/5),-3+0*math.cos(sine/5),0+0*math.cos(sine/5))*ANGLES(RAD(-5+0*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(0+0*math.cos(sine/5))),.3)
LH.C0 = LH.C0:Lerp(CF(-1+0*math.cos(sine/5),-3+0*math.cos(sine/5),0+0*math.cos(sine/5))*ANGLES(RAD(-3+0*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(0+0*math.cos(sine/5))),.3)
--jump clerp here
elseif Root.Velocity.y < -1 then -- fall
    reanim['Cyber Peacock Tail 2.0'].Handle.AccessoryWeld.Part1 = reanim['Torso']
    reanim['Cyber Peacock Tail 2.0'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
    reanim['Cyber Peacock Tail 2.0'].Handle.AccessoryWeld.C0 = reanim['Cyber Peacock Tail 2.0'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanim['Leg1'].Handle.AccessoryWeld.Part1 = reanim['Right Leg']
    reanim['Leg1'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
    reanim['Leg1'].Handle.AccessoryWeld.C0 = reanim['Leg1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanim['Leg2'].Handle.AccessoryWeld.Part1 = reanim['Left Leg']
    reanim['Leg2'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
    reanim['Leg2'].Handle.AccessoryWeld.C0 = reanim['Leg2'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanim['ArmHat1'].Handle.AccessoryWeld.Part1 = reanim['Right Arm']
    reanim['ArmHat1'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
    reanim['ArmHat1'].Handle.AccessoryWeld.C0 = reanim['ArmHat1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanim['ArmHat2'].Handle.AccessoryWeld.Part1 = reanim['Left Arm']
    reanim['ArmHat2'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
    reanim['ArmHat2'].Handle.AccessoryWeld.C0 = reanim['ArmHat2'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),3+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(2.5+0*math.cos(sine/5),0.5+0*math.cos(sine/5),0+0*math.cos(sine/5))*ANGLES(RAD(130+3*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(0+3*math.cos(sine/5))),.3)
LS.C0 = LS.C0:Lerp(CF(-2.5+0*math.cos(sine/5),0.5+0*math.cos(sine/5),0+0*math.cos(sine/5))*ANGLES(RAD(110+-3*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(0+3*math.cos(sine/5))),.3)
RH.C0 = RH.C0:Lerp(CF(1+0*math.cos(sine/5),-3+0*math.cos(sine/5),0+0*math.cos(sine/5))*ANGLES(RAD(-5+3*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(0+3*math.cos(sine/5))),.3)
LH.C0 = LH.C0:Lerp(CF(-1+0*math.cos(sine/5),-3+0*math.cos(sine/5),0+0*math.cos(sine/5))*ANGLES(RAD(-3+3*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(0+-3*math.cos(sine/5))),.3)
--fall clerp here
elseif Root.Velocity.Magnitude < 2 then -- idle

    reanim['Cyber Peacock Tail 2.0'].Handle.AccessoryWeld.Part1 = reanim['Torso']
reanim['Cyber Peacock Tail 2.0'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
reanim['Cyber Peacock Tail 2.0'].Handle.AccessoryWeld.C0 = reanim['Cyber Peacock Tail 2.0'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
reanim['Leg1'].Handle.AccessoryWeld.Part1 = reanim['Right Leg']
reanim['Leg1'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
reanim['Leg1'].Handle.AccessoryWeld.C0 = reanim['Leg1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
reanim['Leg2'].Handle.AccessoryWeld.Part1 = reanim['Left Leg']
reanim['Leg2'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
reanim['Leg2'].Handle.AccessoryWeld.C0 = reanim['Leg2'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
reanim['ArmHat1'].Handle.AccessoryWeld.Part1 = reanim['Right Arm']
reanim['ArmHat1'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
reanim['ArmHat1'].Handle.AccessoryWeld.C0 = reanim['ArmHat1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
reanim['ArmHat2'].Handle.AccessoryWeld.Part1 = reanim['Left Arm']
reanim['ArmHat2'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
reanim['ArmHat2'].Handle.AccessoryWeld.C0 = reanim['ArmHat2'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),2+0*math.sin(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.sin(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.sin(sine/13))),.1)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),3+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.sin(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.sin(sine/13))),.1)
RS.C0 = RS.C0:Lerp(CF(2.5+0*math.cos(sine/13),0.5+0*math.sin(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.sin(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.sin(sine/13))),.1)
LS.C0 = LS.C0:Lerp(CF(-2.5+0*math.cos(sine/13),0.5+0*math.sin(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.sin(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.sin(sine/13))),.1)
RH.C0 = RH.C0:Lerp(CF(1+0*math.cos(sine/13),-3+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.sin(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.sin(sine/13))),.1)
LH.C0 = LH.C0:Lerp(CF(-1+0*math.cos(sine/13),-3+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.sin(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.sin(sine/13))),.1)

elseif Root.Velocity.Magnitude < 20 then -- walk
    
    reanim['Cyber Peacock Tail 2.0'].Handle.AccessoryWeld.Part1 = reanim['Torso']
reanim['Cyber Peacock Tail 2.0'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
reanim['Cyber Peacock Tail 2.0'].Handle.AccessoryWeld.C0 = reanim['Cyber Peacock Tail 2.0'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
reanim['Leg1'].Handle.AccessoryWeld.Part1 = reanim['Right Leg']
reanim['Leg1'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
reanim['Leg1'].Handle.AccessoryWeld.C0 = reanim['Leg1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
reanim['Leg2'].Handle.AccessoryWeld.Part1 = reanim['Left Leg']
reanim['Leg2'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
reanim['Leg2'].Handle.AccessoryWeld.C0 = reanim['Leg2'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
reanim['ArmHat1'].Handle.AccessoryWeld.Part1 = reanim['Right Arm']
reanim['ArmHat1'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
reanim['ArmHat1'].Handle.AccessoryWeld.C0 = reanim['ArmHat1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
reanim['ArmHat2'].Handle.AccessoryWeld.Part1 = reanim['Left Arm']
reanim['ArmHat2'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
reanim['ArmHat2'].Handle.AccessoryWeld.C0 = reanim['ArmHat2'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
    RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),3+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
    RS.C0 = RS.C0:Lerp(CF(2.5+0*math.cos(sine/5),0.5+0*math.cos(sine/5),0+0*math.cos(sine/5))*ANGLES(RAD(0+30*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(0+0*math.cos(sine/5))),.3)
    LS.C0 = LS.C0:Lerp(CF(-2.5+0*math.cos(sine/5),0.5+0*math.cos(sine/5),0+0*math.cos(sine/5))*ANGLES(RAD(0+-30*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(0+0*math.cos(sine/5))),.3)
    RH.C0 = RH.C0:Lerp(CF(1+0*math.cos(sine/5),-3+0*math.cos(sine/5),0+0*math.cos(sine/5))*ANGLES(RAD(0+-30*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(0+0*math.cos(sine/5))),.3)
    LH.C0 = LH.C0:Lerp(CF(-1+0*math.cos(sine/5),-3+0*math.cos(sine/5),0+0*math.cos(sine/5))*ANGLES(RAD(0+30*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(0+0*math.cos(sine/5))),.3)
--walk clerp here
elseif Root.Velocity.Magnitude > 20 then -- run
    reanim['Cyber Peacock Tail 2.0'].Handle.AccessoryWeld.Part1 = reanim['Torso']
    reanim['Cyber Peacock Tail 2.0'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
    reanim['Cyber Peacock Tail 2.0'].Handle.AccessoryWeld.C0 = reanim['Cyber Peacock Tail 2.0'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanim['Leg1'].Handle.AccessoryWeld.Part1 = reanim['Right Leg']
    reanim['Leg1'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
    reanim['Leg1'].Handle.AccessoryWeld.C0 = reanim['Leg1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanim['Leg2'].Handle.AccessoryWeld.Part1 = reanim['Left Leg']
    reanim['Leg2'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
    reanim['Leg2'].Handle.AccessoryWeld.C0 = reanim['Leg2'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanim['ArmHat1'].Handle.AccessoryWeld.Part1 = reanim['Right Arm']
    reanim['ArmHat1'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
    reanim['ArmHat1'].Handle.AccessoryWeld.C0 = reanim['ArmHat1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanim['ArmHat2'].Handle.AccessoryWeld.Part1 = reanim['Left Arm']
    reanim['ArmHat2'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
    reanim['ArmHat2'].Handle.AccessoryWeld.C0 = reanim['ArmHat2'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
        NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
        RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),3+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
        RS.C0 = RS.C0:Lerp(CF(2.5+0*math.cos(sine/5),0.5+0*math.cos(sine/5),0+0*math.cos(sine/5))*ANGLES(RAD(0+30*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(0+0*math.cos(sine/5))),.3)
        LS.C0 = LS.C0:Lerp(CF(-2.5+0*math.cos(sine/5),0.5+0*math.cos(sine/5),0+0*math.cos(sine/5))*ANGLES(RAD(0+-30*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(0+0*math.cos(sine/5))),.3)
        RH.C0 = RH.C0:Lerp(CF(1+0*math.cos(sine/5),-3+0*math.cos(sine/5),0+0*math.cos(sine/5))*ANGLES(RAD(0+-30*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(0+0*math.cos(sine/5))),.3)
        LH.C0 = LH.C0:Lerp(CF(-1+0*math.cos(sine/5),-3+0*math.cos(sine/5),0+0*math.cos(sine/5))*ANGLES(RAD(0+30*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(0+0*math.cos(sine/5))),.3)
--run clerp here

end
elseif Mode == '2' then
if Root.Velocity.y > 1 then -- jump
   


--jump clerp here
elseif Root.Velocity.y < -1 then -- fall
  
--fall clerp here
elseif Root.Velocity.Magnitude < 2 then -- idle
  
    
--idle clerp here
elseif Root.Velocity.Magnitude < 20 then -- walk
  
--walk clerp here
elseif Root.Velocity.Magnitude > 20 then -- run
  
--run clerp here
end
elseif Mode == '3' then
if Root.Velocity.y > 1 then -- jump
--jump clerp here
elseif Root.Velocity.y < -1 then -- fall
--fall clerp here
elseif Root.Velocity.Magnitude < 2 then -- idle
  
   
--idle clerp here
elseif Root.Velocity.Magnitude < 20 then -- walk
   
--walk clerp here
elseif Root.Velocity.Magnitude > 20 then -- run
--run clerp here
end
end
srv.RenderStepped:Wait()
end
end)()
--Created using Nexo Animator

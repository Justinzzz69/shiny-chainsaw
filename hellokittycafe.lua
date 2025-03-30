local _0x1=loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local _0x2=loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local _0x3=loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local _0x4=game:GetService("Players")
local _0x5=game:GetService("RunService")
local _0x6=game:GetService("UserInputService")
local _0x7=game:GetService("VirtualInputManager")
local _0x8=game:GetService("ReplicatedStorage")
local _0x9=game:GetService("Workspace")
local _0xa=_0x4.LocalPlayer
local _0xb=_0x1:CreateWindow({Title="Hello kitty",SubTitle="",TabWidth=160,Size=UDim2.fromOffset(580,460),Acrylic=true,Theme="Dark",MinimizeKey=Enum.KeyCode.LeftControl})
local _0xc={
	Player=_0xb:AddTab({Title="Player",Icon="user"}),
	Teleport=_0xb:AddTab({Title="Teleport",Icon="map"}),
	Info=_0xb:AddTab({Title="Info",Icon="heart"}),
	Settings=_0xb:AddTab({Title="Settings",Icon="settings"})
}
--------------------------------------------------------------------------------
-- Funktionen für Speed, Fly, Anti-AFK, etc.
local _0xd=16
local _0xe=50
local _0xf, _0x10, _0x11
local function _0x12(_0x13)
	local _0x14=_0xa.Character
	if _0x14 and _0x14:FindFirstChild("Humanoid") then
		_0x14.Humanoid.WalkSpeed=_0x13
	end
end
local function _0x15()
	local _0x16=_0xa.Character
	if _0x16 and _0x16:FindFirstChild("HumanoidRootPart") then
		local _0x17=_0x16.HumanoidRootPart
		_0xf=Instance.new("BodyVelocity",_0x17)
		_0xf.Velocity=Vector3.new(0,0,0)
		_0xf.MaxForce=Vector3.new(1e5,1e5,1e5)
		_0x10=Instance.new("BodyGyro",_0x17)
		_0x10.MaxTorque=Vector3.new(1e5,1e5,1e5)
		_0x10.CFrame=_0x17.CFrame
		_0x11=_0x5.RenderStepped:Connect(function()
			local _0x18=Vector3.new(0,0,0)
			if _0x6:IsKeyDown(Enum.KeyCode.W) then _0x18=_0x18+_0x9.CurrentCamera.CFrame.LookVector end
			if _0x6:IsKeyDown(Enum.KeyCode.S) then _0x18=_0x18-_0x9.CurrentCamera.CFrame.LookVector end
			if _0x6:IsKeyDown(Enum.KeyCode.A) then _0x18=_0x18-_0x9.CurrentCamera.CFrame.RightVector end
			if _0x6:IsKeyDown(Enum.KeyCode.D) then _0x18=_0x18+_0x9.CurrentCamera.CFrame.RightVector end
			if _0x6:IsKeyDown(Enum.KeyCode.Space) then _0x18=_0x18+Vector3.new(0,1,0) end
			if _0x6:IsKeyDown(Enum.KeyCode.LeftShift) then _0x18=_0x18-Vector3.new(0,1,0) end
			if _0x18.Magnitude>0 then
				_0xf.Velocity=_0x18.Unit*_0xe
			else
				_0xf.Velocity=Vector3.new(0,0,0)
			end
			_0x10.CFrame=_0x9.CurrentCamera.CFrame
		end)
	end
end
local function _0x19()
	if _0xf then _0xf:Destroy() _0xf=nil end
	if _0x10 then _0x10:Destroy() _0x10=nil end
	if _0x11 then _0x11:Disconnect() _0x11=nil end
end
-- Weitere Funktionen wie Anti-AFK, Teleport, etc. werden analog implementiert
_0x2:SetLibrary(_0x1)
_0x3:SetLibrary(_0x1)
_0x1:Notify({Title="Hello kitty",Content="Script Loaded!",Duration=5})

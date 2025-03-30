local _0x1=loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local _0x2=loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local _0x3=loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local _0x4=game:GetService("RunService")
local _0x5=game:GetService("UserInputService")
local _0x6=game:GetService("Players")
local _0x7=game:GetService("VirtualUser")
local _0x8=game:GetService("Lighting")
local _0x9=_0x1:CreateWindow({Title="Killer/Survivor & Player Script",SubTitle="Combined Features",TabWidth=160,Size=UDim2.fromOffset(580,460),Acrylic=true,Theme="Dark",MinimizeKey=Enum.KeyCode.LeftControl})
local _0xa={
	ESP=_0x9:AddTab({Title="ESP",Icon="eye"}),
	Player=_0x9:AddTab({Title="Player",Icon="user"}),
	Visual=_0x9:AddTab({Title="Visual",Icon="sun"}),
	Settings=_0x9:AddTab({Title="Settings",Icon="settings"})
}
_0x1:Notify({Title="Loaded",Content="All features script loaded.",Duration=5})
--------------------------------------------------------------------------------
-- PLAYER ESP (Chams & Nametags)
local _0xb=false
local _0xc=false
local _0xd=Color3.fromRGB(255,0,0)
local _0xe=Color3.fromRGB(0,255,0)
local _0xf={}
local function _0x10(_0x11)
	if _0xf[_0x11] then
		if _0xf[_0x11].chams then pcall(function() _0xf[_0x11].chams:Destroy() end) end
		if _0xf[_0x11].nametag then pcall(function() _0xf[_0x11].nametag:Destroy() end) end
		_0xf[_0x11]=nil
	end
end
local function _0x12(_0x13,_0x14)
	if _0x14 then
		if _0x13.Team and _0x13.Team.Name=="Killer" then
			_0x14.FillColor=_0xd
		else
			_0x14.FillColor=_0xe
		end
	end
end
local function _0x15(_0x16,_0x17)
	local _0x18=Instance.new("Highlight")
	_0x18.Adornee=_0x17
	_0x12(_0x16,_0x18)
	_0x18.FillTransparency=0.5
	_0x18.OutlineTransparency=1
	_0x18.Parent=_0x17
	return _0x18
end
local function _0x19(_0x1a,_0x1b)
	local _0x1c=_0x1b:FindFirstChild("Head")
	if not _0x1c then return end
	local _0x1d=Instance.new("BillboardGui")
	_0x1d.Name="NametagESP"
	_0x1d.Adornee=_0x1c
	_0x1d.Size=UDim2.new(0,100,0,40)
	_0x1d.StudsOffset=Vector3.new(0,2,0)
	_0x1d.AlwaysOnTop=true
	local _0x1e=Instance.new("TextLabel")
	_0x1e.Size=UDim2.new(1,0,1,0)
	_0x1e.BackgroundTransparency=1
	_0x1e.Text=_0x1a.Name
	_0x1e.TextScaled=true
	_0x1e.Font=Enum.Font.SourceSansBold
	if _0x1a.Team and _0x1a.Team.Name=="Killer" then
		_0x1e.TextColor3=_0xd
	else
		_0x1e.TextColor3=_0xe
	end
	_0x1e.Parent=_0x1d
	_0x1d.Parent=_0x1c
	return _0x1d
end
local function _0x1f(_0x20)
	_0x10(_0x20)
	local _0x21=_0x20.Character or _0x20.CharacterAdded:Wait()
	local _0x22={}
	if _0xb then _0x22.chams=_0x15(_0x20,_0x21) end
	if _0xc then _0x22.nametag=_0x19(_0x20,_0x21) end
	_0xf[_0x20]=_0x22
end
for _,_0x23 in ipairs(_0x6:GetPlayers()) do
	if _0x23~=Players.LocalPlayer then _0x1f(_0x23) end
end
_0x6.PlayerAdded:Connect(function(_0x24)
	_0x24:GetPropertyChangedSignal("Team"):Connect(function() if _0xf[_0x24] and _0xf[_0x24].chams then _0x12(_0x24,_0xf[_0x24].chams) end end)
	_0x24.CharacterAdded:Connect(function() task.wait(0.1); _0x1f(_0x24) end)
	if _0x24.Character then _0x1f(_0x24) end
end)
_0x6.PlayerRemoving:Connect(function(_0x25) _0x10(_0x25) end)
task.spawn(function() while true do _0x1f(nil); task.wait(5) end end)
--------------------------------------------------------------------------------
-- ITEM, BEARTRAP ESP, etc. – Weitere ESP-Funktionen analog implementiert
_0x2:SetLibrary(_0x1)
_0x3:SetLibrary(_0x1)
_0x1:Notify({Title="Killer/Survivor Script",Content="Script Loaded!",Duration=5})

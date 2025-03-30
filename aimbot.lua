local _0x1=loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local _0x2=loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local _0x3=loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local _0x4=game:GetService("Players")
local _0x5=game:GetService("RunService")
local _0x6=game:GetService("UserInputService")
local _0x7=game:GetService("VirtualUser")
local _0x8=game:GetService("Lighting")
local _0x9=game:GetService("Workspace")
local _0xa=_0x4.LocalPlayer
--------------------------------------------------------------------------------
-- Aimbot-Konfiguration
--------------------------------------------------------------------------------
local _0xb=false
local _0xc=100
local _0xd=0.1
local _0xe=true
local _0xf={["H"]="Head",["T"]="UpperTorso",["F"]="LeftFoot"}
local _0x10="Head"
local _0x11=false
--------------------------------------------------------------------------------
-- FOV-Kreis
--------------------------------------------------------------------------------
local _0x12=Drawing.new("Circle")
_0x12.Thickness=1
_0x12.Radius=_0xc
_0x12.Filled=false
_0x12.Visible=true
_0x12.Color=Color3.fromRGB(255,255,0)
_0x12.Position=Vector2.new(_0x9.CurrentCamera.ViewportSize.X/2,_0x9.CurrentCamera.ViewportSize.Y/2)
_0x5.RenderStepped:Connect(function()
	local _0x13=_0x9.CurrentCamera
	_0x12.Position=Vector2.new(_0x13.ViewportSize.X/2,_0x13.ViewportSize.Y/2)
end)
--------------------------------------------------------------------------------
-- Aimbot-Funktionen
--------------------------------------------------------------------------------
local function _0x14(_0x15) return _0x15.Team==_0xa.Team end
local function _0x16(_0x17)
	local _0x18=_0x9.CurrentCamera:WorldToViewportPoint(_0x17)
	return Vector2.new(_0x18.X,_0x18.Y),_0x18.Z>0
end
local function _0x19(_0x1a)
	local _0x1b=Vector2.new(_0x9.CurrentCamera.ViewportSize.X/2,_0x9.CurrentCamera.ViewportSize.Y/2)
	return (_0x1a-_0x1b).Magnitude
end
local function _0x1c()
	local _0x1d,nil=table.unpack({math.huge})
	local _0x1e
	for _,_0x1f in ipairs(_0x4:GetPlayers())do
		if _0x1f~=_0xa and _0x1f.Character and _0x1f.Character:FindFirstChild(_0x10) then
			if (not _0xe or (_0xe and not _0x14(_0x1f))) then
				local _0x20= _0x1f.Character[_0x10]
				local _0x21,onScr= _0x16(_0x20.Position)
				if onScr then
					local _0x22=_0x19(_0x21)
					if _0x22<_0xc and _0x22<_0x1d then
						_0x1d=_0x22
						_0x1e=_0x1f
					end
				end
			end
		end
	end
	return _0x1e
end
local _0x23
local function _0x24()
	if _0x23 then _0x23:Disconnect() end
	_0x23=_0x5.RenderStepped:Connect(function()
		if _0xb then
			if _0x11 and not _0x6:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) then return end
			local _0x25=_0x1c()
			if _0x25 and _0x25.Character and _0x25.Character:FindFirstChild(_0x10) then
				local _0x26=_0x25.Character[_0x10].Position
				local _0x27=_0x9.CurrentCamera
				local _0x28=CFrame.new(_0x27.p,_0x26)
				_0x27.CFrame=_0x27.CFrame:Lerp(_0x28,_0xd)
			end
		end
	end)
end
local function _0x29() _0xb=false if _0x23 then _0x23:Disconnect() _0x23=nil end end
--------------------------------------------------------------------------------
-- Aimbot-Umschaltung (zum Beispiel über einen Hotkey im UI)
--------------------------------------------------------------------------------
-- Zum Aktivieren:
_0xb=true; _0x24()
-- Zum Deaktivieren:
-- _0x29()
--------------------------------------------------------------------------------
-- UI-Bereich (über Fluent, SaveManager, etc.) wird hier initialisiert
_0x2:SetLibrary(_0x1)
_0x3:SetLibrary(_0x1)
-- Weitere UI-spezifische Einstellungen…
_0x1:Notify({Title="Voice Ban Bypasser",Content="Script Loaded!",Duration=5})

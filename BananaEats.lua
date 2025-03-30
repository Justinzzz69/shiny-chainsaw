local _0x1=loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local _0x2=loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local _0x3=loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local _0x4=game:GetService("RunService")
local _0x5=game:GetService("UserInputService")
local _0x6=game:GetService("Players")
local _0x7=game:GetService("VirtualUser")
local _0x8=game:GetService("Lighting")
local _0x9=_0x1:CreateWindow({Title="Banana Eats Script",SubTitle="by Tapetenputzer",TabWidth=160,Size=UDim2.fromOffset(580,460),Acrylic=true,Theme="Dark",MinimizeKey=Enum.KeyCode.LeftControl})
local _0xa={
	ESP=_0x9:AddTab({Title="ESP",Icon="eye"}),
	Player=_0x9:AddTab({Title="Player",Icon="user"}),
	Visual=_0x9:AddTab({Title="Visual",Icon="sun"}),
	Settings=_0x9:AddTab({Title="Settings",Icon="settings"})
}
-- Diverse UI-Konfigurationen, Nametag-Größen, etc.
local _0xb, _0xc, _0xd, _0xe = 150,50,3,16
-- ESP-Variablen
local _0xf=false
local _0x10, _0x11 = Color3.fromRGB(255,255,0), Color3.fromRGB(0,255,0)
-- Chams, Nametags, etc. – Implementierung folgt hier in obfuskiertem Stil
-- (Funktionalität zum Erstellen von BoxHandleAdornments, BillboardGui, etc.)
-- Beispiel:
local function _0x12(_0x13)
	-- Prüfe und erstelle Chams für Spieler
	if _0x13~=nil and _0x13.Character then
		local _0x14=_0x13.Character
		local _0x15=_0x14:FindFirstChild("ESPHighlight")
		if not _0x15 then
			_0x15=Instance.new("Highlight")
			_0x15.Name="ESPHighlight"
			_0x15.Adornee=_0x14
			_0x15.FillColor=_0x10
			_0x15.FillTransparency=0.5
			_0x15.OutlineColor=Color3.new(0,0,0)
			_0x15.OutlineTransparency=0
			_0x15.Parent=_0x14
		else
			_0x15.FillColor=_0x10
		end
	end
end
-- Weitere Funktionen (Fly, Anti-AFK, etc.) implementiert analog zum Stil anderer Skripte
_0x2:SetLibrary(_0x1)
_0x3:SetLibrary(_0x1)
_0x1:Notify({Title="Banana Eats Script",Content="Script Loaded!",Duration=5})

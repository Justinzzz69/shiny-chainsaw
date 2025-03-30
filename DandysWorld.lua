local _0x1=loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local _0x2=loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local _0x3=loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local _0x4=game:GetService("Players")
local _0x5=game:GetService("RunService")
local _0x6=game:GetService("Lighting")
local _0x7=_0x4.LocalPlayer
local _0x8=_0x1:CreateWindow({Title="Dandy's World Script",SubTitle="by Tapetenputzer",TabWidth=160,Size=UDim2.fromOffset(580,460),Acrylic=true,Theme="Dark",MinimizeKey=Enum.KeyCode.LeftControl})
local _0x9={
	ESP=_0x8:AddTab({Title="ESP",Icon="eye"}),
	Movement=_0x8:AddTab({Title="Movement",Icon="run"}),
	Visuals=_0x8:AddTab({Title="Visuals",Icon="sun"}),
	Settings=_0x8:AddTab({Title="Settings",Icon="settings"})
}
--------------------------------------------------------------------------------
-- ESP-Bereich für Monster
local _0xa=false
local _0xb=Color3.fromRGB(255,0,0)
local _0xc=Color3.new(1,1,1)
local function _0xd(_0xe)
	if _0xe and _0xe:IsA("Model") then
		local _0xf=string.lower(_0xe.Name)
		if _0xf:find("monster") then
			if not _0xe:FindFirstChild("MonsterHighlight") then
				local _0x10=Instance.new("Highlight")
				_0x10.Name="MonsterHighlight"
				_0x10.Adornee=_0xe
				_0x10.FillColor=_0xb
				_0x10.OutlineColor=_0xb
				_0x10.Parent=_0xe
			else
				_0xe.MonsterHighlight.FillColor=_0xb
				_0xe.MonsterHighlight.OutlineColor=_0xb
			end
			local _0x11=_0xe:FindFirstChild("Head")
			if _0x11 and not _0x11:FindFirstChild("MonsterNametag") then
				local _0x12=Instance.new("BillboardGui")
				_0x12.Size=UDim2.new(0,100,0,40)
				_0x12.AlwaysOnTop=true
				local _0x13=Instance.new("TextLabel",_0x12)
				_0x13.Size=UDim2.new(1,0,1,0)
				_0x13.BackgroundTransparency=1
				_0x13.Text=_0xe.Name
				_0x13.TextColor3=_0xc
				_0x13.TextScaled=true
				_0x13.Font=Enum.Font.SourceSansBold
				_0x12.Name="MonsterNametag"
				_0x12.Adornee=_0x11
				_0x12.Parent=_0x11
			end
		end
	end
end
local function _0x14()
	while _0xa do
		for _,_0x15 in ipairs(workspace:GetDescendants()) do
			if _0x15:IsA("Model") then _0xd(_0x15) end
		end
		task.wait(2)
	end
end
--------------------------------------------------------------------------------
-- UI-Aufbau und weitere Funktionen (Bewegung, Visuals etc.)
_0x2:SetLibrary(_0x1)
_0x3:SetLibrary(_0x1)
_0x1:Notify({Title="Dandy's World Script",Content="Script Loaded!",Duration=5})

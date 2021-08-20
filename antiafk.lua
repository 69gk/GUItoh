-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local Status = Instance.new("TextLabel")
local disable = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Borda_Direita = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")
local Borda_Esquerda = Instance.new("TextLabel")
local UICorner_5 = Instance.new("UICorner")
local Borda_Abaixo = Instance.new("TextLabel")
local UICorner_6 = Instance.new("UICorner")
local enable = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
main.Position = UDim2.new(0.365137607, 0, 0.275723457, 0)
main.Size = UDim2.new(0, 331, 0, 251)
main.Active = true
main.Draggable = true

UICorner.Parent = main

Title.Name = "Title"
Title.Parent = main
Title.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Title.Position = UDim2.new(0, 0, 0.0039682542, 0)
Title.Size = UDim2.new(0, 331, 0, 27)
Title.Font = Enum.Font.Arcade
Title.Text = "Anti AFK | By GuitohDev"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 22.000

UICorner_2.Parent = Title

Status.Name = "Status"
Status.Parent = main
Status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Status.BackgroundTransparency = 1.000
Status.Position = UDim2.new(0.196374625, 0, 0.250996023, 0)
Status.Size = UDim2.new(0, 200, 0, 50)
Status.Font = Enum.Font.Arcade
Status.Text = "Disabled"
Status.TextColor3 = Color3.fromRGB(255, 0, 0)
Status.TextSize = 36.000

disable.Name = "disable"
disable.Parent = main
disable.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
disable.Position = UDim2.new(0.196374625, 0, 0.637450218, 0)
disable.Size = UDim2.new(0, 200, 0, 50)
disable.Visible = false
disable.Font = Enum.Font.Arcade
disable.Text = "Disable"
disable.TextColor3 = Color3.fromRGB(255, 255, 255)
disable.TextSize = 40.000
disable.MouseButton1Down:connect(function()
	Status.Text = "Disabled"
	Status.TextColor3 = Color3.new(255, 0, 0)
	disable.Visible = false
	enable.Visible = true
end)


UICorner_3.Parent = disable

Borda_Direita.Name = "Borda_Direita"
Borda_Direita.Parent = main
Borda_Direita.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Borda_Direita.Position = UDim2.new(0.954682767, 0, 0.0796654671, 0)
Borda_Direita.Size = UDim2.new(0, 15, 0, 231)
Borda_Direita.Font = Enum.Font.Arcade
Borda_Direita.Text = ""
Borda_Direita.TextColor3 = Color3.fromRGB(255, 255, 255)
Borda_Direita.TextSize = 22.000

UICorner_4.Parent = Borda_Direita

Borda_Esquerda.Name = "Borda_Esquerda"
Borda_Esquerda.Parent = main
Borda_Esquerda.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Borda_Esquerda.Position = UDim2.new(0, 0, 0.0796654671, 0)
Borda_Esquerda.Size = UDim2.new(0, 15, 0, 231)
Borda_Esquerda.Font = Enum.Font.Arcade
Borda_Esquerda.Text = ""
Borda_Esquerda.TextColor3 = Color3.fromRGB(255, 255, 255)
Borda_Esquerda.TextSize = 22.000

UICorner_5.Parent = Borda_Esquerda

Borda_Abaixo.Name = "Borda_Abaixo"
Borda_Abaixo.Parent = main
Borda_Abaixo.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Borda_Abaixo.Position = UDim2.new(0.0211480372, 0, 0.948191345, 0)
Borda_Abaixo.Size = UDim2.new(0, 316, 0, 13)
Borda_Abaixo.Font = Enum.Font.Arcade
Borda_Abaixo.Text = ""
Borda_Abaixo.TextColor3 = Color3.fromRGB(255, 255, 255)
Borda_Abaixo.TextSize = 22.000

UICorner_6.Parent = Borda_Abaixo

enable.Name = "enable"
enable.Parent = main
enable.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
enable.Position = UDim2.new(0.196374625, 0, 0.637450218, 0)
enable.Size = UDim2.new(0, 200, 0, 50)
enable.Font = Enum.Font.Arcade
enable.Text = "Enable"
enable.TextColor3 = Color3.fromRGB(255, 255, 255)
enable.TextSize = 40.000
enable.MouseButton1Down:connect(function()
	Status.Text = "Enabled"
	Status.TextColor3 = Color3.new(0, 1, 0)
	disable.Visible = true
	enable.Visible = false
end)

UICorner_7.Parent = enable

local virtualUser = game:GetService('VirtualUser')
virtualUser:CaptureController()
while true do
	wait()
	virtualUser:SetKeyDown('0x1f')
	wait(2)
	virtualUser:SetKeyUp('0x1f')
end
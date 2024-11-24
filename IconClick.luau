local plrGui = game.Players.LocalPlayer.PlayerGui

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "GoslingHub"
ScreenGui.Parent = plrGui

local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0.05,0,0.09,0)
Frame.Position = UDim2.new(0.094,0,0.094,0)
Frame.BackgroundTransparency = 1

local Draggable = Instance.new("UIDragDetector")
Draggable.Parent = Frame

local UIStroke = Instance.new("UIStroke")
UIStroke.Parent = Frame
UIStroke.Color = Color3.new(0,0,0)
UIStroke.Thickness = 3
UIStroke.Transparency = 0

local ImageButton = Instance.new("ImageButton")
ImageButton.Parent = Frame
ImageButton.Size = UDim2.new(1,0,1,0)
ImageButton.Image = "http://www.roblox.com/asset/?id=14166759132"
ImageButton.Visible = true

local VIM = game:GetService("VirtualInputManager")

ImageButton.Activated:Connect(function()
    VIM:SendKeyEvent(true, Enum.KeyCode.LeftControl, false, nil)
end)

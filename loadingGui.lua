local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local SpawnButton = Instance.new("TextButton")
local GeneratingFrame = Instance.new("Frame")
local GeneratingText = Instance.new("TextLabel")
local ProgressBar = Instance.new("Frame")
local Progress = Instance.new("Frame")
local SuccessText = Instance.new("TextLabel")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0.5, -100, 0.5, -50)
Frame.Size = UDim2.new(0, 200, 0, 100)

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Position = UDim2.new(0.1, 0, 0.2, 0)
TextBox.Size = UDim2.new(0.8, 0, 0.3, 0)
TextBox.PlaceholderText = "Enter Pet Name"

SpawnButton.Parent = Frame
SpawnButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SpawnButton.Position = UDim2.new(0.1, 0, 0.6, 0)
SpawnButton.Size = UDim2.new(0.8, 0, 0.3, 0)
SpawnButton.Text = "Spawn Pet"

GeneratingFrame.Parent = ScreenGui
GeneratingFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
GeneratingFrame.Position = UDim2.new(0.5, -100, 0.5, -25)
GeneratingFrame.Size = UDim2.new(0, 200, 0, 50)
GeneratingFrame.Visible = false

GeneratingText.Parent = GeneratingFrame
GeneratingText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GeneratingText.Size = UDim2.new(1, 0, 0.5, 0)
GeneratingText.Text = "Generating"

ProgressBar.Parent = GeneratingFrame
ProgressBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ProgressBar.Position = UDim2.new(0.1, 0, 0.6, 0)
ProgressBar.Size = UDim2.new(0.8, 0, 0.2, 0)

Progress.Parent = ProgressBar
Progress.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
Progress.Size = UDim2.new(0, 0, 1, 0)

SuccessText.Parent = ScreenGui
SuccessText.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
SuccessText.Position = UDim2.new(0.5, -100, 0.5, -25)
SuccessText.Size = UDim2.new(0, 200, 0, 50)
SuccessText.Text = "Successful generate"
SuccessText.Visible = false

local function spawnPet()
    if TextBox.Text == "" then
        return
    end

    GeneratingFrame.Visible = true
    for i = 0, 100 do
        Progress.Size = UDim2.new(i / 100, 0, 1, 0)
        wait(0.1)
    end
    GeneratingFrame.Visible = false
    SuccessText.Visible = true
end

SpawnButton.MouseButton1Click:Connect(spawnPet)

SuccessText.MouseButton1Click:Connect(function()
    SuccessText.Visible = false
end)

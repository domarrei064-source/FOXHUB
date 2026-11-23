local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "FOXHUB"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local main = Instance.new("Frame")
main.Size = UDim2.fromOffset(400, 280)
main.Position = UDim2.new(0.5, -200, 0.5, -140)
main.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
main.Parent = gui

Instance.new("UICorner", main).CornerRadius =
    UDim.new(0, 12)

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(220, 20, 40)
stroke.Thickness = 2
stroke.Parent = main

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 50)
title.BackgroundColor3 = Color3.fromRGB(35, 10, 10)
title.Text = "🦊 FOXHUB"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextSize = 24
title.Font = Enum.Font.GothamBold
title.Parent = main

local tabs = {
    "Auto Farm",
    "Auto Quest",
    "Fruit Finder",
    "ESP",
    "Raid"
}

for i, name in ipairs(tabs) do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.9, 0, 0, 35)
    button.Position = UDim2.new(0.05, 0, 0, 60 + (i-1)*42)
    button.BackgroundColor3 = Color3.fromRGB(45, 15, 15)
    button.Text = name
    button.TextColor3 = Color3.new(1, 1, 1)
    button.TextSize = 15
    button.Font = Enum.Font.GothamBold
    button.Parent = main

    Instance.new("UICorner", button).CornerRadius =
        UDim.new(0, 7)

    button.MouseButton1Click:Connect(function()
        print("FOXHUB: " .. name)
    end)
end

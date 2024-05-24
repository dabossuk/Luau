local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

local names = {"bosszemaa", "Aavuq"}
local ball = workspace:WaitForChild("CurrentBall"):WaitForChild("Ball")

local function tp(input, gameProcessed)
    if not gameProcessed then
        if input.KeyCode == Enum.KeyCode.F then
           ball.CFrame = Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        end
    end
end

for index, name in names do
    if name == Players.LocalPlayer.Name then
        UserInputService.InputBegan:Connect(tp)
    end
end
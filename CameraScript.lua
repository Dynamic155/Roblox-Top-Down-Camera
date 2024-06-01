-- Options:
local cameraHeight = 25
local cameraOffsetX = 0
local cameraOffsetZ = 0

-- Variables:
local players = game:GetService("Players")
local runService = game:GetService("RunService")
local tweenSerive = game:GetService("TweenService")

local player = players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local camera = game.Workspace.CurrentCamera
camera.CameraType = Enum.CameraType.Scriptable

-- Camera Script:
local function updateCamera()
  local targetPosition = character.PrimaryPart.Position + Vector3.new(cameraOffsetX, cameraHeight, cameraOffsetZ)
  tweenSerive:Create(camera, TweenInfo.new(0.1), {CFrame = CFrame.new(targetPosition, character.PrimaryPart.Position)}):Play()
end

runService.RenderStepped:Connect(updateCamera)

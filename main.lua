local functions = {}

functions.Loadout = function(towerList)
for i, towerName in ipairs(towerList) do
    if i <= 4 then
        local args = {
            [1] = slotNames[i],       -- e.g. "One", "Two", "Three", "Four"
            [2] = towerName           -- e.g. "Tower", "Sniper", "Scout", etc.
        }
        game:GetService("ReplicatedStorage")
            :WaitForChild("Events")
            :WaitForChild("ChangeSlot")
            :FireServer(unpack(args))
    end
end
end
functions.Map = function(Map)
local args = {
    [1] = Map
}

game:GetService("ReplicatedStorage"):WaitForChild("EventFolder"):WaitForChild("Server"):WaitForChild("MapVoted"):FireServer(unpack(args))
task.wait(10)
return 
end
functions.Mode = function(Mode)
local args = {
    [1] = "Easy"
}

game:GetService("ReplicatedStorage"):WaitForChild("EventFolder"):WaitForChild("Server"):WaitForChild("ModeVoted"):FireServer(unpack(args))
task.wait(10)
return
end
functions.Place = function(Tower,CFrame)
if game:GetService("Players").LocalPlayer.Slots.One.Value == Tower then
local args = {
    [1] = Tower,
    [2] = CFrame.new(CFrame),
    [3] = true,
    [4] = false,
    [5] = game:GetService("Players").LocalPlayer:WaitForChild("One")
}

game:GetService("ReplicatedStorage"):WaitForChild("TowerEvents"):WaitForChild("PlaceUnit"):FireServer(unpack(args))
  elseif game:GetService("Players").LocalPlayer.Slots.Two.Value == Tower then
local args = {
    [1] = Tower,
    [2] = CFrame.new(CFrame),
    [3] = true,
    [4] = false,
    [5] = game:GetService("Players").LocalPlayer:WaitForChild("Two")
}

game:GetService("ReplicatedStorage"):WaitForChild("TowerEvents"):WaitForChild("PlaceUnit"):FireServer(unpack(args))
      elseif game:GetService("Players").LocalPlayer.Slots.Three.Value == Tower then
local args = {
    [1] = Tower,
    [2] = CFrame.new(CFrame),
    [3] = true,
    [4] = false,
    [5] = game:GetService("Players").LocalPlayer:WaitForChild("Three")
}

game:GetService("ReplicatedStorage"):WaitForChild("TowerEvents"):WaitForChild("PlaceUnit"):FireServer(unpack(args))
     elseif game:GetService("Players").LocalPlayer.Slots.Four.Value == Tower then
local args = {
    [1] = Tower,
    [2] = CFrame.new(CFrame),
    [3] = true,
    [4] = false,
    [5] = game:GetService("Players").LocalPlayer:WaitForChild("Four")
}

game:GetService("ReplicatedStorage"):WaitForChild("TowerEvents"):WaitForChild("PlaceUnit"):FireServer(unpack(args))
  end
end

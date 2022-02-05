--[[
local module = require(loadstring(game:GetService("HttpService"):GetAsync("https://raw.githubusercontent.com/quantumrealities/monkey_script/main/monkey.lua"))()) --serversided
]]

local InsertService = game:GetService("InsertService")
local monkey = {
}

function monkey:setMonkey(username)
	local player = game.Players:FindFirstChild(username)
	
	if player then
		local character = player.Character
		local humanoid = character:FindFirstChild("Humanoid")
		local sound = Instance.new("Sound")
		
		sound.SoundId = "rbxassetid://7080148387"
		sound.Parent = character
		
		character:FindFirstChild("Shirt").ShirtTemplate = "http://www.roblox.com/asset/?id=7020665648"
		character:FindFirstChild("Pants").PantsTemplate = "http://www.roblox.com/asset/?id=7021073832"
		
		local tail = InsertService:LoadAsset(5618077056):FindFirstChildOfClass("Accessory")
		local hat = InsertService:LoadAsset(13700820):FindFirstChildOfClass("Accessory")
		local backpack = InsertService:LoadAsset(7029916495):FindFirstChildOfClass("Accessory")
		
		humanoid:AddAccessory(tail)
		humanoid:AddAccessory(hat)
		humanoid:AddAccessory(backpack)
		
		if humanoid.RigType == Enum.HumanoidRigType.R6 then
			tail.AttachmentPos = Vector3.new(0, 3.5, -1.5)
			backpack.AttachmentPos = Vector3.new(0.191, 2.35, -1)
		end
		
		player.Chatted:Connect(function()
			sound:Play()
		end)
	end
end

return monkey

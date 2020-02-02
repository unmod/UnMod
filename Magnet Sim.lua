local library = loadstring(game:HttpGet("https://pastebin.com/raw/7Z6TzFnv", true))()
local magnetsim = library:CreateWindow({
  text = "Autofarm"
})

local credits = library:CreateWindow({text='Credits'})
credits:AddLabel("Credits\nUnMod#8682 \n\n")

-- Auto Sell Underneath

_G.AutoSell = false
magnetsim:AddToggle("Auto sell", function(state)
	wait()
    _G.AutoSell = not _G.AutoSell
	wait()
	while _G.AutoSell == true do 
		game:GetService("Workspace").Rings.Sellx2.Transparency = 1
		wait()
		game:GetService("Workspace").Rings.Sellx2.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		wait()
	end
	wait()
end)

-- Auto Full Sell Underneath 

_G.AutoFullSell = false
magnetsim:AddToggle("Auto Full Sell", function(state)
	_G.AutoFullSell = not _G.AutoFullSell
	wait()
	playername = game.Players.LocalPlayer.Name
	wait()
	bagfull = game.workspace.FullBackpack.AltAccFoK
	Wait()
	while _G.AutoFullSell == true do  
		if bagfull.Value == true then 
			game:GetService("Workspace").Rings.Sellx2.Transparency = 1
			wait()
			game:GetService("Workspace").Rings.Sellx2.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			wait()
		end
	end
end)

_G.AutoFarm = false
magnetsim:AddToggle("Auto Farm", function(state)
	_G.AutoFarm = not _G.AutoFarm
	while _G.AutoFarm == true do 
		wait()
		for a, s in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
			current = s
		end 
		username = game.Players.LocalPlayer
		local string_1 = "1";
		local userdata_1 = game:GetService("Workspace")[username.name][current.name];
		local Target = game:GetService("ReplicatedStorage").Events.MagnetEvents.requestGrab;
		Target:FireServer(string_1, userdata_1);
	end
end)

magnetsim:AddToggle("Auto Buy", function(state)

end



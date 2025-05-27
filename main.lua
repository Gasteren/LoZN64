--V10.0.0 - using patch file versions to avoid confusion
-- The new function that allows for the ogg file to play.

local Event_Frame_A = CreateFrame("Frame")
Event_Frame_A:RegisterEvent("PLAYER_LEVEL_UP")
Event_Frame_A:SetScript("OnEvent",
	function(self, event, ...)
		PlaySoundFile("Interface\\Addons\\LoZN64\\LoZN64.ogg", "Master")
	end)

-- This will make it so that the default level up sound gets completed nuked.
local Event_Frame_B = CreateFrame("Frame")
Event_Frame_B:RegisterEvent("ADDON_LOADED")
Event_Frame_B:SetScript("OnEvent",
	function(self, event, ...)
		MuteSoundFile(569593)
	end)

local function OnPlayerResurrected(self, event, reviver)
    if IsInRaid() then
        SendChatMessage("Thanks for rezzing me!", "RAID")
    elseif IsInGroup() then
        SendChatMessage("Thanks for rezzing me!", "PARTY")
    else
        SendChatMessage("Thanks for rezzing me!", "SAY")
    end
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("RESURRECT_REQUEST")
frame:SetScript("OnEvent", OnPlayerResurrected)

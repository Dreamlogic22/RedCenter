--[[--------------------------------------------------------------------

    RedCenter 1.2 (August 8, 2025)

----------------------------------------------------------------------]]

---@type string, table
local _, T = ...

local EP = LibStub("LibElvUIPlugin-1.0")

local function Initialize()
    C_Timer.After(1, function()
        local IsRotateMinimapEnabled = GetCVar("rotateMinimap")
        if IsRotateMinimapEnabled and IsRotateMinimapEnabled == "0" then
            SetCVar("rotateMinimap", 1)
        end
    end)
end

EP:HookInitialize(T, Initialize)
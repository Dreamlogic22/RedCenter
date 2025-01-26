--[[--------------------------------------------------------------------

    RedCenter 1.0 (January 26, 2025)

----------------------------------------------------------------------]]

---@type string, table
local _, T = ...

local EP = LibStub("LibElvUIPlugin-1.0")

local function Initialize()
    C_Timer.After(1, function()
        local IsRotateMinimapEnabled = GetCVar("rotateMinimap")
        if IsRotateMinimapEnabled and IsRotateMinimapEnabled == "0" then
            local Success = SetCVar("rotateMinimap", 1)
            print(Success)
        end
    end)
end

EP:HookInitialize(T, Initialize)
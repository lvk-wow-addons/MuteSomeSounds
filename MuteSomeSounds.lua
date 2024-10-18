MSS = {
    sounds = {
        -- blood elf/demon hunter -- pcdhbloodelfmale
        -- attack
        1306359,
        1306360,
        1306361,
        1306362,
        1306363,
        1306364,
        1306365,
        1306366,
        1306367,
        1306368,
        -- crit
        1306369,
        1306370,
        1306371,
        1306372,
        1306373,
        -- death
        1306374,
        1306375,
        1306376,
        1306377,
        1306378
    }
}

local eventHandler = LVK:EventHandler()
eventHandler.RegisterEvent("ADDON_LOADED", function()
    eventHandler.UnregisterEvent("ADDON_LOADED")
    LVK:AnnounceAddon("MuteSomeSounds")

    for i=1,#MSS.sounds do
        local id = MSS.sounds[i]
        MuteSoundFile(id)
    end
end)
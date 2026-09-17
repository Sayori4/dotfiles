hl.window_rule({
    match = {
        class = "^(awakened-poe-trade)$",
    },
    float = true,
    no_blur = true,
    no_shadow = true,
    no_focus = true,
    border_size = 0,
    pin = true,
})

hl.window_rule({
    match = {
        class = "^(Awakened-poe-trade)$"
    },
    float = true,
    no_blur = true,
    no_shadow = true,
    no_focus = true,
    border_size = 0,
    pin = true,
})

hl.window_rule({
    match = {
        class = "^(Awakened PoE Trade)$"
    },
    float = true,
    no_blur = true,
    no_shadow = true,
    no_focus = true,
    border_size = 0,
    pin = true,
})

-- hl.bind("CTRL + D", hl.dsp.send_shortcut({ mods = "CTRL", key = "D", window = "class:^(awakened-poe-trade)$" }))
hl.bind("CTRL + ALT + D",
    hl.dsp.send_shortcut({ mods = "CTRL + ALT", key = "D", window = "class:^(awakened-poe-trade)$" }))
hl.bind("SHIFT + SPACE", hl.dsp.send_shortcut({ mods = "SHIFT", key = "SPACE", window = "class:^(awakened-poe-trade)$" }))

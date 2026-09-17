local mainMod = "SUPER"

--  Basic Stuff
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd("alacritty"))
hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("thunar"))
hl.bind(mainMod .. " + SPACE", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd("~/.config/hypr/wofi/bin/launcher"))
hl.bind("PRINT", hl.dsp.exec_cmd("hyprshot -m region --clipboard-only -z"))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind(mainMod .. " + X", hl.dsp.exec_cmd("~/.config/hypr/bin/wlogout"))

--  Color Picker
hl.bind("ALT + P", hl.dsp.exec_cmd("hyprpicker -a -n -r"))

--  Volume Control
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("~/.config/hypr/bin/volchange inc"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("~/.config/hypr/bin/volchange dec"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("~/.config/hypr/bin/volchange mute"), { locked = true, repeating = true })

--  Music App Control
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("~/.config/hypr/bin/muscontrol prev"), { locked = true, repeating = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("~/.config/hypr/bin/muscontrol next"), { locked = true, repeating = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("~/.config/hypr/bin/muscontrol play"), { locked = true, repeating = true })
hl.bind("XF86AudioStop", hl.dsp.exec_cmd("~/.config/hypr/bin/muscontrol stop"), { locked = true, repeating = true })

--  Move Focus With mainMod + Arrow Keys
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

--  Switch Workspaces With mainMod + [0-9]
for i = 1, 10 do
    local key = i % 10
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

--  Scroll Through Existing Workspaces With mainMod + Scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

--  Move/Resize Windows With mainMod + LMB/RMB And Dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

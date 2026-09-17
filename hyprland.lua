require("configs.execs")
require("configs.keybinds")
require("configs.monitors")
require("configs.workspaces")
require("configs.poe")

--  Env Variables
hl.env("XCURSOR_SIZE", "24")
hl.env("WLR_DRM_NO_ATOMIC", "1")
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

--  QT Fix
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("QT_QPA_PLATFORMTHGEME", "qt5ct")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")
hl.env("QT_STYLE_OVERRIDE", "kvantum")

hl.config({
    input = {
        kb_layout = "pl, ru",
        kb_variant = ", phonetic",
        kb_model = "",
        kb_options = "grp:sclk_toggle",
        kb_rules = "",

        follow_mouse = 1,

        touchpad = {
            natural_scroll = false,
        },

        sensitivity = -0.2,
        accel_profile = "flat",

    },
    general = {
        gaps_in = 4,
        gaps_out = 12,

        border_size = 2,

        col = {
            active_border = "rgba(cba6f7ff)",
            inactive_border = "rgba(585b70aa)",
        },
        allow_tearing = true,

        layout = "dwindle",
    },
    decoration = {
        rounding         = 5,
        rounding_power   = 2,

        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        shadow           = {
            enabled = true,
            range = 4,
            render_power = 3,
            color = "rgba(1a1a1aee)"
        },

        blur             = {
            enabled = true,
            size = 4,
            passes = 3,
        }
    },

    animations = {
        enabled = true,
    }
})

hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1 } } })
hl.curve("quick", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })

-- Default springs
hl.curve("easy", { type = "spring", mass = 1, stiffness = 500, dampening = 35 })

hl.animation({ leaf = "global", enabled = true, speed = 3, bezier = "quick" })
hl.animation({ leaf = "windows", enabled = true, speed = 3, spring = "easy", style = "slide" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 5, bezier = "quick", style = "slide" })
hl.animation({ leaf = "specialWorkspaceIn", enabled = true, speed = 2, bezier = "quick", style = "slide top" })
hl.animation({ leaf = "specialWorkspaceOut", enabled = true, speed = 2, bezier = "quick", style = "slide bottom" })

hl.config({
    dwindle = {
        preserve_split = true,
    },
    master = {
        new_status = "master",
    },
    scrolling = {
        fullscreen_on_one_column = true,
    },
})

hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name           = "suppress-maximize-events",
    match          = { class = ".*" },

    suppress_event = "maximize",
})

hl.window_rule({
    name = "fix-rename-dialog-thunar",
    match = {
        class = "^(thunar)$",
        title = "^(Rename).+$",
    },
    float = true,
})

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name     = "fix-xwayland-drags",
    match    = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

hl.window_rule({
    match = {
        class = "^(cs2)$"
    },
    immediate = true,
})

hl.window_rule({
    match = {
        class = "^(osu!)$"
    },
    immediate = true,
})

hl.window_rule({
    match = {
        class = "jetbrains-.*",
        title = "splash",
    },
    float = true,
    center = true,
    no_focus = true,
})

hl.window_rule({
    match = {
        class = "jetbrains-.*",
        title = "win.*",
    },
    float = true,
    no_focus = true,
})

hl.window_rule({
    match = {
        class = "jetbrains-.*",
    },
    float = true,
    no_blur = true,
    no_initial_focus = true,
    opacity = "1.0 override 1.0 override 1.0",
})

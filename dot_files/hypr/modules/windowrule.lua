hl.window_rule({
    name = "suppress-maximize",
    suppress_event = "maximize",
    match = { class = ".*" },
})

hl.window_rule({
    name = "pip-float",
    float = true,
    match = { title = "^(Picture(-|\\s)in(-|\\s)(p|P)icture)$" },
})

hl.window_rule({
    name = "pip-pin",
    pin = true,
    match = { title = "^(Picture(-|\\s)in(-|\\s)(p|P)icture)$" },
})

hl.window_rule({
    name = "pavucontrol",
    float = true,
    size = "50% 50%",
    center = true,
    match = { class = "org.pulseaudio.pavucontrol" },
})


hl.window_rule({
    name = "zen-browser",
    match = { class = "zen", title = "^Zen Browser$" },
})


hl.window_rule({
    name = "feh-float",
    float = true,
    match = { class = "(feh)", title = "^(feh)(.*)$" },
})

hl.window_rule({
    name = "feh-center",
    center = true,
    match = { float = true, class = "(feh)", title = "^(feh:)(.*)$" },
})

hl.window_rule({
    name = "zed-opacity-child",
    opacity = "0.95 0.95",
    match = { class = "^(dev.zed.Zed-.*)$" },
})

hl.window_rule({
    name = "zed-opacity-main",
    opacity = "0.9 0.9",
    match = { class = "^(dev.zed.Zed)$" },
})

hl.window_rule({
    name = "jetbrains-opacity",
    opacity = "0.98 0.98",
    match = { class = "^(jetbrains-.*)$" },
})

hl.window_rule({
    name = "jetbrains-splash",
    float = true,
    center = true,
    match = { class = "^(jetbrains-.*)", title = "^splash$" },
})

hl.window_rule({
    name = "jetbrains-popups",
    float = true,
    move = "30% 30%",
    size = "40% 40%",
    match = { class = "^(jetbrains-(?!toolbox).*)", title = "^(?!win.*)" },
})

hl.window_rule({
    name = "goland",
    opacity = "0.9 0.9",
    match = { class = "jetbrains-goland" },
})

hl.window_rule({
    name = "spotify-opacity",
    opacity = "0.88 0.88",
    match = { class = "^([Ss]potify)$" },
})

hl.window_rule({
    name = "steam-float",
    float = true,
    workspace = "3",
    match = { class = "^(steam)$" },
})

hl.window_rule({
    name = "steam-friends",
    tile = true,
    size = "30% 100%",
    match = { class = "^(steam)$", title = "Friends List" },
})

hl.window_rule({
    name = "steam-main",
    tile = true,
    size = "70% 100%",
    match = { class = "^(steam)$", title = "Steam" },
})

hl.window_rule({
    name = "steam-empty-title",
    stay_focused = true,
    min_size = "1 1",
    match = { title = "^()$", class = "^(steam)$" },
})

hl.window_rule({
    name = "steam-friends-size",
    min_size = "280 635",
    match = { class = "^(steam)$", title = "^(Friends.*)$" },
})

hl.window_rule({
    name = "gamescope",
    fullscreen = true,
    match = { class = "^(gamescope)$" },
})

hl.window_rule({
    name = "steam-game",
    fullscreen = true,
    opacity = "1.0 override",
    match = { class = "^(steam_app_.*)$" },
})

hl.window_rule({
    name = "steam-user-selector",
    float = true,
    size = "450px 350px",
    center = true,
    match = { 
        class = "^(steam)$",
        title = "Sign in to Steam"
    },
})

hl.window_rule({
    name = "fullscreen-opacity",
    opacity = "1.0 override",
    match = { fullscreen = true },
})

hl.window_rule({
    name = "steam-special-game",
    fullscreen = true,
    match = { class = "^(steam_app_238960)$" },
})

hl.window_rule({
    name = "game-immediate",
    immediate = true,
    match = { content = "game" },
})

hl.window_rule({
    name = "game-content",
    content = "game",
    match = { initial_class = "^(steam_app_\\d+)$" },
})

hl.window_rule({
    name = "opencode-float",
    float = true,
    center = true,
    size = "70% 80%",
    workspace = "special:opencode",
    match = { initial_title = "^OpenCode Float$" },
})

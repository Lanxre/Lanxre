local MAIN_MOD = "SUPER"

local TERMINAL = "kitty"
local FILE_MANAGER = "thunar"
local MENU = "wofi --show drun"
local BROWSER = "google-chrome-stable"

hl.bind(MAIN_MOD .. " + Q", hl.dsp.exec_cmd(TERMINAL))
hl.bind(MAIN_MOD .. " + C", hl.dsp.window.close())
hl.bind(MAIN_MOD .. " + M", hl.dsp.exit())
hl.bind(MAIN_MOD .. " + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind(MAIN_MOD .. " + B", hl.dsp.exec_cmd(BROWSER))
hl.bind(MAIN_MOD .. " + E", hl.dsp.exec_cmd(FILE_MANAGER))
hl.bind(MAIN_MOD .. " + D", hl.dsp.exec_cmd(MENU))


hl.bind(MAIN_MOD .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(MAIN_MOD .. " + SHIFT + R", hl.dsp.exec_cmd("vicinae toggle"))
hl.bind(MAIN_MOD .. " + J", hl.dsp.layout("togglesplit"))
hl.bind(MAIN_MOD .. " + F", hl.dsp.window.fullscreen())

hl.bind(MAIN_MOD .. " + PRINT", hl.dsp.exec_cmd("hyprshot -m window -s -o ~/Pictures/screenshots --freeze"))
hl.bind("PRINT", hl.dsp.exec_cmd("hyprshot -m output -s -o ~/Pictures/screenshots"))
hl.bind("SHIFT + PRINT", hl.dsp.exec_cmd("hyprshot -m region -s -o ~/Pictures/screenshots --freeze"))

hl.bind(MAIN_MOD .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(MAIN_MOD .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(MAIN_MOD .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(MAIN_MOD .. " + down", hl.dsp.focus({ direction = "down" }))

for i = 1, 9 do
    hl.bind(MAIN_MOD .. " + " .. i, hl.dsp.focus({ workspace = tostring(i) }))
end
hl.bind(MAIN_MOD .. " + 0", hl.dsp.focus({ workspace = "10" }))

hl.bind(MAIN_MOD .. " + SHIFT + left", hl.dsp.window.move({ direction = "left" }))
hl.bind(MAIN_MOD .. " + SHIFT + right", hl.dsp.window.move({ direction = "right" }))
hl.bind(MAIN_MOD .. " + SHIFT + up", hl.dsp.window.move({ direction = "up" }))
hl.bind(MAIN_MOD .. " + SHIFT + down", hl.dsp.window.move({ direction = "down" }))

for i = 1, 9 do
    hl.bind(MAIN_MOD .. " + SHIFT + " .. i, hl.dsp.window.move({ workspace = tostring(i) }))
end

hl.bind(MAIN_MOD .. " + SHIFT + 0", hl.dsp.window.move({ workspace = "10" }))

hl.bind(MAIN_MOD .. " + S", hl.dsp.focus({ workspace = "special:magic", toggle = true }))
hl.bind(MAIN_MOD .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))
hl.bind(MAIN_MOD .. " + SHIFT + N", hl.dsp.window.move({ workspace = "empty" }))

hl.bind(MAIN_MOD .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(MAIN_MOD .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

hl.bind(MAIN_MOD .. " + period", hl.dsp.focus({ direction = "right" }))
hl.bind(MAIN_MOD .. " + comma", hl.dsp.focus({ direction = "left" }))

hl.bind(MAIN_MOD .. " + SHIFT + period", hl.dsp.window.swap({ direction = "right" }))
hl.bind(MAIN_MOD .. " + SHIFT + comma", hl.dsp.window.swap({ direction = "left" }))

hl.bind("F9", hl.dsp.pass({ window = "class:^(discord)$" }))

hl.bind(MAIN_MOD .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(MAIN_MOD .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
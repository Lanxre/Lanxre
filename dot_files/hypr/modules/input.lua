hl.config({
    input = {
        kb_layout = "us,ru",
        kb_options = "grp:win_space_toggle",
        kb_variant = "",
        kb_model = "",
        kb_rules = "",
        follow_mouse = 1,
        touchpad = {
            natural_scroll = false,
        },
        sensitivity = 0,
    },
})

hl.gesture({
  fingers = 3,
  direction = "horizontal",
  action = "workspace",
})

hl.device({
  name = "logitech-g102-lightsync-gaming-mouse",

  sensitivity = 0.4,
  accel_profile = "flat",
})
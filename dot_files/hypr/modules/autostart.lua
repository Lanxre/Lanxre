hl.on("hyprland.start", function()
  hl.exec_cmd("waybar")
  hl.exec_cmd("hyprpaper")
  hl.exec_cmd('hyprctl setcursor "Future-dark-cursors" 20')
  
  hl.exec_cmd('dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP DISPLAY')
  
  hl.exec_cmd('/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh')
  
  hl.exec_cmd('vicinae server')
end)
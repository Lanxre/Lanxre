hl.monitor({
  output = "DP-2",
  mode = "2560x1440@180",
  position = "1920x0",
  scale = 1,
})

hl.monitor({
  output = "HDMI-A-1",
  mode = "1920x1080@74.97",
  position = "0x0",
  scale = 1,
})

for i = 1, 5 do
  hl.workspace_rule({
    workspace = tostring(i),
    monitor = "DP-2",
    default = (i == 1),
  })
end

for i = 6, 10 do
  hl.workspace_rule({
    workspace = tostring(i),
    monitor = "HDMI-A-1",
    layout = (i == 6) and "scrolling" or nil,
  })
end
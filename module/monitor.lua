-- MONITORS

-- Desktop
-- LG Ultragear
hl.monitor({ output = "DP-1", mode = "2560x1440@120", position = "0x0", scale = "1", vrr = 1 })
-- Asus ROG PG279Q
hl.monitor({ output = "DP-2", mode = "2560x1440@120", position = "-2560x0", scale = "1" })

-- Laptop
-- Internal display ThinkPad T15 Gen 1
hl.monitor({ output = "desc:Lenovo Group Limited 0x40BA", mode = "1920x1080@60.02Hz", position = "auto", scale = "1" })
-- Iiyama monitor
hl.monitor({
	output = "desc:Iiyama North America PL2730Q 1153802921770",
	mode = "2560x1440@74.92Hz",
	position = "auto",
	scale = "1",
})

-- Catch all
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = "auto" })

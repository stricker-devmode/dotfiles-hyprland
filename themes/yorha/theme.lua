-- THEME CONFIGURATION

-- Wallpaper
local p = require("config.programs")
local wallpaper = os.getenv("HOME") .. "/.config/hypr/themes/yorha/wallpaper.png"
hl.exec_cmd(p.wallpaper.run .. " " .. wallpaper)

-- Palette
local palette = {
	black_n = "rgb(212121)", --  #212121
	black_l = "rgb(625f50)", --  #625f50
	red_n = "rgb(ff3333)", --  #ff3333
	red_l = "rgb(f76e6e)", --  #f76e6e
	green_n = "rgb(33ff85)", --  #33ff85
	green_l = "rgb(86f9b4)", --  #86f9b4
	yellow_n = "rgb(ffee33)", --  #ffee33
	yellow_l = "rgb(f9ef86)", --  #f9ef86
	blue_n = "rgb(808aff)", --  #808aff
	blue_l = "rgb(b6bcfb)", --  #b6bcfb
	magenta_n = "rgb(f53df5)", --  #f53df5
	magenta_l = "rgb(f5a3f5)", --  #f5a3f5
	cyan_n = "rgb(6afbfb)", --  #6afbfb
	cyan_l = "rgb(baf7f7)", --  #baf7f7
	white_n = "rgb(d4d4c4)", --  #d4d4c4
	white_l = "rgb(f3f3f2)", --  #f3f3f2

	-- aux colours
	foreground = "rgb(dcd8c0)", --  #dcd8c0
	background = "rgb(171412)", --  #171412
	foreground_inv = "rgb(2e2824)", --  #2e2824
	background_inv = "rgb(f1efe5)", --  #f1efe5
}

-- static config
hl.config({
	general = {
		gaps_in = 5,
		gaps_out = 5,
		col = {
			active_border = palette.foreground,
			inactive_border = palette.black_l,
		},
		border_size = 2,
		resize_on_border = false,
		allow_tearing = false,
		layout = "dwindle",
	},
	decoration = {
		rounding = 1,
		rounding_power = 5.0,
		active_opacity = 1.0,
		inactive_opacity = 1.0,
		shadow = {
			enabled = false,
		},
		blur = {
			enabled = true,
			size = 5,
			passes = 2,
			vibrancy = 0.1,
		},
	},
	animations = {
		enabled = true,
	},
})

-- animations
hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1.0 }, { 0.32, 1.0 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1.0 } } })
hl.curve("linear", { type = "bezier", points = { { 0.0, 0.0 }, { 1.0, 1.0 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1.0 } } })
hl.curve("quick", { type = "bezier", points = { { 0.15, 0.0 }, { 0.1, 1.0 } } })

hl.animation({ leaf = "global", enabled = true, speed = 10.0, bezier = "default" })
hl.animation({ leaf = "border", enabled = true, speed = 5.0, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows", enabled = true, speed = 3.0, bezier = "easeOutQuint", style = "popin 50%" })
hl.animation({ leaf = "fade", enabled = true, speed = 3.0, bezier = "quick" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 3.0, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 0.5, bezier = "almostLinear" })
hl.animation({ leaf = "layers", enabled = true, speed = 4.0, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4.0, bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.5, bezier = "linear", style = "fade" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 1.75, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.5, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 1.5, bezier = "almostLinear", style = "slidefade 10%" })
hl.animation({ leaf = "specialWorkspaceIn", enabled = true, speed = 1.75, bezier = "almostLinear", style = "slidevert" })
hl.animation({ leaf = "specialWorkspaceOut", enabled = true, speed = 3.0, bezier = "linear", style = "slidefadevert -10%" })

-- WINDOWRULES

-- Ingore maximize events from apps
hl.window_rule({
	name = "no-maximize",
	match = {
		class = ".*",
	},
	suppress_event = "maximize",
})

-- XWayland dragging fix
hl.window_rule({
	name = "xwayland-drag",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},
	no_focus = true,
})

-- Kitty menus
hl.window_rule({
	name = "kitty-floater",
	match = {
		class = "(kitty-floater)",
	},
	float = true,
	center = true,
	size = {
		"(monitor_w*0.5)",
		"(monitor_h*0.5)",
	},
})

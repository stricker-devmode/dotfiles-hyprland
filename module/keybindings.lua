local k = require("config.keys")
local p = require("config.programs")

-- PROGRAM SHORTCUTS
-- Terminal
hl.bind(k.mod.main .. " + Return", hl.dsp.exec_cmd(p.terminal.run))
-- Run dialog
hl.bind(k.mod.main .. " + SPACE", hl.dsp.exec_cmd(p.dialog.run))
-- TUI filebrowser
hl.bind(k.mod.main .. " + B", hl.dsp.exec_cmd(p.filebrowser.tui.run))
-- GUI filebrowser
hl.bind(k.mod.main .. " + " .. k.mod.sup .. " + B", hl.dsp.exec_cmd(p.filebrowser.gui.run))
-- Screenshot
hl.bind(k.mod.main .. " + " .. k.mod.sup .. " + S", hl.dsp.exec_cmd(p.screenshot.run))

-- META CONTROLS
-- Close active window
hl.bind(k.mod.main .. " + Q", hl.dsp.window.close())
-- Exit Hyprland
hl.bind(k.mod.main .. " + " .. k.mod.sup .. " + Q", hl.dsp.exit())
-- Toggle window floating
hl.bind(k.mod.main .. " + TAB", hl.dsp.window.float({ action = "toggle" }))
-- Toggle split direction in dwindle
hl.bind(k.mod.main .. " + S", hl.dsp.layout("togglesplit"))

-- WINDOWS & WORKSPACES
-- Maximise the current window
hl.bind(k.mod.main .. " + M", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }))

-- Move window focus
hl.bind(k.mod.main .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(k.mod.main .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(k.mod.main .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(k.mod.main .. " + down", hl.dsp.focus({ direction = "down" }))

-- Move window relative
hl.bind(k.mod.main .. " + " .. k.mod.sup .. " + left", hl.dsp.window.move({ direction = "left" }))
hl.bind(k.mod.main .. " + " .. k.mod.sup .. " + right", hl.dsp.window.move({ direction = "right" }))
hl.bind(k.mod.main .. " + " .. k.mod.sup .. " + up", hl.dsp.window.move({ direction = "up" }))
hl.bind(k.mod.main .. " + " .. k.mod.sup .. " + down", hl.dsp.window.move({ direction = "down" }))

-- Workspace actions
for i = 1, 10 do
	local key = i % 10
	-- number key 0-9
	-- -- focus workspace
	hl.bind(k.mod.main .. " + " .. key, hl.dsp.focus({ workspace = i }))
	-- -- move active window to workspace
	hl.bind(k.mod.main .. " + " .. k.mod.sup .. " + " .. key, hl.dsp.window.move({ workspace = i, follow = true }))
	-- -- move active window to workspace silently
	hl.bind(
		k.mod.main .. " + " .. k.mod.sup .. " + " .. k.mod.aux .. " + " .. key,
		hl.dsp.window.move({ workspace = i, follow = false })
	)
	-- numpad key 0-9
	-- -- focus workspace
	hl.bind(k.mod.main .. " + " .. k.special["kp" .. key], hl.dsp.focus({ workspace = i }))
	-- -- move active window to workspace
	hl.bind(
		k.mod.main .. " + " .. k.mod.sup .. " + " .. k.special["kp" .. key],
		hl.dsp.window.move({ workspace = i, follow = true })
	)
	-- -- move active window to workspace silently
	hl.bind(
		k.mod.main .. " + " .. k.mod.sup .. " + " .. k.mod.aux .. " + " .. k.special["kp" .. key],
		hl.dsp.window.move({ workspace = i, follow = false })
	)
end

-- Special workspaces
-- -- scratchpad
hl.bind(k.mod.main .. " + minus", hl.dsp.workspace.toggle_special("scratch"))
hl.bind(
	k.mod.main .. " + " .. k.mod.sup .. " + minus",
	hl.dsp.window.move({ workspace = "special:scratch", follow = true })
)
hl.bind(
	k.mod.main .. " + " .. k.mod.sup .. " + " .. k.mod.aux .. " + minus",
	hl.dsp.window.move({ workspace = "special:scratch", follow = false })
)
hl.bind(k.mod.main .. " + " .. k.special.kpMin, hl.dsp.workspace.toggle_special("scratch"))
hl.bind(
	k.mod.main .. " + " .. k.mod.sup .. " + " .. k.special.kpMin,
	hl.dsp.window.move({ workspace = "special:scratch", follow = true })
)
hl.bind(
	k.mod.main .. " + " .. k.mod.sup .. " + " .. k.mod.aux .. " + " .. k.special.kpMin,
	hl.dsp.window.move({ workspace = "special:scratch", follow = false })
)

-- -- G1-6 with F13-18
for i = 1, 6 do
	local key = i + 12
	-- focus workspace
	hl.bind(k.mod.main .. " + " .. k.special["f" .. key], hl.dsp.workspace.toggle_special("G" .. i))
	-- move active window to workspace
	hl.bind(
		k.mod.main .. " + " .. k.mod.sup .. " + " .. k.special["f" .. key],
		hl.dsp.window.move({ workspace = "special:G" .. i, follow = true })
	)
	-- move active window to workspace silently
	hl.bind(
		k.mod.main .. " + " .. k.mod.sup .. " + " .. k.mod.aux .. " + " .. k.special["f" .. key],
		hl.dsp.window.move({ workspace = "special:G" .. i, follow = false })
	)
end

-- Previous workspace
hl.bind(k.mod.main .. " + period", hl.dsp.focus({ workspace = "previous" }))
hl.bind(k.mod.main .. " + " .. k.mod.sup .. " + period", hl.dsp.window.move({ workspace = "previous", follow = true }))
hl.bind(
	k.mod.main .. " + " .. k.mod.sup .. " + " .. k.mod.aux .. " + period",
	hl.dsp.window.move({ workspace = "previous", follow = false })
)
hl.bind(k.mod.main .. " + " .. k.special.kpSep, hl.dsp.focus({ workspace = "previous" }))
hl.bind(
	k.mod.main .. " + " .. k.mod.sup .. " + " .. k.special.kpSep,
	hl.dsp.window.move({ workspace = "previous", follow = true })
)
hl.bind(
	k.mod.main .. " + " .. k.mod.sup .. " + " .. k.mod.aux .. " + " .. k.special.kpSep,
	hl.dsp.window.move({ workspace = "previous", follow = false })
)

-- Scroll thorugh workspaces
hl.bind(k.mod.main .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(k.mod.main .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with the mouse
hl.bind(k.mod.main .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(k.mod.main .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Volume controls
hl.bind(k.special.mediaVolUp, hl.dsp.exec_cmd("wpctl set-volume -l 1.0 @DEFAULT_SINK@ 1%+"))
hl.bind(k.special.mediaVolDown, hl.dsp.exec_cmd("wpctl set-volume -l 1.0 @DEFAULT_SINK@ 1%-"))
hl.bind(k.mod.sup .. " + " .. k.special.mediaVolUp, hl.dsp.exec_cmd("wpctl set-volume -l 1.0 @DEFAULT_SINK@ 5%+"))
hl.bind(k.mod.sup .. " + " .. k.special.mediaVolDown, hl.dsp.exec_cmd("wpctl set-volume -l 1.0 @DEFAULT_SINK@ 5%-"))
hl.bind(k.special.mediaMute, hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_SINK@ toggle"))

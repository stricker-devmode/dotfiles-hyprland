-- Autostart
local p = require("config.programs")
-- run once
hl.on("hyprland.start", function()
	hl.exec_cmd(p.bar.run)
	hl.exec_cmd(p.wallpaper.daemon)
	hl.exec_cmd(p.utility.rgb.run)
end)
-- run on restart/reload
hl.exec_cmd(p.utility.keyboard.run)

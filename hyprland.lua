-- Entrypoint

-- load environment first
require("module.environment")

-- configuration
require("module.autostart")
require("module.devices")
require("module.input")
require("module.keybindings")
require("module.layout")
require("module.monitor")
require("module.windowrules")
require("module.workspaces")

-- theme
require("themes.yorha.theme")

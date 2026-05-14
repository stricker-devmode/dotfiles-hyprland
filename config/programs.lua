-- Common program definitions

-- your terminal should be the first thing
-- defined as it is often as dependency!
local terminal = {
    run = "kitty",
}
-- run dialog
local dialog = {
    run = "rofi -show drun",
}
-- filebrowsers, gui and tui
local filebrowser = {
    gui = {
        run = "thunar",
        daemon = "thunar --daemon",
    },
    tui = {
        run = terminal.run .. " yazi",
    }
}
-- wallpaper daemon
local wallpaper = {
    run = "awww img --transition-type=none",
    daemon = "awww-daemon",
}
-- bar
local bar = {
    run = "waybar",
}
-- screenshot utility
local screenshot = {
    run = "slurp | grim -g - - | satty -f - -o ~/Pictures/capture_%F_%T.png --action-on-enter save-to-file"
}
-- utility programs (keyboard configuration, rgb, etc.)
local utility = {
    keyboard = {
        run = "ckb-next --background",
    },
    rgb = {
        run = "openrgb --gui --startminimized --profile ~/.config/OpenRGB/Default.orp",
    }
}

-- export your definitions
return {
    terminal = terminal,
    dialog = dialog,
    filebrowser = filebrowser,
    wallpaper = wallpaper,
    bar = bar,
    screenshot = screenshot,
    utility = utility,
}

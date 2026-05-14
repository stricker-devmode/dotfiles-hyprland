-- KEYBINDING VARIABLES
--
-- Define any convenience variables for different keybinds here.
-- These are later used during definition of your actual keybindings.
return {
    mod = {
        -- main modifier key (default: SUPER)
        -- used by all hyprland keybindings not bound to explicit function keys
        main = "SUPER",
        -- supporting modifier key (default: SHIFT)
        -- used for foreground actions and as a step modifier i.e. +1 normally & +5 with mod1
        sup = "SHIFT",
        -- auxilliary modifier key (default: CTRL)
        -- used to execute mod1 bidings silently, i.e. don't follow movetoworkspace calls
        aux = "CTRL",
        -- alternativ modifier (default: ALT)
        -- currently unused but I know someone will want 4 modifiers at some point
        alt = "ALT",
    },
    -- special and obnoxious key variations
    special = {
        -- funny function keys :)
        f13 = "XF86Tools",
        f14 = "XF86Launch5",
        f15 = "XF86Launch6",
        f16 = "XF86Launch7",
        f17 = "XF86Launch8",
        f18 = "XF86Launch9",
        -- numpad keys
        kp0 = "KP_Insert",
        kp1 = "KP_End",
        kp2 = "KP_Down",
        kp3 = "KP_Next",
        kp4 = "KP_Left",
        kp5 = "KP_Begin",
        kp6 = "KP_Right",
        kp7 = "KP_Home",
        kp8 = "KP_Up",
        kp9 = "KP_Prior",
        kpAdd = "KP_Add",
        kpDiv = "KP_Divide",
        kpEnt = "KP_Enter",
        kpMin = "KP_Subtract",
        kpMul = "KP_Multiply",
        kpSep = "KP_Separator",
        -- common multimedia keys
        mediaMute = "XF86AudioMute",
        mediaVolUp = "XF86AudioRaiseVolume",
        mediaVolDown = "XF86AudioLowerVolume",
        mediaStop = "XF86AudioStop",
        mediaPrev = "XF86AudioPrev",
        mediaPlay = "XF86AudioPlay",
        mediaNext = "XF86AudioNext",
    }
}

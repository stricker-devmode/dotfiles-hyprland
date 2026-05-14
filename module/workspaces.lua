-- WORKSPACE RULES

-- monitor 1
hl.workspace_rule({ workspace = "1", persistent = true, monitor = "DP-1", default = true })
hl.workspace_rule({ workspace = "2", persistent = true, monitor = "DP-1" })
hl.workspace_rule({ workspace = "3", persistent = true, monitor = "DP-1" })
-- monitor 2
hl.workspace_rule({ workspace = "4", persistent = true, monitor = "DP-2", default = true })
hl.workspace_rule({ workspace = "5", persistent = true, monitor = "DP-2" })
hl.workspace_rule({ workspace = "6", persistent = true, monitor = "DP-2" })

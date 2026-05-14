local envvars = require("config.env")

for key, value in pairs(envvars) do
    hl.env(key,value)
end

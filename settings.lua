--[[
PLAN

to access:
--in data stage : data.lua:
settings.startup["settingname"].value

is different in control stage



turn on/off in general
angels-casting and angels-smelting get option of Scientific or English


]]




data:extend({ { name = 'cb-sib-main', type = 'bool-setting', setting_type = 'startup', default_value = true, order = '01' } })

data:extend({ { name = 'cb-sib-Englishmetals', type = 'bool-setting', setting_type = 'startup', default_value = true, order = '01' } })

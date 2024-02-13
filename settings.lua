--[[
PLAN

to access:
--in data stage : data.lua:
settings.startup["settingname"].value

is different in control stage



turn on/off in general
angels-casting and angels-smelting get option of Scientific or English


]]



data:extend({
    -- { type = 'string-setting', name = 'cb-sib-setting-do-problems',    setting_type = 'startup', default_value = 'only-working',           allowed_values = { 'only-working', 'with-problems' },                   order = 'a' },

    { type = 'string-setting', name = 'cb-sib-setting-aliens',         setting_type = 'startup', default_value = 'aliens-set-1',          allowed_values = { 'none', 'aliens-set-1' } },
    { type = 'string-setting', name = 'cb-sib-setting-angelsores',     setting_type = 'startup', default_value = 'angelsores-set-names',  allowed_values = { 'none', 'angelsores-set-names' } },
    { type = 'string-setting', name = 'cb-sib-setting-artifacts',      setting_type = 'startup', default_value = 'artifacts-set-numbers', allowed_values = { 'none', 'artifacts-set-colors', 'artifacts-set-numbers' } },
    { type = 'string-setting', name = 'cb-sib-setting-bioprocessing',  setting_type = 'startup', default_value = 'bioprocessing-set-1',   allowed_values = { 'none', 'bioprocessing-set-1' } },
    { type = 'string-setting', name = 'cb-sib-setting-combat',         setting_type = 'startup', default_value = 'combat-set-1',          allowed_values = { 'none', 'combat-set-1' } },
    { type = 'string-setting', name = 'cb-sib-setting-gems',           setting_type = 'startup', default_value = 'gems-set-1',            allowed_values = { 'none', 'gems-set-1' } },
    { type = 'string-setting', name = 'cb-sib-setting-intermediates',  setting_type = 'startup', default_value = 'intermediates-set-1',   allowed_values = { 'none', 'intermediates-set-1' } },
    { type = 'string-setting', name = 'cb-sib-setting-logchests',      setting_type = 'startup', default_value = 'logchests-set-1',       allowed_values = { 'none', 'logchests-set-1' } },
    { type = 'string-setting', name = 'cb-sib-setting-logistics',      setting_type = 'startup', default_value = 'logistics-set-1',       allowed_values = { 'none', 'logistics-set-1' } },
    { type = 'string-setting', name = 'cb-sib-setting-metals',         setting_type = 'startup', default_value = 'metals-set-english',    allowed_values = { 'none', 'metals-set-latin', 'metals-set-english' } },
    { type = 'string-setting', name = 'cb-sib-setting-modules',        setting_type = 'startup', default_value = 'modules-set-1',         allowed_values = { 'none', 'modules-set-1' } },
    { type = 'string-setting', name = 'cb-sib-setting-petrochem',      setting_type = 'startup', default_value = 'petrochem-set-1',       allowed_values = { 'none', 'petrochem-set-1' } },
    { type = 'string-setting', name = 'cb-sib-setting-science',        setting_type = 'startup', default_value = 'science-set-1',         allowed_values = { 'none', 'science-set-1' } },
    { type = 'string-setting', name = 'cb-sib-setting-stone',          setting_type = 'startup', default_value = 'stone-set-1',           allowed_values = { 'none', 'stone-set-1' } },
    { type = 'string-setting', name = 'cb-sib-setting-vegetables',     setting_type = 'startup', default_value = 'vegetables-set-1',      allowed_values = { 'none', 'vegetables-set-1' } },
    { type = 'string-setting', name = 'cb-sib-setting-vehicles',       setting_type = 'startup', default_value = 'vehicles-set-1',        allowed_values = { 'none', 'vehicles-set-1' } },
    { type = 'string-setting', name = 'cb-sib-setting-watertreatment', setting_type = 'startup', default_value = 'watertreatment-set-1',  allowed_values = { 'none', 'watertreatment-set-1' } },

})

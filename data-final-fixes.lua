if not cb then cb = {} end
if not cb.sib then cb.sib = {} end

-- first commit in branch to make barrels


require('import-table')

local bpoint = 1

local sets_to_do = {}
local ldebugflags = {}

ldebugflags.log_entry = false
ldebugflags.log_success = false
ldebugflags.log_fail = true

local function p(m, v)
    log('ib_badge_log : ' .. m .. ' : name = ' .. v.name .. ', type = ' .. v.type .. ', badge = ' .. v.badge)
end



local function do_badge(v)
    if ldebugflags.log_entry then p('entering', v) end
    local ib_data = { ib_let_badge = v.badge, ib_let_corner = 'right-top' }
    if pcall(Build_badge, data.raw[v.type][v.name], ib_data) then
        -- if ldebugflags.log_success then p('success', v) end
    else
        if ldebugflags.log_fail then p('fail', v) end
    end
end


local groups = -- This is duplicating info in settings file.
{
    'cb-sib-setting-aliens',
    'cb-sib-setting-angelsores',
    'cb-sib-setting-artifacts',
    'cb-sib-setting-bioprocessing',
    'cb-sib-setting-combat',
    'cb-sib-setting-gems',
    'cb-sib-setting-intermediates',
    'cb-sib-setting-logchests',
    'cb-sib-setting-logistics',
    'cb-sib-setting-metals',
    'cb-sib-setting-modules',
    'cb-sib-setting-petrochem',
    'cb-sib-setting-science',
    'cb-sib-setting-stone',
    'cb-sib-setting-vegetables',
    'cb-sib-setting-watertreatment'
}

local sets_to_do = {} -- alien-badges-1

for groupk, groupv in ipairs(groups) do
    sets_to_do[settings.startup[groupv].value] = true
end


for _, v in ipairs(cb.sib.table) do
    if sets_to_do[v.badgeset] then
        local ib_data = { ib_let_badge = v.badge, ib_let_corner = 'right-top' }
        if pcall(Build_badge, data.raw[v.type][v.name], ib_data) then
            p('success', v)
        else
            p('fail', v)
        end

        if v.type == 'fluid' then -- do barrel
            local bname = v.name .. '-barrel'
            if data.raw.item[bname] then
                if pcall(Build_badge, data.raw['item'][bname], ib_data) then
                    if ldebugflags.log_success then p('success barrel', v) end
                else
                    if ldebugflags.log_fail then p('fail barrel', v) end
                end
            end
        end
    end
end




--             local a, message
--             -- a, message = pcall(Build_badge, data.raw[v.type][v.name], ib_data)
--             -- log ('sbib '.. a .. message)




local bp = 1 -- just a breakpoint

--         if v.type == 'fluid' then
--             local bname = v.name .. '-barrel'
--             data.raw.fluid[v.name].ib_let_badge = v.badge
--             -- data.raw.fluid[v.name].ib_let_corner = 'right-top'

--             if data.raw.item[bname] then
--                 data.raw.item[bname].ib_let_badge = v.badge
--                 -- data.raw.item[bname].ib_let_corner = 'right-top'
--             end
--         end
--     end
-- end












--     local t = false


--     local b = v.badgeset
--     if b == 'latinmetals' or b == 'englishmetals' then
--         b = 'metals'
--     end
--     -- do sciencenames same way as metals, but currently sciences names aren't bringing up the



--     if v.badgeset == 'englishmetals' and bsetting == 'English' then t = true end
--     if v.badgeset == 'latinmetals' and bsetting == 'Latin' then t = true end

--     if t then

--     end
-- end

-- local breakpt = 1

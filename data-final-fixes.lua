if not cb then cb = {} end
if not cb.sib then cb.sib = {} end
-- require('bigtable-old')

require('import-table')

-- local i, v



for _, v in ipairs(cb.sib.bigtable) do
    if v.badgeset == 'main' and settings.startup['cb-sib-main'].value then
        if v.type == 'item' then
            data.raw.item[v.name].ib_let_badge = v.badge
            data.raw.item[v.name].ib_let_corner = 'right-top'
        end

        if v.type == 'fluid' then
            local bname = v.name .. '-barrel'
            data.raw.fluid[v.name].ib_let_badge = v.badge
            data.raw.fluid[v.name].ib_let_corner = 'right-top'

            if data.raw.item[bname] then
                data.raw.item[bname].ib_let_corner = v.badge
                data.raw.item[bname].ib_let_corner = 'right-top'
            end
        end
    end
    if v.badgeset == 'Englishmetals' and settings.startup['cb-sib-Englishmetals'].value then
        if v.type == 'item' then
            data.raw.item[v.name].ib_let_badge = v.badge
            data.raw.item[v.name].ib_let_corner = 'right-top'
        end

        if v.type == 'fluid' then
            local bname = v.name .. '-barrel'
            data.raw.fluid[v.name].ib_let_badge = v.badge
            data.raw.fluid[v.name].ib_let_corner = 'right-top'

            if data.raw.item[bname] then
                data.raw.item[bname].ib_let_corner = v.badge
                data.raw.item[bname].ib_let_corner = 'right-top'
            end
        end
    end
end



for _, v in pairs(data.raw.item) do
    if v.name == 'iron-plate' then -- for debugging
        local a
    end
    if v.icons then
        if not v.icons[1].icon_size then
            v.icons[1].icon_size = v.icon_size
        end
        if not v.icons[1].mipmaps then
            v.icons[1].icon_mipmaps = v.icon_mipmaps
        end
        v.icon_size = nil
        v.icon_mipmaps = nil
    end
    local b -- debugging breakpoint
end

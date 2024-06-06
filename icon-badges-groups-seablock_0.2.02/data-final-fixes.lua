if not cb then cb={} end
if not cb.ibg then cb.ibg={} end


local b
b=0

-- get the settings file, we know which settings are ours
local lsettings = require('settings-table-file')
local lbigtablecsv = require('bigtable-csv-file-seablock')
-- convert the csv file to a lua structure
local lbigtable = cb.ibg.csv_to_lua(lbigtablecsv)

-- you can make the lua structure without making csv first,
-- but I found the csv file much easier to work with,
-- especially when there are 100s of items and/or fluids,
-- and the badgegroups keep changing

-- 
-- for Nullius, add rows for boxes

cb.ibg.do_badges(lsettings, lbigtable)
-- This will do barrels automatically
-- Don't worry about fluids that don't have barrels. do_badges checks for them.





This mod uses the Icon Badges mod to add badges to icons. Check the settings for that mod as well as this one. There are settings to turn labels on or off for groups of items, and some have multiple sets. Eg Metals have English and Latin versions.

We're open to suggestions for badges. If it's just a few changes, just send me your suggestions. If it's more, please contact me to save us both work. I've automated most of it.

I can be reached through Discussion or the SeaBlock Discord.

The mod is limited to a 1-3 character string, consisting of lower- or upper-case letters or numbers (nothing else!). Valid examples: "AB", "aB", "Ab", "A", "b", "1A", "1".

Many thanks to Galdoc. My bit was long but fairly easy. Creating Icon Badges, with all its features, plus getting it to work with SeaBlock, was much harder. Also thanks to jodokus31 for the csv import function.

## For Modders

Each prototype is part of a single badgegroup, eg metals. Each badgegroup can have more than one badgeset, eg metals-English and metals-Latin. Each badgegroup can have only one active set, chosen in Settings. If an item does not have an entry for that set, there will be no badge.

The badges are stored in a single, very large, csv table. VSCode's Rainbow CSV extension is very helpful if you want to make just a few changes. To add a new set, use the attached spreadsheet, then copy the column with the formula into the table.

To make sweeping changes, it might be worth converting it to a csv file. Change the file type, open in your favourite editor, and edit, then Save As CSV, with file type lua. The order of the rows does not affect the program. I found OpenOffice Calc worked well.

## Data File Sample

return [[
group;subgroup;name;type;badgegroup;badgeset
"Fe";"iron-ore";"item";"metals-set-latin"
"Fe";"iron-plate";"item";"metals-set-latin"

"I";"iron-ore";"item";"metals-set-english"
"I";"iron-plate";"item";"metals-set-english"

]]
Headings do not have quotes. Data has double-quotes.

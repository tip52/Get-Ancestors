-- a function  to get the ancestors (parents) of existing parts inside of the workspace.

local function GetAncestors(v)
    local ancestors = {}
    local ancestor = v.Parent
    repeat
        task.wait()
        ancestor = ancestor.Parent
        table.insert(ancestors,ancestor)
    until ancestor.Parent == nil;
    table.insert(ancestors,#ancestors)
    return ancestors
end

--Usage
local AncestorTable = GetAncestors(game.Players.LocalPlayer.Character) -- setting table variable
print(table.unpack(AncestorTable)) -- Unpacking the table
print(AncestorTable[1]) -- printing the first item in the ancestor table

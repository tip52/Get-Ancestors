-- function to get the ancestors (parents) of existing parts inside of the workspace.

local function GetAncestors(v)
    local ancestors = {}
    local ancestor = v.Parent
    repeat
        task.wait()
        ancestor = ancestor.Parent
        table.insert(ancestors,ancestor)
    until ancestor.Parent == nil;
    return ancestors
end

--Usage
local AncestorTable = GetAncestors(game.Players.LocalPlayer.Character) -- setting table variable.
local AncestorAmt = #AncestorTable -- getting the amount of ancestors.
print(table.unpack(AncestorTable)) -- unpacking the table.
print(AncestorAmt) -- printing the variable with the amount of ancestors
print(AncestorTable[1]) -- printing the first item in the ancestor table.

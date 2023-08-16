-- function to get the ancestors (parents) of existing parts inside of the workspace.

local function GetAncestors(v)
    local ancestors = {}
    local ancestor = v.Parent
    while ancestor do
        table.insert(ancestors, ancestor)
        ancestor = ancestor.Parent
    end
    return ancestors
end


-- get path (useful for multiple things)
local function getPath(v)
    local ancestors = {}
    repeat
        table.insert(ancestors, 1, v.Name)
        v = v.Parent
    until not v
    return table.concat(ancestors, ".")
end

--Usage
local AncestorTable = GetAncestors(game.Players.LocalPlayer.Character) -- setting table variable.
local AncestorAmt = #AncestorTable -- getting the amount of ancestors.
print(table.unpack(AncestorTable)) -- unpacking the table.
print(AncestorAmt) -- printing the variable with the amount of ancestors
print(AncestorTable[1]) -- printing the first item in the ancestor table.
--get path usage
local path = getPath(game.workspace) -- prints game.workspace instead of workspace. Note that this is a string.

--Using GetAncestors() as you would use GetDescendants():
for i,v in pairs(GetAncestors(game.Players.LocalPlayer.Character)) do
print(v)
end

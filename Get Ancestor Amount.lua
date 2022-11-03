--This function will return the amount of ancestors an item has, pretty easy to make since I changed 1 variable.

local function GetAncestorAmt(v)
    local ancestors = {}
        local ancestor = v.Parent
        repeat
            task.wait()
            ancestor = ancestor.Parent
            table.insert(ancestors,ancestor)

        until ancestor.Parent == nil;

    end

--Usage
print(GetAncestorAmt(game.Players.LocalPlayer.Character))

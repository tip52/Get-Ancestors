--The GetAncestors function requires an item to get the ancestors of, it will return a table.
--Please feel free to make this better, I did not spend much time creating it.

local function GetAncestors(v)
    local ancestors = {}
        local ancestor = v.Parent
        repeat
            task.wait()
            ancestor = ancestor.Parent
                table.insert(ancestors,ancestor)

        until ancestor.Parent == nil;

            return ancestors, #ancestors
    end

--You can set a variable to the function like this
local returned_table = GetAncestors(game.Players.LocalPlayer.Character)
print(table.unpack(returned_table)) -- we use table.unpack as the function does not do it for us (for various reasons such as not being able to reference items inside the table.)

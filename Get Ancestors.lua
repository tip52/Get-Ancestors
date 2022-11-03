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


print(table.unpack(GetAncestors(game:GetService("Workspace")["out of bounds"].tree.MeshPart)))


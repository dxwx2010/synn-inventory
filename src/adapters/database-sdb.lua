function Inv.Database.CreateInventory(hash, meta, data) 
    local query = "INSERT INTO `inventory` VALUES (@0, @1, @2, @3, @4, @5, @6)"
    return Synn.Database.Insert(query, 
        hash, meta.owner, meta.theme, meta.style,
        meta.width, meta.height, data
    );
end

function Inv.Database.HasInventory(hash, owner) 
    local query = "SELECT EXISTS(SELECT 1 FROM `inventory` WHERE uiid=@0 AND owner=@1 LIMIT 1)"
    local result = Synn.Database.FetchScalar(query, hash, owner)
    
    if result == 1 then 
        return true 
    else 
        return false 
    end
end
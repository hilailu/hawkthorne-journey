local Wall = {}
Wall.__index = Wall

function Wall.new(node, collider)
    local wall = {}
    setmetatable(wall, Wall)
    wall.bb = collider:addRectangle(node.x, node.y, node.width, node.height)
    wall.bb.node = wall
    wall.node = node
    collider:setPassive(wall.bb)
    wall.isSolid = true

    return wall
end



function Wall:collide(player)
   		player:die(3)
end


return Wall
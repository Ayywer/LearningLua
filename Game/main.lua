require("player")
require("enemy")

local game = {
    Difficulty = 1,
    state = {
        menu = false,
        paused = false,
        running = true,
        ended = false,
    }
}

local enemies = {}

function love.load()
    Player:load()
    Enemy:load()

    Camera = require 'Lib/camera'
    Cam = Camera()

    -- table.insert(enemies, 1, Enemy())
end

function love.update(dt)
    Player:update(dt)
    Enemy:update(dt)

    Cam:lookAt(Player.x, Player.y)
end

function love.draw()
    Cam:attach()
        Enemy:draw()
        Player:draw()
    Cam:detach()
    
end
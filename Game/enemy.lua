Enemy = {}
require("player")

local distX
local distY
local distance
local velocityX
local velocityY


function Enemy:load()

    Anim8 = require 'Lib/anim8'
    love.graphics.setDefaultFilter("nearest", "nearest")

    self.level = 1
    self.radius = 20
    self.x = 400
    self.y = 200
    self.speed = 100*self.level

    self.spriteSheet = love.graphics.newImage("assets/Enemy/enemySpriteSheet.png")
    self.grid = Anim8.newGrid( 32, 32, self.spriteSheet:getWidth(),self.spriteSheet:getHeight())
    -- 65 , 47

    self.animations = {}
    --self.animations.down = Anim8.newAnimation( self.grid('1-2', 1), 0.2 )
    self.animations.left = Anim8.newAnimation( self.grid('1-2', 2), 0.2 )
    self.animations.right = Anim8.newAnimation( self.grid('1-2', 1), 0.2 )
    --self.animations.up = Anim8.newAnimation( self.grid('1-4', 4), 0.2 )

    
    self.anim = self.animations.left

end

function Enemy:update(dt)
    

    distX =  Player.x - self.x
    distY =  Player.y - self.y
    distance = math.sqrt(distX*distX+distY*distY)
    velocityX = distX/distance*self.speed
    velocityY = distY/distance*self.speed
    self.x = self.x + velocityX*dt
    self.y = self.y + velocityY*dt

    if self.x < 400 then
        Enemy.anim = self.animations.left
    elseif self.x > 400 then
        self.anim = self.animations.right
    end

    self.anim:update(dt)

end

function Enemy:draw()
    self.anim:draw(self.spriteSheet, self.x, self.y, nil, 5*self.level)
    -- love.graphics.circle("fill",self.x, self.y, self.radius)
end
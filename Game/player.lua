Player = {}

function Player:load()
    self.x = love.graphics.getWidth() / 2
    self.y = love.graphics.getHeight() / 2

    self.img = love.graphics.newImage("assets/cat.png")

    self.width = self.img:getWidth()
    self.height = self.img:getHeight()

    self.speed = 200
end
function Player:update(dt)
    if love.keyboard.isDown("w") then
        self.y = self.y - self.speed * dt
    elseif love.keyboard.isDown("s") then
        self.y = self.y + self.speed * dt
    end

    if love.keyboard.isDown("a") then
        self.x = self.x - self.speed * dt
    elseif love.keyboard.isDown("d") then
        self.x = self.x + self.speed * dt
    end
end

function Player:draw()
    love.graphics.draw(self.img, self.x, self.y)
end
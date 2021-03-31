Entity = Object:extend()

function Entity:new(x,y,width,height,r,g,b)
  self.x = x
  self.y = y
  self.width = width
  self.height = height
  self.xSpeed = 0
  self.ySpeed = 0
  self.r = r
  self.g = g
  self.b = b
end

function Entity:update(dt)
  self.x = self.x + self.xSpeed * dt
  self.y = self.y + self.ySpeed * dt

  if self.y < 0 then
    self.y = 0
    self.ySpeed = -self.ySpeed
  elseif self.y + self.height >= gameHeight then
    self.y = gameHeight - self.height
    self.ySpeed = -self.ySpeed
  end

  if self.x < 0 then
    self.x = 0
    self.xSpeed = -self.xSpeed
  elseif self.x + self.width >= gameWidth then
    self.x = gameWidth - self.width
    self.xSpeed = -self.xSpeed
  end
end

function Entity:draw()
  love.graphics.setColor(self.r, self.g, self.b)
  love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
  love.graphics.setColor(255, 255, 255)
end

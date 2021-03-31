Pad = Entity:extend()

function Pad:new(x,y,width,height,r,g,b)
  Pad.super.new(self,40,100,10,100,255,255,255)
  self.keyUp = "up"
  self.keyDown = "down"
end

function Pad:update(dt)
  if love.keyboard.isDown(self.keyUp) then
    self.ySpeed = -400
  elseif love.keyboard.isDown(self.keyDown) then
    self.ySpeed = 400
  else
    self.ySpeed = 0
  end

  Pad.super.update(self,dt)
end

Pad0 = Entity:extend()

function Pad0:new(x,y,width,height,r,g,b)
  Pad.super.new(self,gameWidth-gameWidth/2,gameHeight-gameHeight/1.125,100,10,255,255,255)
  self.keyUp = "a"
  self.keyDown = "d"
end

function Pad0:update(dt)
  if love.keyboard.isDown(self.keyUp) then
    self.xSpeed = -400
  elseif love.keyboard.isDown(self.keyDown) then
    self.xSpeed = 400
  else
    self.xSpeed = 0
  end

  Pad0.super.update(self,dt)
end

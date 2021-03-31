Ball = Entity:extend()

function Ball:new(x,y,width,height,r,g,b)
  Ball.super.new(self,gameWidth/2,gameHeight/2,25,100,0,0,0)
  self.xSpeed = 400
  self.ySpeed = -400
end

function Ball:update(dt)
  if love.keyboard.isDown("r") then
    self.xSpeed = 400
    self.ySpeed = -400
  end
  Ball.super.update(self,dt)
  ballx = self.x - 15
  bally = self.y - 0
end

function Ball:bounce(e)
  local left1 = self.x
  local right1 = self.x + self.width
  local top1 = self.y
  local bottom1 = self.y + self.height
  local left2 = e.x
  local right2 = e.x + e.width
  local top2 = e.y
  local bottom2 = e.y + e.height

  if left1 < right2 and right1 > left2 and top1 < bottom2 and bottom1 > top2 then
    self.xSpeed = -self.xSpeed
    sound = love.audio.newSource("sound/effects/oof.wav","static")
    sound:setVolume(.1)
    sound:play()
    if self.xSpeed > 0 then
      self.xSpeed = self.xSpeed + 20
    else
      self.xSpeed = self.xSpeed - 20
    end
    if self.ySpeed > 0 then
      self.ySpeed = self.ySpeed + 20
    else
      self.ySpeed = self.ySpeed - 20
    end
  end
  ballxspeed = self.xSpeed
  ballyspeed = self.ySpeed
  sound = nil
end

Game = Object:extend()

function Game:new()
  self.padLeft = Pad()
  self.padLeft.r = 255
  self.padLeft.g = 0
  self.padLeft.b = 0
  self.padLeft.keyUp = "w"
  self.padLeft.keyDown = "s"
  self.padRight = Pad()
  self.padRight.r = 0
  self.padRight.g = 0
  self.padRight.b = 255
  self.padRight.x = gameWidth - 40
  self.padUp = Pad0()
  self.padUp.r = 255
  self.padUp.g = 0
  self.padUp.b = 0
  self.padDown = Pad0()
  self.padDown.y = gameHeight - 40
  self.padDown.keyUp = "left"
  self.padDown.keyDown = "right"
  self.padDown.r = 0
  self.padDown.g = 0
  self.padDown.b = 255
  self.padMouse = PadMouse()
  self.ball = Ball()
end

function Game:update(dt)
  self.padLeft:update(dt)
  self.padRight:update(dt)
  self.padUp:update(dt)
  self.padDown:update(dt)
  self.padMouse:update(dt)
  self.ball:update(dt)
  self.ball:bounce(self.padRight)
  self.ball:bounce(self.padLeft)
  self.ball:bounce(self.padUp)
  self.ball:bounce(self.padDown)
  self.ball:bounce(self.padMouse)
end

function Game:draw()
  self.padLeft:draw()
  self.padRight:draw()
  self.padUp:draw()
  self.padDown:draw()
  self.ball:draw()
  self.padMouse:draw()
end

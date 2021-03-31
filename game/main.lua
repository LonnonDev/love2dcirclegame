Object = require "classic"

gameWidth = love.graphics.getWidth()
gameHeight = love.graphics.getHeight()

Game = Object:extend()

function love.load(arg)
  mousex = 0
  mousey = 0
  love.window.setTitle("cirno pong game")
  music = love.audio.newSource("sound/music/cirno.mp3","stream")
  music:setLooping(true)
  music:setVolume(.1)
  music:play()
  require "game"
  require "entity"
  require "pad"
  require "pad0"
  require "padMouse"
  require "ball"
  game = Game()
end

function love.update(dt)
  mousex = love.mouse.getX()
  mousey = love.mouse.getY()
  game:update(dt)
end

function love.draw()
  game:draw()
  cirnoim = love.graphics.draw(love.graphics.newImage("graphics/sprites/cirno.png"), ballx, bally, r, .3, .3, ox, oy, kx, ky)
  cirnoim = nil
  love.graphics.print(ballxspeed,0,0,0,3,3)
  love.graphics.print(ballyspeed,0,50,0,3,3)
end

function Distance(x1,y1,x2,y2)
  return math.sqrt((y2-y1)^2 + (x2 - x1)^2)
end

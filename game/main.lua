function love.load(arg)
  love.window.setTitle("ball game click the balls")

  button = {}
  button.x = 200
  button.y = 200
  button.size = 100

  score = 0
  timer = 0

  myFont = love.graphics.newFont(15)
end

function love.update(dt)
  if love.math.random(1,20) == 20 then
    button.x = love.math.random(0,love.graphics.getWidth())
    button.y = love.math.random(0,love.graphics.getHeight())
  end
end

function love.draw()
  love.graphics.setColor(255, 255, 255)
  love.graphics.circle("fill", button.x, button.y, button.size)

  love.graphics.setFont(myFont)

  love.graphics.print("welcome to brain abuser this game abuses your brain to make you happy btw your score is "..score)
end

function love.mousepressed(x, y, b, isTouch)
  if b == 1 then
    if distanceBetween(love.mouse.getX(),love.mouse.getY(),button.x,button.y) < button.size then
        score = score + 1
    end
  end
end

function distanceBetween(x1,y1,x2,y2)
  return math.sqrt((y2-y1)^2 + (x2 - x1)^2)
  --if distanceBetween(love.mouse.getX(),love.mouse.getY(),x,y) < size then
end

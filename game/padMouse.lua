PadMouse = Entity:extend()

function PadMouse:new(x,y,width,height,r,g,b)
  PadMouse.super.new(self,mousex-gameWidth/2,mousey-gameHeight/2,100,100,0,255,0)
end

function PadMouse:update(dt)
  self.x = mousex
  self.y = mousey
  PadMouse.super.update(self,dt)
end

/*class Brick2 extends Bricks
{
    Brick2(float x, float y)
    {
      super(x, y);
      brickMove = true;
    }
    
    void render()
    {
      w = 40;
      h = 40;
      fill(0);
      stroke(0);
      pushMatrix();
      translate(pos.x, pos.y);
      rotate(theta);
      image(brick2, x1, y1, w, h);
      popMatrix();
    }
    
    void update()
    {      
      if(pos.y >= -150)
      {
        pos.add(forward);
      }
      if(keys[0])
      {
        pos.x -= 20;
        keys[0] = false;
      }
      if(keys[1])
      {
        pos.x += 20;
        keys[1] = false;
      }
      if(keys[3])
      {
        theta += radians(90);
        keys[3] = false;
      }
      if(keys[2] && pos.y < height)
      {
        pos.add(fall);
        keys[2] = false;
      }
      if(pos.y + h >= height)
      {
        pos.y = height - h;
        brickMove = false;
      }
      if(pos.x + w >= height)
      {
        pos.x = height - w;
        brickMove = false;
      }
    }
}*/
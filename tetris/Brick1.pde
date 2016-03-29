class Brick1 extends Bricks
{
    Brick1(float x, float y)
    {
      super(x, y);
      brick1Move = true;
    }
    
    void render()
    {
      w = 20;
      h = 100;
      fill(0);
      stroke(0);
      pushMatrix();
      translate(pos.x, pos.y);
      rotate(theta);
      image(brick1, x1, y1, w, h);
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
        brick1Move = false;
      }
      if(pos.x + w >= height)
      {
        pos.x = height - w;
        brick1Move = false;
      }
      println("" + theta);
    }
}
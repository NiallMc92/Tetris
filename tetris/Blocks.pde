class Bricks 
{
  
    float x1;
    float y1;
    float w;
    float h;
    PVector pos;
    PVector forward;
    PVector fall;
    float theta;
    PImage s;
    
    Bricks(float x, float y)
    {
      x1 = 0;
      y1 = 0;
      w = 20;
      h = 100;
      pos = new PVector (x, y);
      forward = new PVector(0, 1);
      fall = new PVector(0, 50);
      theta = 0;
      s = loadImage("brick1.png");
    }
    
    void render()
    {
      fill(0);
      stroke(0);
      pushMatrix();
      translate(pos.x, pos.y);
      rotate(theta);
      image(s, x1, y1, w, h);
      popMatrix();
    }
    
    void update()
    {      
      if(pos.y >= 0)
      {
        pos.add(forward);
      }
      if(pos.y + h >= height)
      {
        pos.y = height - h;
      }
      if(pos.x + w >= height)
      {
        pos.x = height - w;
      }
      if(keys[0])
      {
        theta -= radians(90);
        keys[0] = false;
      }
      if(keys[1])
      {
        theta += radians(90);
        keys[1] = false;
      }
      if(keys[2] && pos.y < height)
      {
        pos.add(fall);
        keys[2] = false;
      }
      if(pos.y + h > height)
      {
        pos.y = height - h;
      }
      println("" + theta);
    }
}
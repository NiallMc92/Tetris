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
    PImage brick1;
    PImage brick2;
    
    Bricks(float x, float y)
    {
      x1 = 0;
      y1 = 0;
      pos = new PVector (x, y);
      forward = new PVector(0, 1);
      fall = new PVector(0, 50);
      theta = 0;
      brick1 = loadImage("brick1.png");
      brick2 = loadImage("brick2.png");
    }
    
    void renderBrick1()
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
    
    void renderBrick2()
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
      if(pos.y + h > height)
      {
        pos.y = height - h;
      }
      println("" + theta);
    }
}
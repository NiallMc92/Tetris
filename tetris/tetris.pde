/*ArrayList<Bricks>bricks = new ArrayList<Bricks>();
boolean keys[] = new boolean [2000];

void settings()
{
  size(500, 500);
}

void setup ()
{
  bricks.add(new Brick1(240, -150));
}

void draw ()
{
  background(255);
  grid();
  
  bricks.get(0). render();
  if(bricks.get(0).brickMove)
  {
    bricks.get(0). update();
  }
  
  if(bricks.get(0).pos.y + bricks.get(0).h >= height)
  {
    bricks.add(new Brick2(240, -150));
    bricks.get(1).render();
    if(bricks.get(1).brickMove)
    {
      bricks.get(1). update();
    } 
  }
}

void keyPressed()
{ 
  if(key == 'a')
  {
    keys[0] = true;
  }
  
  if(key == 'd')
  {
    keys[1] = true;
  }
  
  if(key == 's')
  {
    keys[2] = true;
  }
  
  if(key == ' ')
  {
    keys[3] = true;
  }
}

void keyReleased()
{ 
  if(key == 'a')
  {
    keys[0] = false;
  }
  
  if(key == 'd')
  {
    keys[1] = false;
  }
  
  if(key == 's')
  {
    keys[2] = false;
  }
  
  if(key == ' ')
  {
    keys[3] = false;
  }
}*/
ArrayList<Brick1>brick1 = new ArrayList<Brick1>();
boolean keys[] = new boolean [2000];

void settings()
{
  size(500, 500);
}

void setup ()
{
  brick1.add(new Brick1(240, -150));
}

void draw ()
{
  background(255);
  grid();
  
  brick1.get(0). renderBrick1();
  if(brick1.get(0).brick1Move)
  {
    brick1.get(0). update();
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
}
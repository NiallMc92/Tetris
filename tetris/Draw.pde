ArrayList<Bricks>bricks = new ArrayList<Bricks>();
boolean keys[] = new boolean [2000];

void settings()
{
  size(500, 500);
}

void setup ()
{
  bricks.add(new Bricks(240, 0));
}

void draw ()
{
  background(255);
  grid();
  
  for(int i = 0 ; i < bricks.size() ; i ++)
  {
    Bricks b = bricks.get(i);
    bricks.get(i). render();
    bricks.get(i). update();
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
}

// hello hello hello hello

void hello()
{
  if(keys[2] && keys[1])
  {
    println("hello cruel world");
  }
}

void hello2()
{
  if(keys[2] && keys[1])
  {
    println("hello new world");
  }
}

void hello3()
{
  if(keys[2] && keys[1])
  {
    println("hello smooth world");
  }
}
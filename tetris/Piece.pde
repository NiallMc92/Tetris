class Piece // blocks 
{
  final color[] colors = 
  {
    color(128, 12, 128), //purple
    color(230, 12, 12), //red
    color(12, 230, 12), //green
    color(9, 239, 230), //cyan
    color(230, 230, 9), //yellow
    color(230, 128, 9), //orange
    color(12, 12, 230) //blue
  };
 
  // [rotation][block nb][x or y]
  final int[][][] pos;
  int x = int(w/2);
  int y = 0;
  int kind;
  int c;
  PImage brick1;
 
  Piece(int k) 
  {
    kind = k < 0 ? int(random(0, 7)) : k;
    c = colors[kind];
    r = 0;
    pos = pieces.pos[kind];
    brick1 = loadImage("brick1Single2.png");
  }
 
  void display(Boolean still) 
  {
    pushMatrix();
    if (!still) 
    {
      translate(160, 40);
      translate(x*q, y*q);
    }
    int rot = still ? 0 : r;
    for (int i = 0; i < 4; i++) 
    {
      stroke(250, 50);
      fill(c);
      image(brick1,pos[rot][i][0] * q, pos[rot][i][1] * q, 20, 20);
    }
    popMatrix();
  }
 
  // returns true if the piece can go one step down
  void oneStepDown() 
  {
    y += 1;
    if(!grid.pieceFits())
    {
      piece.y -= 1;
      grid.addPieceToGrid();
    }
  }
 
  // try to go one step left
 
  void goToBottom() 
  {
    grid.setToBottom();
  }
 
  void inputKey(int k) 
  {
    switch(k) {
    case LEFT:
      x --;
      if(grid.pieceFits())
      {
      }
      else 
      {
         x++;
      }
      break;
      case RIGHT:
      x ++;
      if(grid.pieceFits())
      {
      }
      else
      {
         x--;
      }
      break;
      case DOWN:
      oneStepDown();
      break;
      case UP:
      r = (r+1)%4;
      if(!grid.pieceFits())
      {
         r = r-1 < 0 ? 3 : r-1;
      }
      break;
      case SHIFT:
      goToBottom();
      break;
    }
  }
}
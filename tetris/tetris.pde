//ArrayList<Bricks>bricks = new ArrayList<Bricks>();
boolean keys[] = new boolean [2000];

int w = 10;
int h = 20;
int q = 20;//blocks width and height
int dt;// delay between each move
int currentTime;
Grid grid;
Piece piece;
Piece nextPiece;
Pieces pieces;
Score score;
int r = 0;//rotation status, from 0 to 3
int level = 1;
int nbLines = 0;
 
int txtSize = 20;
int textColor = color(34, 230, 190);
 
Boolean gameOver = false;
Boolean gameOn = false;

void settings()
{
  size(500, 500, P2D);
}

void setup ()
{
  //bricks.add(new Brick1(240, -150));
}

void draw()
{
  background(60);
 
  if(grid != null){
    grid.drawGrid();
    int now = millis();
    if (gameOn) {
      if (now - currentTime > dt) {
        currentTime = now;
        piece.oneStepDown();
      }
    }
    piece.display(false);
    score.display();
  }
  if (gameOver) {
    noStroke();
    fill(255, 60);
    rect(110, 195, 240, 2*txtSize, 3);
    fill(textColor);
    text("Game Over", 120, 220);
  }
  if (!gameOn) {
    noStroke();
    fill(255, 60);
    rect(110, 250, 255, 2*txtSize, 3);
    fill(textColor);
    text("press 'p' to start playing!", 120, 280);
  }
}

/*void draw ()
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
}*/

/*void keyPressed()
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

void initialize() {
  level = 1;
  nbLines = 0;
  dt = 1000;
  currentTime = millis();
  score = new Score();
  grid = new Grid();
  pieces = new Pieces();
  piece = new Piece(-1);
  nextPiece = new Piece(-1);
}

void goToNextPiece() {
  //println("-- - nextPiece - - --");
  piece = new Piece(nextPiece.kind);
  nextPiece = new Piece(-1);
  r = 0;
}
 
void goToNextLevel() {
  score.addLevelPoints();
  level = 1 + int(nbLines / 10);
  dt *= .8;
}

void keyPressed() {
  if (key == CODED && gameOn) {
    switch(keyCode) {
    case LEFT:
    case RIGHT:
    case DOWN:
    case UP:
    case SHIFT:
      piece.inputKey(keyCode);
      break;
    }
  } else if (keyCode == 80) {// "p"
    if(!gameOn){
      initialize();
      gameOver = false;
      gameOn = true;
    }
  } else if (keyCode == 77) {// "m"
  }
}
boolean keys[] = new boolean [2000];

int w = 10; // width
int h = 20; // height
int q = 20;//blocks width and height
int dt;// delay between each move
int currentTime; // game time
Grid grid; // grid function in grid class
Piece piece; // piece function in piececlass
Piece nextPiece; // next piece function in piece class
Pieces pieces; // pieces function in piece class
Score score; // score function in score class
int r = 0;//rotation status, from 0 to 3
int level = 1; // game level
int nbLines = 0; // rows of blocks on grid
 
int txtSize = 20; // size of the text
int textColor = color(34, 230, 190); // color of the text
 
Boolean gameOver = false; // ganeover is false
Boolean gameOn = false; // game is active is false

void settings()
{
  size(500, 500, P2D); // screen size
}

void draw()
{
  background(25, 150, 25);
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
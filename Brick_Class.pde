//    This is Class Brick.                                 
//    It draws the brick and allows it to hit the ball.

class Brick
{
  float x;
  float y;
  int brickWidth;
  int brickHeight;
    
  // This is the constructer to build the brick
  Brick()
  {
    x               = 500;
    y               = 800;
    brickWidth      = 150;
    brickHeight     = 25;
  }
  
  void draw()
  {
  fill(180);
  rect(100, 100, brickWidth, brickHeight);
  }
}
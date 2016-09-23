class Brick_Line
{
  Brick[]         bricks;
  int             maxNumberOfBricks;
  boolean         amIVisible;
  float           x;
  float           y;

    
  // This is the constructer to build the brick
  Brick_Line()
  {
    maxNumberOfBricks  = 5; //30;
    amIVisible         = false;
    x                  = 100;
    y                  = 200;
    bricks             = new Brick[maxNumberOfBricks];
  }
  
 
  void draw()
  {
    for (int i = 0; i < maxNumberOfBricks; i++)
    {
      float brickColor = random(10,200);
      fill(brickColor);
      bricks[i].draw();
    }
    amIVisible = true;
  }
 
  
  void setPosition(float xPos, float yPos)
  {
    println("Inside setPosition");
    x = xPos;
    y = yPos;
    
//   setBricksPositions();

  }
  
  
  void setBricksPositions()
  {    
     float brickY = y;
    int brickWidth = frame.getFrameWidth()/maxNumberOfBricks;
    int brickHeight = 100;


    for( int i = 0; i < maxNumberOfBricks; i++)
    {
      float brickX =  x + (i*brickWidth) + 2;
      println(brickX);
      
      println("Brick# ", i, " X = ", brickX, " Y = ", brickY, " width=  ", brickWidth, " height=", brickHeight);

      
      //bricks[i].setBrickPosition(brickX, brickY, brickWidth, brickHeight);
    }
  }
}
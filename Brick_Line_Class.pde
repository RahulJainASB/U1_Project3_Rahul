class Brick_Line
{
  Brick[]         bricks;
  int             maxNumberOfBricks;
  boolean         amIVisible;
  float           x;
  float           y;
  int            bricksColor;

    
  // This is the constructer to build the brick
  Brick_Line()
  {
    maxNumberOfBricks  = 30;
    amIVisible         = false;
    x                  = 100;
    y                  = 200;
    bricksColor        = 150;              
    
    bricks             = new Brick[maxNumberOfBricks];
    for( int i = 0; i < bricks.length; i++)
    {
      bricks[i] = new Brick();
    }
  }
  

  void draw()
  {
    //float brickColor = random(10,200);
    //fill(brickColor);
    fill(bricksColor);
    for (int i = 0; i < maxNumberOfBricks; i++)
    {
      bricks[i].draw();
    }
    amIVisible = true;
  }
 
  
  void setPosition(float xPos, float yPos)
  {
    println("Inside setPosition");
    x = xPos;
    y = yPos;
    setBricksPositions();
  }
  
  
  void setBricksPositions()
  {    
    float brickY = y;
    int brickWidth = frame.getFrameWidth()/maxNumberOfBricks;
    int brickHeight = 30;


    for( int i = 0; i < bricks.length; i++)
    {
      float brickX =  x + (i*brickWidth) + 2;
      println(brickX);
      
      println("Brick# ", i, " X = ", brickX, " Y = ", brickY, " width=  ", brickWidth, " height=", brickHeight);

      
      bricks[i].setBrickPosition(brickX, brickY, brickWidth, brickHeight);
    }
  }
  
  void setColor(int c)
  {
    bricksColor = c;
  }
}
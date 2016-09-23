class Brick_Manager
{
//  int             numberOfBrickLines;
  int             maxNumberOfBrickLines;
  Brick_Line[]    brickLine;


  // This is the constructer to build the brick
  Brick_Manager()
  {
    //numberOfBrickLines = 1;
    maxNumberOfBrickLines = 1; //5;
    brickLine = new Brick_Line[1];//maxNumberOfBrickLines];
  }
  
  void initialize()
  {
    // Set up x and y position of each brick line
    setBrickLinePosition();
  }

  void draw()
  {
    for (int i = 0; i < maxNumberOfBrickLines; i++)
    {
      brickLine[i].draw();
    }
  }


void setBrickLinePosition()
{
    float  brickLineX = frame.getFrameX() + 10;
    
    float frameY     = frame.getFrameY();
    float brickLineY = frameY;

    println(brickLineX);
    println(brickLineY);
    println(frame.getFrameWidth());
    println(frame.getFrameHeight());
    
    for (int i = 0; i < maxNumberOfBrickLines; i++)
    {
      brickLineY = frameY + (i * 100);
      println("BrickLine #: ", i, "  X = ", brickLineX, " Y = ", brickLineY);
      brickLine[i].setPosition(brickLineX,  brickLineY); // This programm is stoping at this line.
    }
}

}
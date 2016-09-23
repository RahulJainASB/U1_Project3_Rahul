class Brick_Manager
{
  int             numberOfBrickLines;
  Brick_Line[]    brickLine;
  int             maxNumberOfBrickLines;

  // This is the constructer to build the brick
  Brick_Manager()
  {
    numberOfBrickLines = 1;
    maxNumberOfBrickLines = 5;
    brickLine = new Brick_Line[maxNumberOfBrickLines];
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
    float  frameX = frame.getFrameX();
    float  frameY = frame.getFrameY();
    
    for (int i = 0; i < maxNumberOfBrickLines; i++)
    {
      brickLine[i].setPosition(frameX,  frameY + (i * 100));
    }
}

}
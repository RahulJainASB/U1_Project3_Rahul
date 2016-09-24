class Brick_Manager
{
  int             maxNumberOfBrickLines;
  Brick_Line[]    brickLine;


  // This is the constructer to build all the Bricks
  Brick_Manager()
  {
    maxNumberOfBrickLines = 5;
    brickLine = new Brick_Line[maxNumberOfBrickLines];
    for (int i = 0; i < brickLine.length; i++)
    {
      brickLine[i] = new Brick_Line();
    }
    setBrickLinesPositions();
    setBrickLinesColor();
 }
  
  void draw()
  {
    for (int i = 0; i < brickLine.length; i++)
    {
      brickLine[i].draw();
    }
  }


  void setBrickLinesPositions()
  {
      float  brickLineX  = frame.getFrameX();
      float frameY       = frame.getFrameY();
      float brickLineY   = frameY;
        
      for (int i = 0; i < brickLine.length; i++)
      {
        brickLineY = frameY + (i * brickHeight);
        brickLine[i].setPosition(brickLineX,  brickLineY); // This programm is stoping at this line.
      }
  }
  
  void setBrickLinesColor()
  {
    for (int i = 0; i < brickLine.length; i++)
    {
      if( i == 0)          brickLine[i].setColor(255,  0,   0);
      else if( i == 1)     brickLine[i].setColor(246, 31, 160);
      else if( i == 2)     brickLine[i].setColor(295, 95, 227);
      else if( i == 3)     brickLine[i].setColor(122, 186, 221);
      else if( i == 4)     brickLine[i].setColor(170, 210, 170);
      else                 brickLine[i].setColor(114, 168, 224);
    }
  }

} // end of class
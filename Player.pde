//    This is Class Player.                                 
//    It keeps the player score, lives remaining and level.

class Player
{
  int score;
  int level;
  int lives;

  // This is the constructer to build the player
  Player()
  {
    score     = 0;
    level     = 1;
    lives     = 3;
  }

  void draw()
  {
    // Show the user's score and level

    fill(255);
    textSize(14);
    text("Level: ", width-280, 25);
    text (level, width-230, 25);
    text("Score: ", width-280, 50);
    text (score, width-230, 50);
    //text("Lives: ", width-280, 75);
    // text (lives, width-230, 75);
  }
}
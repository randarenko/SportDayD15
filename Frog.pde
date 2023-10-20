class Frog
{
  float speed;
  int x;
  int spawnY;
  int y;
  PImage frogBase, frogBaseI, frogJump, frogJumpI, frog;
  boolean direction = true;
  boolean jumpSprite = false;
  Frog(float _speed, int _spawnY)
  {
    speed = _speed;
    y = _spawnY;
    spawnY = y;
    x = width/2;
    frogBase = loadImage("frog.png");
    frogJump = loadImage("frog_leap.png");
    frogBaseI = invert(frogBase);
    frogJumpI = invert(frogJump);
    frog = frogBase;
  }

  void update()
  {
    pushMatrix();
    display();
    checkMovement();
    popMatrix();
  }
  void display()
  {
    translate(x, y);
    imageMode(CENTER);
    image(frog, 0, 0);
  }

//move the frog
  void checkMovement()
  {
    if (keyPressed)
    {
      if (key == 'a' || key == 'A')
      {
        move(-1.0);
        direction = true;
      } else if (key == 'd' || key == 'D')
      {
        move(1.0);
        direction = false;
      }
      checkInversion();
    }
    else
    {
      jumpSprite = false;
      y = spawnY;
      checkInversion();
    }
  }
  
  //checks which direction the frog is in and if in jump state
  void checkInversion()
  {
    if(direction)
    {
      frog = frogBase;
      if(jumpSprite)
        frog = frogJump;
    }
    else
    {
      frog = frogBaseI;
      if(jumpSprite)
        frog = frogJumpI;
    }
  }
  //code from https://stackoverflow.com/questions/29334348/processing-mirror-image-over-x-axis by asternine
  PImage invert(PImage img)
  {
    PImage flipped = createImage(img.width, img.height, ARGB);
    for (int i = 0; i < flipped.pixels.length; i++) {    
      int srcX = i % flipped.width;                     
      int dstX = flipped.width-srcX-1;               
      int y    = i / flipped.width;       
      flipped.pixels[y*flipped.width+dstX] = img.pixels[i];
    }
    flipped.updatePixels();

    return flipped;
  }
  //end of code from https://stackoverflow.com/questions/29334348/processing-mirror-image-over-x-axis by asternine
  void move(float directionMultiplier)
  {
    x += speed*directionMultiplier;
    float yChange = abs(5*cos(5 * x));
    if(yChange > 1)
    {
      jumpSprite = true;
    }
    else
    {
      jumpSprite = false;
    }
    y = spawnY - (int)(10*yChange);
    if(x<0)
      x=0;
    else if(x>800)
      x = 800;
    println(x + "   " + y);
  }
}

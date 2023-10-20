class Princess
{
  PImage princessBase, princessBaseI, princessHug, princessHugI, princess;
  int spawnY;
  boolean direction;
  int x,y;
  int speed;
  Princess(int _speed, int _spawnY)
  {
    princessBase = loadImage("princessRegular.png");
    princessHug = loadImage("princessHug.png");
    princessBase.resize(40,76);
    princessHug.resize(40,76);
    princessBaseI = invert(princessBase);
    
    princessHugI = invert(princessHug);
    princess = princessBase;
    spawnY = _spawnY;
    y = spawnY;
    speed = _speed;
    spawn();
  }
  
  void update()
  {
    pushMatrix();
    move();
    display();
    popMatrix();
  }
  void spawn()
  {
    boolean rand = boolean((int)random(100)%2);
    if(rand)
    {
      direction = true;
      princess = princessBaseI;
    }
    else
    {
      direction = false;
      princess = princessBase;
    }
  }
  void display()
  {
    imageMode(CENTER);
    image(princess, 0,0);
  }
  void move()
  {
    if(direction)
      x+=speed;
    else
      x-=speed;
    translate(x,y);
  }
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
  
}

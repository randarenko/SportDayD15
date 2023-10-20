class Tower {
  //tower
  PImage towerImg; //importing tower image
  int towerImgX;
  float towerImgY; //location of tower image
  int sizeX, sizeY; //size of tower image

  //coins
  float coinX, coinY, coinSize, coinDistance, coinNumber;
  color coinCol;

  //translate coins
  int translateX, translateY;

  //constructor
  Tower(String imgName, int towerImgX, float towerImgY) {
    //tower
    this.towerImg = loadImage(imgName);
    this.towerImgX = towerImgX;
    this.towerImgY = towerImgY;
    sizeX = 100;
    sizeY = 200;

    //coins
    coinSize = 20;
    coinX = towerImgX;
    coinY = towerImgY - coinSize;
    coinDistance = towerImgX + sizeX;
    coinNumber = 6;
    coinCol = color(#FFD700);

    //translate
    translateX = width/2;
    translateY = height/2 - 140;
  }

  void display() {
    //tower image
    imageMode(CORNER);
    towerImg.resize(sizeX, sizeY);
    image(towerImg, towerImgX, towerImgY);

    //coin pyramid
    ellipseMode(CORNER);
    fill(coinCol);
    pushMatrix();
    translate(translateX, translateY);
    for (int y = 0; y < coinNumber; y++) {
      for (int x = 0; x < y; x++) {
        ellipse(x*coinSize-coinSize*0.5*y, y*coinSize, coinSize, coinSize);
      }
    }
    popMatrix();
  }
}

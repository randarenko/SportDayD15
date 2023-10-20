class Tower {
  //tower
  PImage towerImg; //importing tower image
  int towerImgX, towerImgY; //location of tower image
  int sizeX, sizeY; //size of tower image

  //coins
  int coinX, coinY, coinSize;
  color coinC;
  int coinNumber; //(for-loop)

  //constructor
  Tower(String imgName, int towerImgX, int towerImgY) {
    //tower
    this.towerImg = loadImage(imgName);
    this.towerImgX = towerImgX;
    this.towerImgY = towerImgY;
    sizeX = 100;
    sizeY = 200;

    //coins
    coinX = towerImgX;
    coinY = towerImgY - coinSize;
    coinSize = 20;
    //coinNumber = (towerImg
    coinC = color(#FFD700);
  }

  void display() {
    //tower image
    imageMode(CORNER);
    towerImg.resize(sizeX, sizeY);
    image(towerImg, towerImgX, towerImgY);

    ellipseMode(CORNER);
    fill(coinC);
    for (int x = coinX; x < coinX + sizeX; x = x + coinSize) {
      ellipse(x, coinY - coinSize, coinSize, coinSize);
    }
  }
}

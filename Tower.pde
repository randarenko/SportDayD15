class Tower {
  PImage towerImg;
  int towerImgX, towerImgY;

  //constructor
  Tower(String imgName, int towerImgX, int towerImgY) {
    this.towerImg = loadImage(imgName);
    this.towerImgX = towerImgX;
    this.towerImgY = towerImgY;
  }

  void display() {
    imageMode(CENTER);
    image(towerImg, towerImgX, towerImgY);
  }
}

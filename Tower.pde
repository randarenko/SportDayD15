class Tower {
  PImage towerImg;
  int towerImgX, towerImgY;
  int sizeX, sizeY;

  //constructor
  Tower(String imgName, int towerImgX, int towerImgY) {
    this.towerImg = loadImage(imgName);
    this.towerImgX = towerImgX;
    this.towerImgY = towerImgY;
    
    sizeX = 100; 
    sizeY = 200;
  }

  void display() {
    imageMode(CENTER);
    towerImg.resize(sizeX, sizeY); 
    image(towerImg, towerImgX, towerImgY);
  }
}

class Background {
  PImage groundImg;
  float groundImgX, groundImgY;

  Background(String groundImg, float groundImgX, float groundImgY) {
    this.groundImg = loadImage(groundImg);
    this.groundImgX = groundImgX;
    this.groundImgY = groundImgY;
  }
   void display() {
    imageMode(CENTER);
    image(groundImg, groundImgX, groundImgY);
  }
}

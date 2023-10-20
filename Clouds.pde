class Clouds {
  PImage image;
  float x, y;
  float speed;


  Clouds(PImage img) {
    image = img;
    x = random(width);
    y = random(0, 100);
    speed = .5;
  }

  void move() {
    x = (x + speed) % (width + image.width);
  }

  void display() {
    image(image, x, y);
  }
}

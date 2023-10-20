class Clouds {
  //import the cloud image
  PImage image;
  float x, y;
  float speed;

//set the cloud speed and intial positions
  Clouds(PImage img) {
    image = img;
    x = random(width);
    y = random(y, 50);
    speed = .5;
  }

//make the clouds move
  void move() {
    x = (x + speed) % (width + image.width);
  }
  
//show the clouds
  void display() {
    image(image, x-100, y);
  }
}

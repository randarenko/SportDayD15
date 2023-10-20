Tower tower1;
Frog frog;
PImage[] clouds;
Clouds[] cloudsObjects;
int totalClouds = 6;


void setup() {
  size(800, 600);

  //cloud generation
  clouds = new PImage[2];
  cloudsObjects = new Clouds[totalClouds];

  for (int i = 0; i < clouds.length; i++) {
    clouds[i] = loadImage("clouds" + i + ".png");
  }

  for (int i = 0; i < totalClouds; i++) {
    PImage cloudsImage = clouds[i % clouds.length];
    cloudsObjects[i] = new Clouds(cloudsImage);
  }



  //tower1 = (imgName, towerImgX, towerImgY)
  tower1 = new Tower("tower_pic.jpeg", (width/2) - 50, height-(height/3));
}

void draw() {
  background(255);
  frog.update();
   background(150, 200, 255);
  display();

  for (int i = 0; i < totalClouds; i++) {
    cloudsObjects[i].move();
    cloudsObjects[i].display();
  }
}

void display() {
  tower1.display();
}

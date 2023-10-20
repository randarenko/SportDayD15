Tower tower1;
Background ground;
Frog frog;
PImage[] clouds;
Clouds[] cloudsObjects;
int totalClouds = 5;


void setup() {
  size(800, 600);
  frog = new Frog(5, 550);
  //cloud generation
  clouds = new PImage[5];
  cloudsObjects = new Clouds[totalClouds];

  for (int i = 0; i < clouds.length; i++) {
    clouds[i] = loadImage("clouds" + i + ".png");
  }

  for (int i = 0; i < totalClouds; i++) {
    PImage cloudsImage = clouds[i % clouds.length];
    cloudsObjects[i] = new Clouds(cloudsImage);
  }

  ground = new Background("Ground.png", width/width, height - (height/5));

  //tower1 = (imgName, towerImgX, towerImgY)
  tower1 = new Tower("tower_pic.jpeg", (width/2) - 50, height - (height/5) - 200);
}

void draw() {
  background(150, 200, 255);

  for (int i = 0; i < totalClouds; i++) {
    cloudsObjects[i].move();
    cloudsObjects[i].display();
  }

  frog.update();
  display();
}

void display() {
  ground.display();
  tower1.display();
}

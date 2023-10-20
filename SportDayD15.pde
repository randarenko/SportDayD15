/* Attribution to BA93 on Pixabay for the Princess png, modified under Pixabay Content License.
 Attribution to Kenney.nl for cloud (Background Elements Redux), ground (Voxel Pack), tower (Platformer Pack Medieval), and frog (Platformer Art Extended Enemies) image assets under CC BY 4.0 DEED.
 https://creativecommons.org/licenses/by/4.0/#
 Frog modified by flipping pixels
 Audio File attributed to RandomMind on Soundcloud under CC0 license
 https://soundcloud.com/randommynd/market-day*/

import processing.sound.*;
SoundFile file;

Tower tower1;
Background ground;
Frog frog;
PImage[] clouds;
Clouds[] cloudsObjects;
int totalClouds = 5;



void setup() {
  size(800, 600);

  //play some music
  file = new SoundFile(this, "MarketDay.wav");
  file.play();
  file.loop();

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

  //tower1 = (imgName, towerImgX, towerImgY)
  tower1 = new Tower("tower_pic.jpeg", (width/2) - 50, height-(height/3));
  ground = new Background("Ground.png", width/2, height*1.23);
}

void draw() {

  background(150, 200, 255);
  display();


  for (int i = 0; i < totalClouds; i++) {
    cloudsObjects[i].move();
    cloudsObjects[i].display();
  }
  frog.update();
}

void display() {
  tower1.display();
  ground.display();
}

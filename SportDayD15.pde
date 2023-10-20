Tower tower1;
Frog frog;

void setup() {
  size(800, 600);
  //tower1 = (imgName, towerImgX, towerImgY)
  frog = new Frog(5, 500);
  tower1 = new Tower("tower_pic.jpeg", width/2, height/2);
}
void draw() {
  background(255);
  frog.update();
  display();
}

void display() {
  tower1.display();
}

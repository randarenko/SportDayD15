Tower tower1;

void setup() {
  size(800, 600);
  //tower1 = (imgName, towerImgX, towerImgY)
  tower1 = new Tower("tower_pic.jpeg", (width/2) - 50, height-(height/3));
}
void draw() {
  background(255);
  display();
}

void display() {
  tower1.display();
}

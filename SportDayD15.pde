Tower tower1;

void setup() {
  size(800, 600);
  //tower1 = (imgName, towerImgX, towerImgY)
  tower1 = new Tower("tower_pic.jpeg", width/2, height-(height/6));
}
void draw() {
  background(255);
  display();
}

void display() {
  tower1.display();
}

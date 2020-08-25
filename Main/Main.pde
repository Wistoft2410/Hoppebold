void setup() {
  size(500, 500);
  location = new PVector(30, 30);
  velocity = new PVector(0, 0);
  acceleration = new PVector(0, 0);
}

void draw() {
  clear();
  //m.applyForce(wind); 
  hb.applyForce(gravity);
  hb.checkEdges();
  hb.display();
  hb.update();
}

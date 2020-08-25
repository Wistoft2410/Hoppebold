Hoppebold[] hb = new Hoppebold[2];

void setup() {
  size(500, 500);

  for (int i=0; i < 2; i++)
    hb[i] = new Hoppebold(1, 1, 1);
}

void draw() {
  clear();
  //m.applyForce(wind); 
  hb.Baggrund();
  
  for (int i=0; i <2; i++) {
    hb[i].applyForce(gravity);
    hb[i].checkEdges();
    hb[i].display();
    hb[i].update();
    
  }
}

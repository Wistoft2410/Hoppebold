Hoppebold[] hb = new Hoppebold[2];


void setup() {
  size(500, 500);
/*  location = new PVector();
  velocity = new PVector(0, 0);
  acceleration = new PVector(0, 0);*/

  for (int i=0; i < 2; i++)
    hb[i] = new Hoppebold(1, 1, 1);
  /* hb[0] = new Hoppebold(1,2,2);
   hb[1] = new Hoppebold(1,3,3);
   hb[1] = new Hoppebold(1,3,3);
   hb[1] = new Hoppebold(1,3,3);*/
}

void draw() {
  clear();
  //m.applyForce(wind); 

  for (int i=0; i <2; i++) {
    hb[i].applyForce(gravity);
    hb[i].checkEdges();
    hb[i].display();
    hb[i].update();
  }
/*
  hb[1].applyForce(gravity);
  hb[1].checkEdges();
  hb[1].display();
  hb[1].update();*/
}

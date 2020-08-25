Hoppebold[] hb = new Hoppebold[2];

void setup() {
  size(500, 500);

  for (int i=0; i < 2; i++)
    hb[i] = new Hoppebold(1, 1, 1);
}

void baggrund() {
  
  background(145, 200, 250);
  fill(150);
  quad(501, 430, 50, 501, 50, 501, 501, 501);
  quad(-1, 450, 300, 501, 300, 502, -1, 502);  

  noStroke();
  fill(250, 215, 30);
  pushMatrix();
  translate(450, 50);

  for (int i = 0; i < 20; i++) {
    triangle(10, 10, 30, 0, 15, -20);
    rotate((float) 0.1 * PI);
  }

  ellipse(0, 0, 50, 50);
  popMatrix();
}

void draw() {
  clear();
  baggrund();
  //m.applyForce(wind); 
  for (int i=0; i <2; i++) {
    hb[i].applyForce(gravity);
    hb[i].checkEdges();
    hb[i].display();
    hb[i].update();
  }
}

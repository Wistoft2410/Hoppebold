//globale variabler
Hoppebold hb = new Hoppebold(0,0); //Målet er at kunne ænndre bold spawn pos

//PVector objekt variabler  
PVector location;
PVector velocity;
PVector acceleration;

void setup() {
  size(500, 500);
  velocity = new PVector(0, 0);
  location = new PVector(100, 100);
}

void draw() {
  hb.TegnBold();
}

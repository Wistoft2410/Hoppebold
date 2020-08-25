ArrayList<Hoppebold> nyHoppebold; 

void baggrund() {
  background(145, 200, 250);
  fill(150);
  ellipse(250, 750, 700, 700);
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

void setup() {
  size(500, 500);
  nyHoppebold = new ArrayList<Hoppebold>();

  for (int i=0; i < 2; i++)
    nyHoppebold.add(new Hoppebold(1, 2, 3));
}

void draw() {
  clear();
  baggrund();


  for (Hoppebold nyHoppebold : nyHoppebold) {
    nyHoppebold.applyForce(gravity);
    nyHoppebold.applyForce(wind);

    nyHoppebold.bounceFraBaggrund();
    nyHoppebold.checkEdges();
    nyHoppebold.col();

    nyHoppebold.display();
    nyHoppebold.update();
  }
}

void keyPressed() {
  if (key == 'r') {
    println("Reset");
    frameCount =-1;
  }
}

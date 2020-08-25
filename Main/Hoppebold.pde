PVector wind = new PVector(0.01, 0); 
PVector gravity = new PVector(0, 0.1); 

class Hoppebold {

  PVector location = new PVector();
  PVector velocity= new PVector();
  PVector acceleration= new PVector();

  float mass;

  Hoppebold(float tempMass, int tempX, int tempY) {
    mass = tempMass;
    location.x = tempX + random(0, 200);
    location.y = tempY + random(0, 200);
  }

  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  }

  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }

  void display() {
    stroke(0);
    
    //Hoppebold
    fill(255);
    ellipse(location.x, location.y, mass*16, mass*16);
  }

  void checkEdges() {
    if (location.x > width) {
      location.x = width;
      velocity.x *= -1;
    } else if (location.x < 0) {
      velocity.x *= -1;
      location.x = 0;
    }

    if (location.y > height) {
      velocity.y *= -1;
      location.y = height;
    }
  }


  void bounceFraBaggrund() {
    if (dist(location.x, location.y, 250, 750) < 350) {
      velocity.y *= -1;
    }
  }

  void col() {
    for (Hoppebold nyHoppebold : nyHoppebold) {
      if (nyHoppebold != this) {
        if (dist(location.x, location.y, nyHoppebold.location.x, nyHoppebold.location.y) < mass*16 ) {
          velocity.x *=-1; 
          velocity.y *=-1;
        }
      }
    }
  }

  void keyPressed() {
    if (key == UP) {
    }
    if (key == LEFT) {
    }
    if (key == DOWN) {
    }
    if (key == RIGHT) {
    }
  }
}

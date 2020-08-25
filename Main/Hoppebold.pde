PVector wind = new PVector(0.01, 0); 
PVector gravity = new PVector(0, 0.1); 

Hoppebold hb = new Hoppebold(1);

PVector location;
PVector velocity;
PVector acceleration;

float mass;

class Hoppebold {

  Hoppebold(float tempMass) {
    mass = tempMass;
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

  void keyPressed() {
    if(key = UP){}
    if(key = LEFT){ }
    if(key = DOWN){  }
    if(key = RIGHT){ }
  }

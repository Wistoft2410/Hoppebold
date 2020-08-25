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
    if (key == UP) {
    }
    if (key == LEFT) {
    }
    if (key == DOWN) {
    }
    if (key == RIGHT) {
    }
  }

    void Baggrund() {
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
  }

//This is hoppebold class 
class Hoppebold {
  float x;
  float y; 

  Hoppebold(float tempX, float tempY) {
    tempX = x;
    tempY = y; 
  }

  void TegnBold() {
    location.add(velocity);
    ellipse(location.x+x, location.y+y, 30, 30);
  }

  void Tyndekraft(){
    if (location.y <= height+15){
      location.add(gravity);
    }
    
    if (location.y >= height-15){
     location.sub(gravity); 
    }
}

  void Reflekter() {
  }
}

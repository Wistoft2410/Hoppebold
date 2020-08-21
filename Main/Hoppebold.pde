class Hoppebold{
//class variabler
  float posX; float posY; 
  float r = random(0,width);
  
  PVector boldPos;
  PVector location;
  PVector acceleration;
  
  
 
  void TegnBold(){
    boldPos = new PVector();
    location = new PVector(100,100);
    boldPos.add(location);
    ellipse(boldPos.x, boldPos.y, 30, 30);
   
    
  }
  
  void Tyndekraft(){
  
  }  
  
  void Reflekter(){
  
  }
  
  
  
}

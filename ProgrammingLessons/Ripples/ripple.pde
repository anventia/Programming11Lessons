class Ripple {
  // instance variables //
  float x,y, size;
   
  // constructor //
  Ripple() {
    x = random(width);
    y = random(height);
    size = random(100);
  }
  
  // behaviour //
  void show() {
    stroke(255, map(size, 0,100, 255,0));
    strokeWeight(1);
    
    circle(x,y, size);
  }
  
  void act() {
    size += 2;
    if (size >= 100) {
      size = 0;
      //x = random(width);
      //y = random(height);
      x = mouseX; y = mouseY;
    }
  }
  
}

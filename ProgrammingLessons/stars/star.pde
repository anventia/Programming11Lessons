class Star {
  // instance variables //
  float x,y, vx,vy, size;
  color sFill;
  
  // constructor //
  Star() {
    x = random(0, width);
    y = random(0, height);
    vy = random(1, 5);
    if (vy >4.9) vy = 10;  // A few faster, larger stars
    if (vy >4.7 && vy < 10) vy = 7;  // ^
    vx = vy/4;
    size = vy/2;
    sFill = starColor[int(random(0,4))];
  }
  
  // behaviour
  void show() {
    fill(sFill);
    square(x,y, size);
  }
  
  void act() {
    x += vx;
    y += vy;
    if (y > height+size/2) y = -size;
    if (x < 0-size/2) x = width+size/2;
    if (x > width+size/2) x = 0-size/2;
  }
}

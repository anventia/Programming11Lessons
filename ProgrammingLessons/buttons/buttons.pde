// buttons

color bg, green, blue, purple, output;

void setup() {
  size(400, 300);
  
  bg = #E5FFFA;
  green = #49FA79;
  blue = #497CFA;
  purple = #D089EA;
  output = bg;
}

void draw() {
  background(bg);
  strokeWeight(2);
  // Buttons 
  TactileCircularButton(50,50, 50, green);
  TactileCircularButton(50,150, 50, blue); 
  TactileCircularButton(50,250, 50, purple); 


  
  // Square
  rectMode(CENTER);
  fill(output);
  square(250,150, 200);
}

void mouseReleased() {
  if (dist(50,50, mouseX,mouseY) < 25) {
    output = green;
  }
  if (dist(50,150, mouseX,mouseY) < 25) {
    output = blue;
  }
  if (dist(50,250, mouseX,mouseY) < 25) {
    output = purple;
  }
}

void TactileCircularButton(int x, int y, int diameter, color coloring) {
  if (dist(x,y, mouseX,mouseY) < diameter/2) {
    stroke(coloring);
  } else {
    stroke(bg);
  }
  fill(coloring);
  circle(x,y, diameter);
  
  stroke(bg);
}

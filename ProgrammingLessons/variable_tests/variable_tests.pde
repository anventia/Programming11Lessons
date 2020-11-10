// Brendan Chen
// Animation Lesson 
// 2020/09/17

int csize;
boolean sswitch;

void setup() {
  size(600, 600);
  csize = 0;
  sswitch = false;
}

void draw() {
  background(255);
  fill(#4081FF);
  strokeWeight(30);
  stroke(#4081FF); 
  circle(300,300, csize);
  if (sswitch == false) {
    csize = csize + 5;
  }
  else {
    csize = csize - 5;
  }
  if (csize > 600) {
    sswitch = true;
  }
  if (csize < 0) {
    sswitch = false;
  }
}

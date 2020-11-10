Ripple[] ripple;
int numRipples;

void setup() {
  size(1200, 800, P2D); 
  rectMode(CENTER);
  noFill();

  numRipples = 100;
  ripple = new Ripple[numRipples];
  int i = 0;
  while (i < numRipples) {
    ripple[i] = new Ripple();
    i += 1;
  }
  
  
}

void draw() {
  background(0);
  //fill(0, 50);
  //rect(width/2,height/2, width,height);
  
  int i = 0;
  while (i < numRipples) {
    ripple[i].show();
    ripple[i].act();
    i += 1;
  }
}

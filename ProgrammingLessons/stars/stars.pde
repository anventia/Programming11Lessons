Star[] star;
int numStars;

color[] starColor;

void setup() {
  size(1200, 800); 
  rectMode(CENTER);
  noStroke();
  
  starColor = new color[5];
  starColor[0] = #FFFFFF;  // White
  starColor[1] = #FFAAF1;  // Pink
  starColor[2] = #D29EFC;  // Purple
  starColor[3] = #A49EFC;  // Blue
  starColor[4] = #FF4047;  // Red
  
  numStars = 200;
  star = new Star[numStars];
  int i = 0;
  while (i < numStars) {
    star[i] = new Star();
    i += 1;
  }
  
  
}

void draw() {
  background(0);
  //fill(0, 50);
  //rect(width/2,height/2, width,height);
  
  int i = 0;
  while (i < numStars) {
    star[i].show();
    star[i].act();
    i += 1;
  }
}

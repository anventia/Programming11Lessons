

color lightgrey = #F7F7F7;
color darkgrey = #EAEAEA;
color lightblue = #D9F5FA;
color fillColor = #FFFFFF;
int toggle = 1;
int buttonY = 50;


void setup() {
  size(400, 300);
}


void draw() {
  background(lightgrey);
  
  if (toggle == 1) {
    buttonY = 50;
  } else {
    buttonY = 175;
  }
  rectButton(50,buttonY, 300,75, 10);

}

void rectButton(int x,int y, int w,int h, int r) {
  fill(fillColor);
  stroke(darkgrey);
  strokeWeight(2);
  rect(x,y, w,h, r);
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fillColor = lightblue;
  } else {
    fillColor = #FFFFFF;
  }
}

void mouseReleased() {
  if (mouseX > 50 && mouseX < 350 && mouseY > buttonY && mouseY < buttonY+75) {
    toggle = toggle * -1;
  }
}

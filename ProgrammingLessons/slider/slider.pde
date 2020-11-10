

float sliderX = 200;

color blue = #4B85FF;
color darkgrey = #B4B4B4;
color lightgrey = #DBDCDE;

void setup() {
  size(400, 300);
}

void draw() {
  stroke(255);
  strokeWeight(52);
  line(77,150, 323,150);
  stroke(lightgrey);
  strokeWeight(42);
  line(77,150, 323,150);
  stroke(darkgrey);
  line(77,150, sliderX,150);
  fill(blue);
  strokeWeight(4);
  circle(sliderX,150, 38);
}

void mouseDragged() {
 controlSlider();
}

void mousePressed() {
 controlSlider();
}

void controlSlider() {
  if (mouseX > 56 && mouseX < 344 && mouseY > 150-21 && mouseY < 150+21) {
   if (mouseX < 77) {
     sliderX = 77;
   } else if (mouseX > 323) {
     sliderX = 323;
   } else {
     sliderX = mouseX;
   }
    
 }
}

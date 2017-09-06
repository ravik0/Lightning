int xBegin = 200;
int yBegin = 0;
int xEnd;
int yEnd;
void setup() {
  size(400,400);
  background(0,0,0);
}
void draw() {
  strokeWeight(5);
  stroke(random(0,255),random(0,255),random(0,255));
  xEnd = xBegin + (int)(Math.random()*random(-9,9));
  yEnd = yBegin + (int)(Math.random()*9);
  line(xBegin,yBegin,xEnd,yEnd);
  xBegin = xEnd;
  yBegin = yEnd;
  if (yBegin >= 400) {
    yBegin = 0;
    xBegin = 200;
    noLoop();
  }
}
void mousePressed() {
  redraw();
  loop();
}
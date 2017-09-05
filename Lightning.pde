int xBegin = 200;
int yBegin = 0;
int xEnd;
int yEnd;
void setup() {
  size(400,400);
  noLoop();
  background(0,0,0);
}
void draw() {
  strokeWeight(5);
  stroke(random(0,255),random(0,255),random(0,255));
  xEnd = xBegin + (int)(random(-9,9));
  yEnd = yBegin + (int)(random(0,9));
  line(xBegin,yBegin,xEnd,yEnd);
  xBegin = xEnd;
  yBegin = yEnd;
}
void mousePressed() {
  redraw();
}
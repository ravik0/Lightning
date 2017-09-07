int xBegin = 200;
int yBegin = 30;
int xEnd;
int yEnd;
void setup() {
  size(400,400);
  background(0,0,0);
}
void draw() {
  fill(#C15664);
  noStroke();
  ellipse(0,15,150,40);
  ellipse(100,15,150,40);
  ellipse(200,15,150,40);
  ellipse(300,15,150,40);
  ellipse(400,15,150,40);
  fill(#5E34EA);
  text("Kim Jong Un's Fun Vehicle of Best Korea", 100, 20);
  fill(#1268C1);
  rect(0,350,400,60);
  fill(#C11229);
  text("Stupid American Pigs", 150, 375);
  strokeWeight(5);
  stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  xEnd = xBegin + (int)(Math.random()*(Math.random()*19-9));
  yEnd = yBegin + (int)(Math.random()*9);
  line(xBegin,yBegin,xEnd,yEnd);
  xBegin = xEnd;
  yBegin = yEnd;
  if (yBegin >= 350) {
    yBegin = 15;
    xBegin = 200;
    noLoop();
  }
}
void mousePressed() {
  redraw();
  loop();
}
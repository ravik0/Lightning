int xBegin = 200;
int yBegin = 55;
int xEnd;
int yEnd;
void setup() {
  size(400,400);
  background(0,0,0);
}
void draw() {
  fill(#C15664);
  noStroke();
  rect(150,15,100,40);
  rect(250,35,40,10);
  rect(290,15,20,40);
  rect(130,20,20,20);
  fill(#21408E);
  rect(135,25,10,10);
  fill(0);
  textSize(9);
  textAlign(CENTER);
  text("Kim Jong Un's Fun Vehicle of Best Korea", 150, 20,100,150);
  fill(#1268C1);
  rect(0,350,400,60);
  fill(#31D32F);
  rect(100,350,200,30);
  fill(#D39009);
  rect(100,350,10,30);
  fill(#0965D3);
  rect(190,365,10,15);
  fill(0);
  textSize(10);
  text("Stupid American Pigs", 200, 360);
  noFill();
  stroke(255);
  ellipse(350,380,30,30);
  ellipse(350,380,20,20);
  ellipse(350,380,10,10);
  ellipse(400,380,10,10);
  ellipse(400,380,15,15);
  strokeWeight(5);
  stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  xEnd = xBegin + (int)(Math.random()*(Math.random()*19-9));
  yEnd = yBegin + (int)(Math.random()*9);
  line(xBegin,yBegin,xEnd,yEnd);
  xBegin = xEnd;
  yBegin = yEnd;
  if (yBegin >= 350) {
    yBegin = 55;
    xBegin = 200;
    noLoop();
  }
}
void mousePressed() {
  redraw();
  loop();
}
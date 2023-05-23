void setup() {
  size(500, 500);
}
void draw() {
  background(255);
  rect(0, 0, 100, 100);
  line(0, 0, width, 0);

  push();
  translate(100, 50);
  rotate(radians(frameCount));
  rect(0, 0, 100, 100);
  line(0, 0, width, 0);
  pop();
  translate(width/2, height/2);
  rotate(radians(mouseX));
  rectMode(CENTER);
  rect(0, 0, 80, 80);

  push();

  pop();

  push();
  translate(350, 250);
  rect(0, 0, 100, 100);
  line(0, 0, width, 0);
  pop();
}

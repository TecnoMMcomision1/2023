float rotacion = 1;
void setup() {
  size(500, 500);
}
void draw() {
  background(255);
  planeta(width/2, height/2, 150, 2);
  planeta(350, 150, 80, 4);
  planeta(50, 350, 50, rotacion);
}

void planeta(int x, int y, int diam, float rotar) {
  push();
  translate(x, y);
  rotate(radians(frameCount*rotar));
  fill(250);
  ellipse(0, 0, diam, diam);
  fill(200);
  ellipse(0, 0, diam/2, diam);
  fill(100);
  ellipse(diam*2, 0, diam/4, diam/2);
  pop();
}

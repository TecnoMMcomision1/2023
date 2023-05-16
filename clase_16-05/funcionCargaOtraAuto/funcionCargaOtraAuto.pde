int px;
void setup() {
  size(500, 500);
}
void draw() {
  background(0);
  auto(150, 222, 300, 150, color(255, 0, 0));
  auto(px, 300, 80, 60, color(0, 250, 255));
  rueda(50, 50, 50);
  px++;
  if (px>width) {
    px = 0;
  }
}
void auto(int x, int y, int ancho, int alto, color carroceria) {
  strokeWeight(1);
  fill(carroceria);
  rect(x, y, ancho, alto);
  fill(255, 255, 0);
  rect(x, y-alto, ancho/3, alto);
  rueda(x, y+alto, ancho/4);
  rueda(x+ancho, y+alto, ancho/4);
}
void rueda(int rx, int ry, int tam) {
  push();
  translate(rx, ry);
  rotate(radians(frameCount)*1);
  strokeWeight(2);
  fill(100);
  ellipse(0, 0, tam, tam);
  line(-tam/2, 0, tam/2, 0);
  line(0, -tam/2, 0, tam/2);
  fill(200);
  ellipse(0, 0, tam/4, tam/4);
  pop();
}

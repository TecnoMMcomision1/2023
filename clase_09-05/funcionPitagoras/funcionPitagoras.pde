int diametro;
void setup() {
  size(400, 400);
  textSize(30);
  diametro = 100;
}
void draw() {
  background(0);
  stroke(255, 255, 0);
  line(mouseX, mouseY, 0, 0);
  float distan = dist(mouseX, mouseY, 0, 0); // funcion dist()
  fill(255);
  text(int(conPitagoras(mouseX, mouseY, 0, 0))+" Pitagoras", 50, 300);
  text(int(distan)+" funcion dist()", 50, 350);
  float distancia = dist(mouseX, mouseY, 200, 200);
  if (distancia< diametro/2) {
    fill(255, 0, 0);
  } else {
    fill(0, 255, 0);
  }
  ellipse(200, 200, diametro, diametro);
}

float conPitagoras(int x1, int y1, int x2, int y2) {
  float calculo = sqrt(sq(x2-x1) + sq(y2-y1));
  return calculo;
}

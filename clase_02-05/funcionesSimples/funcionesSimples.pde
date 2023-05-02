int px; // variable global
int py = -300;
void setup() {
  size(500, 500);
}
void draw() {
  background(255);
  //cuadrado();
  //rect(100, 100, 200, 200);
  cuadra(mouseX, mouseY, 50, 250);
  cuadra(px, 0, 250, 50);
  cuadra(px, py, 300, 250);
  cuadra(400, 200, 50, 400);
  px++;
  py += 2;
}

void cuadra(int px, int py, int ancho, int alto) {//función con parámetros (valores potenciales)
  line(px, py, px+ancho, py);
  line(px+ancho, py, px+ancho, py+alto);
  line(px+ancho, py+alto, px, py+alto);
  line(px, py+alto, px, py);
}
void cuadrado() { // función de empaqueta código, no abusar mucho
  line(100, 100, 300, 100);
  line(300, 100, 300, 300);
  line(300, 300, 100, 300);
  line(100, 300, 100, 100);
}

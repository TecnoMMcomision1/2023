int cantidad;
int ancho;
void setup() {
  size(500, 500);
  cantidad = 25;
  ancho = width/cantidad;
}
void draw() {
  background(0);
  for (int i=0; i<mouseX; i+= 25) {
    rect(i, 0, 25, 100);
  }
  for (int i=0; i<cantidad; i++) {
    rect(i*ancho, 150, ancho, 100);
  }

  for (int i=0; i<width; i+=ancho) {
    rect(i, 300, ancho, 100);
  }
}

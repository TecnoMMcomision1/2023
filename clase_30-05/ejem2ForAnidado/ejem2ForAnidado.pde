int cant= 10;
int ancho;
void setup() {
  size(500, 500);
  ancho = width/cant;
}
void draw() {
  background(0);
  for (int x=0; x<cant; x++) {
    for (int y=0; y<cant; y++) {
      if ((x+y)%2==0) {
        fill(255, 0, 0);
      } else {
        fill(200);
      }
      rect(x*ancho, y*ancho, ancho, ancho);
    }
  }
}

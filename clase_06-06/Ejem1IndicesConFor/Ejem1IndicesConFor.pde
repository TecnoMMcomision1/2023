int cant = 10; // cantidad de columnas
int ancho;
boolean indices;
void setup() {
  size(500, 500);
  ancho = width/cant;
  textSize(18);
  textAlign(CENTER);
}
void draw() {
  background(0);
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      noFill();
      stroke(255, 255, 0);
      rect(i*ancho, j*ancho, ancho, ancho);
      fill(255);
      if (indices) { // si indices es true muestra cuándo suman según su ubicación
        text(sumadeIndicesCheeeee(i, j), i*ancho+ancho/2, j*ancho+ancho/2);
      } else {
        // escribe el valor de i y el de j según su ubicación
        text(i+" | "+j, i*ancho+ancho/2, j*ancho+ancho/2);
      }
    }
  }
}
void mousePressed() {
  indices = !indices;
}
// función básica para calcular la suma de los indices de los for
int sumadeIndicesCheeeee(int x, int y) {
  int sumariola = x+y;
  return sumariola;
}

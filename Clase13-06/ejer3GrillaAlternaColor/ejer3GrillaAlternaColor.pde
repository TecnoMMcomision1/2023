int cant = 10;
int tam;
void setup() {
  size(500, 500);
  tam = width/cant;
}
void draw() {
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      if (estoySobreCelda(i, j, tam, tam)) {
        //if (mouseX>i*tam && mouseX<i*tam+tam && mouseY>j*tam && mouseY<j*tam+tam) {
        fill(0);
      } else {
        fill(255);
      }
      rect(i*tam, j*tam, tam, tam);
    }
  }
}
boolean estoySobreCelda(int x, int y, int ancho, int alto) {
  if (mouseX>x*ancho && mouseX<x*ancho+ancho && mouseY>y*alto && mouseY<y*alto+alto) {
    return true;
  } else {
    return false;
  }
}

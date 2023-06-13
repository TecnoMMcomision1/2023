int cant = 10;
int tam;
color [][] relleno;
void setup() {
  size(500, 500);
  tam = width/cant;
  relleno = new color[cant][cant];
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      relleno[i][j] = color(random(0, 255), random(0, 255), random(0, 255));
    }
  }
}
void draw() {
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      if (estoySobreCelda(i, j, tam, tam)) { // aplicamos la función
        //if (mouseX>i*tam && mouseX<i*tam+tam && mouseY>j*tam && mouseY<j*tam+tam) {
        relleno[i][j]= color(0);
      }
      fill(relleno[i][j]);
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

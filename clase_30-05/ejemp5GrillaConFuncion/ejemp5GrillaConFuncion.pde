int cant = 10;
int tam;
boolean orientacion;
void setup() {
  size(500, 500);
  tam = width/cant;
}
void draw() {
  background(0);
  //tam = width/cant;
  //lineasDegradadas(50, 50, 200, 250);
  for (int x=0; x<cant; x++) {
    for (int y=0; y<cant; y++) {
      if (sentido(x, y)) {
        orientacion = true;
      } else {
        orientacion = false;
      }
      lineasDegradadas(x*tam, y*tam, tam, tam, orientacion);
    }
  }
}
boolean sentido(int coso, int cosa ) {
  if ((coso+cosa)%2==0) {
    return true;
  } else {
    return false;
  }
}
void keyPressed() {
  save("data/mimagen.png");
  //ant++;
}
void lineasDegradadas(int x, int y, int ancho, int altura, boolean leToca) {
  for (int l=y; l<y+altura; l++) {
    float borde = map(l, y, y+altura, 255, 20);
    if (leToca) {
      stroke(255, 255, 0, borde);
    } else {
      stroke(255, 255, 0, 255-borde);
    }
    line(x, l, x+ancho, l);
  }
}

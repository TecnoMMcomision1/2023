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
      //float tam = map(x, 0, cant-1, ancho, ancho/4 );
      float tam = map(x+y, 0, cant-1+cant-1, ancho, ancho/4 );
      if ((x+y)%2==0) {
        fill(255, 0, 0);
        //ellipseMode(CORNER);
        ellipse(x*ancho+ancho/2, y*ancho+ancho/2, ancho, ancho);
      } else {
        fill(200);
        rect(x*ancho, y*ancho, tam, tam);
      }
    }
  }
}

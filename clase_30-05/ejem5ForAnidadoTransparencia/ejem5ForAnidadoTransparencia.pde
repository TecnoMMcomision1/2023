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
      float distan = dist(mouseX, mouseY, width/2, height/2);
      float tam = map(distan, 0, mediaDiagonal(0, 0, width/2, height/2), ancho, ancho/4 );
      float tonalidad = map(distan, 0, mediaDiagonal(0, 0, width/2, height/2), 25, 255 );
      if ((x+y)%2==0) {
        fill(255, 0, 0, tonalidad);
        //ellipseMode(CORNER);
        ellipse(x*ancho+ancho/2, y*ancho+ancho/2, ancho, ancho);
      } else {
        fill(200);
        rectMode(CENTER);
        rect(x*ancho+ancho/2, y*ancho+ancho/2, tam, tam);
      }
    }
  }
}
float mediaDiagonal(int a, int b, int c, int d) {
  float resultado = dist(a, b, c, d)/2;
  return resultado;
}

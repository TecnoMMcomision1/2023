void setup() {
  size(500, 500);
}
void draw() {
  background(0);
  /* en el draw() aplicamos, utilizando un for, la cantidad de repeticiones de la función flor*/
  for (int i=0; i<10; i++) {
    float tam = map(i, 0, 9, 20, 60);
    //int tam = 40;
    flor(width/2, height/2, i* tam/2, tam, 12);
  }
}
/*Esta función utiliza parámetros de ubicación, separación del centro, un tamaño y cuántas repeticiones
de la figura ellipse vamos a utilizar*/
void flor(int x, int y, float sep, float ancho, int cant) {
  for (int i=0; i<cant; i++) {
    push();
    translate(x, y);
    // cada repetición reubica la figura de acuerdo a este cálculo
    rotate(radians(i*(360/cant))); // con 360/cant nos aseguramos una separación uniforme
    ellipse(0, sep, ancho, ancho/2);
    pop();
  }
}

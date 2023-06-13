int cant = 5;
int tam;
void setup() {
  size(500, 500);
  tam = width/cant;
}
void draw() {
  background(0);
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      rect(i*tam, j*tam, tam, tam);
      for (int e=0; e<10; e++) {
        float diam = map(e, 0, 10, tam, 5);
        fill(255);
        ellipse(i*tam+tam/2, j*tam+tam/2, diam, diam);
      }
    }
  }
}

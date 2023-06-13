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
      noFill();
      rect(i*tam, j*tam, tam, tam);
      for (int e=0; e<10; e++) {
        float diam = map(e, 0, 10, tam, 1);
        float tono = map(e, 0, 10, 50, 255);
        noStroke();
        fill(200, 150, 20, tono );
        ellipse(i*tam+tam/2, j*tam+tam/2, diam, diam);
      }
    }
  }
}

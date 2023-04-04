int posicion;
int tamano;
void setup() {
  size(400, 400);
  posicion = 100;
  tamano = 50;
}

void draw() {
  background(255);
  rect(posicion, 0, 50, tamano);
  posicion = posicion +1;
  tamano = tamano+1;
}

String [] fab4; // declaro arreglo de tipo String

void setup() {
  size(600, 400);
  fab4 = new String[4]; // le damos dimensión 
  // llenamos cada una de sus posiciones con un valor
  fab4[0] = "Paul";
  fab4[1] = "John";
  fab4[2] = "George";
  fab4[3] = "Ringo";
  textSize(22);
}
void draw() {
  background(0);
  for (int i=0; i<4; i++) {
    text(fab4[i], 50, 100+i*30); // agrego 100 para separar del borde superior
  }
}

String [] guitars = {"Hendrix", "Clapton", "Blackmore", "Gilmour", "Beck", "Giardino", "Bonamassa", "Kotzen", "Slash"};
int numero;
void setup() {
  size(600, 400);
  textSize(22);
}
void draw() {
  background(0);

  for (int i=0; i<guitars.length; i++) { // .length permite acceder a la longitud del arreglo
    text(guitars[i], 400, 100+i*30);
  }
  text(guitars[numero], 200, 50);
}
void mousePressed() { // al presionar cambia el valor del indice del arreglo
  if (numero>=guitars.length-1) {
    numero = 0;
  } else {
    numero ++;
  }
}

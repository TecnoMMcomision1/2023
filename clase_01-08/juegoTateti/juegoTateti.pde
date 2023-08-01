int cant = 3; // cantidad de columnas y filas
int tam; // ancho de la casilla
int cuenta; // esto será para contar quién de los jugadores tiene el turno

boolean [][] juga1 = new boolean[cant][cant]; // cada arreglo representa un jugador
boolean [][] juga2 = new boolean[cant][cant];

void setup() {
  size(600, 600);
  reset(); // una función con los valores de inicio, para que se pueda volver a comenzar
  tam = width/cant;
}
void draw() {
  background(255);
  tablero(cant, width/cant, false, color (0, 0, 255)); // dibujamos el tablero
 // al tratarse de una grilla, todo lo controlamos/gestionamos con un for anidado 
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      if (juga1[i][j]) { // si es true j
        circulo(i*tam+tam/2, j*tam+tam/2, tam/3);
      }
      if (juga2[i][j]) {
        cruz(i*tam, j*tam, tam, tam);
      }
    }
  }
}
void mousePressed() {
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      if (sobreCasilla(i*tam, j*tam, tam, tam)) {
        juga2[i][j] = true;
      }
    }
  }
}
boolean sobreCasilla(int x, int y, int ancho, int alto) {
  return mouseX>x&&mouseX<x+ancho && mouseY>y && mouseY<y+alto;
}

void circulo(int x, int y, int tam) {
  fill(255, 0, 0);
  strokeWeight(4);
  stroke(100);
  ellipse(x, y, tam, tam);
}
void cruz(int x, int y, int ancho, int alto) {
  strokeWeight(5);
  stroke(0, 0, 255);
  line(x, y, x+ancho, y+alto);
  line(x, y+alto, x+ancho, y);
}
void reset() {
  cuenta = 0;
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      juga1[i][j] = false;
      juga2[i][j] = false;
    }
  }
}

void tablero(int cant, int tam, boolean alternado, color relleno) { // tablero multifunción
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {

      if ((i+j)%2==0 && alternado) {
        fill(relleno);
      } else {
        fill(250);
      }
      strokeWeight(2);
      rect(i*tam, j*tam, tam, tam);
    }
  }
}

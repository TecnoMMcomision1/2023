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
  println(cuenta);
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

      /// condiciones para ganar

      if (juga1[0][0] && juga1[1][0] && juga1[2][0] || // fila superior
        juga1[0][1] && juga1[1][1] && juga1[2][1] || // medio
        juga1[0][2] && juga1[1][2] && juga1[2][2]|| // fila inferior
        //// completar filas verticales (columnas)
        juga1[0][2] && juga1[1][1] && juga1[2][0] || // diag ascendente
        juga1[0][0] && juga1[1][1] && juga1[2][2]) { // diag descendente

        aviso("GANA JUGADOR 1", width/2, height/2);
      }
      if (juga2[i][0] && juga2[i][1] && juga2[i][2] ||
        juga2[0][j] && juga2[1][j] && juga2[2][j] ||
        juga2[0][0] && juga2[1][1] && juga2[2][2] || // diag descendente
        juga2[0][2] && juga2[1][1] && juga2[2][0]) { // diag ascendente

        aviso("GANA JUGADOR 2", width/2, height/2);
      }
    }
  }
}
void aviso (String gana, int x, int y) { // habría que agregar parámetros para el texto
  textSize(25);
  textAlign(CENTER, CENTER);

  float ancho = textWidth(gana);
  fill(200);
  rect(x-ancho/2, y-15, ancho, 30);
  fill(255, 0, 0);
  text(gana, x, y);
}
void mousePressed() { // según presionamos en una casilla dibuja un jugador ú otro
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      if (sobreCasilla(i*tam, j*tam, tam, tam) && juga1[i][j]==false && !juga2[i][j]) {
        if (cuenta%2==0) {
          juga1[i][j] = true;
        } else {
          juga2[i][j] = true;
        }
        cuenta++;
      }
    }
  }
}
boolean sobreCasilla(int x, int y, int ancho, int alto) {
  return mouseX>x&&mouseX<x+ancho && mouseY>y && mouseY<y+alto;
}

void circulo(int x, int y, int tam) { // Jugador 1
  fill(255, 0, 0);
  borde(4, color(100));

  ellipse(x, y, tam, tam);
}
void cruz(int x, int y, int ancho, int alto) { // Jugador 2
  borde(5, color(0, 0, 255)); // aplico función para grosor y color del borde
  //strokeWeight(5);
  //stroke(0, 0, 255);
  line(x, y, x+ancho, y+alto);
  line(x, y+alto, x+ancho, y);
}
void borde(int grosor, color filete ) {
  strokeWeight(grosor);
  stroke(filete);
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
void keyPressed() {
  reset();
}
void tablero(int cant, int tam, boolean alternado, color relleno) { // tablero multifunción
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {

      if ((i+j)%2==0 && alternado) {
        fill(relleno);
      } else {
        fill(250);
      }
      borde(2, color(0));

      rect(i*tam, j*tam, tam, tam);
    }
  }
}

int cant = 10;
void setup() {
  size(600, 600);
}
void draw() {
  background(0);
  float rotacion = map(mouseX, 0, width/2, 0, 360);
  /* mientras el mouseX se mueva entre 0 y la mitad de la pantalla, cada figura
  rotará entre 0 y 360 grados*/
  
  cuadra(150, 150, 300, rotacion, cant);
  cuadra(450, 150, 300, -rotacion, cant);
  cuadra(150, 450, 300, rotacion, cant);
  cuadra(450, 450, 300, -rotacion, cant);
}
void mousePressed() { // al presionar el mouse agregamos un cuadrado mas
  cant++;
}

void keyPressed() { // al presionar una tecla volvemos a 10 cuadrados
  cant = 10;
}

/*La función indica ubicación X, ubicación Y, el tamaño máximo, cuanto rota y cuantas repeticiones
de la figura rect() se dibujan */
void cuadra(int x, int y, int ancho, float rotar, int cantidad) { // la función 
  for (int i=0; i<cantidad; i++) {
    push();
    translate(x, y);
    rotate(radians(rotar));

    rectMode(CENTER);
    noFill();

    float tam = map(i, 0, cantidad-1, ancho, 20);
    float opacidad = map(i, 0, cantidad-1, 30, 250);
    stroke(255, 255, 0, opacidad);
    strokeWeight(3);
    rect(0, 0, tam, tam);

    pop();
  }
}

float ancho, alto; //
int cant = 12;
int medio;
boolean negro;
void setup() {
  size(400, 400);
  alto = height/cant;
  medio = width/2;
}
void draw() {
  background(0);
  negro = true; /* si le agregamos asignar valor inicial antes del for evitamos
   que se desajuste la grilla
   (aporte del compañero Diego Vega Salazar*/

  for (int i=0; i<width; i+=ancho) { // el límite es el ancho de la ventana
    for (int j=0; j<height; j+= alto) {
      float distan = dist(i, j, medio, j); // medimos distancia
      ancho = map(distan, medio, 0, alto, 2 ); // con map() promediamos distancia con ancho
      float tono = map(distan, medio, 0, 255, 20);
      if (negro) {
        fill(0, tono);
      } else {
        fill(255, 0, 0, tono);
      }
      rect(i, j, ancho, alto);
      negro = !negro;
    }
    //negro=!negro;
  }
}

void mousePressed() {
  medio = mouseX;
}

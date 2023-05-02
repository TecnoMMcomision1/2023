int pos;
void setup() {
  size(500, 500);
  pos = 100;
}
void draw() {
  background(255);
  cuadra(50, 50, 100, 50);
  
  
  if (estandoSobre(50, 50, 100, 50)) {// utilizo la función con valores concretos
    pos++;
  }
  
  ellipse(width/2, pos, 50, 50); // se mueve cuando estoy sobre la zona del botón
}

// funcion que devuelve al programa si el mouse está en una zona en particular
boolean estandoSobre(int px, int py, int ancho, int alto) {  // cargo valores abstractos en la función
  boolean cumple = mouseX>px && mouseX<px+ancho && mouseY>py && mouseY<py+alto==true;
  return cumple; // return devuelve si es verdadero o falso que estoy en una zona
}

// 
void cuadra(int px, int py, int ancho, int alto) {//función con parámetros (valores potenciales)
  line(px, py, px+ancho, py);
  line(px+ancho, py, px+ancho, py+alto);
  line(px+ancho, py+alto, px, py+alto);
  line(px, py+alto, px, py);
}

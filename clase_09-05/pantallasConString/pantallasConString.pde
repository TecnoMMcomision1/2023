String pantalla;
int cuenta;
int pos, tama;
void setup() {
  size(640, 480);
  pantalla = "inicio";
  cuenta = 0;
  pos= 480;
  textSize(25);
  textAlign(CENTER);
}
void draw() {
  background(0);
  cuenta++;
  if (pantalla.equals("inicio")) { // comparación variable de tipo String (de texto)
    textAlign(CENTER);
    text("Presentación del lugar \n muy lindo para pasear", width/2, pos);
    pos--;
  } else if (pantalla.equals("segunda")) { // comparación variable de tipo String (de texto)
    textAlign(CORNER);
    text("Seguimos mostrando \n mi paisaje", 50, 100);
  } else if (pantalla.equals("tercera")) { // comparación variable de tipo String (de texto)
    textAlign(CENTER);
    text("Tercera pantalla del lugar ", width/2, 100);
  } else {
    textAlign(CENTER);
    textSize(tama);
    if (tama<50) {
      tama++;
    }
    text("termina la presentacion ", width/2, 300);
  }
  if (cuenta <180) {
    pantalla = "inicio";
  } else if (cuenta >=180 && cuenta < 360) {
    pantalla = "segunda";
  } else if (cuenta >=360 && cuenta < 480) {
    pantalla = "tercera";
  } else {
    pantalla = "otra";
  }
  text(pantalla, 50, 400);
}
void keyPressed() { // reinicio de todas las variables
  pantalla = "inicio";
  cuenta = 0;
  pos = 480;
}

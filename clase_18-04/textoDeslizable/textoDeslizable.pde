// Fulano de Tal
// tp1, Comisión 1
int posX;
PFont t;
void setup() {
  size(640, 480);
  t = loadFont("miletra.vlw");
  textFont(t, 35);
  textAlign(CENTER, CENTER);
  posX = 880;
}
void draw() {
  background(255);
  fill(150);
  // textSize(30);
  text("Esto es texto en pantalla", posX, height/2);
  if (posX>width/2) {
    posX --; // -- significa que resto de a uno
  }
}
  void mousePressed() {
    if (posX==width/2) {
      posX = 880;
    }
  }

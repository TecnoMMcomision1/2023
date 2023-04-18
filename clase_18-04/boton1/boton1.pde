int px, py, ancho, alto;
int posX = 200;
void setup() {
  size(400, 400);
  px = 50;
  py = 50;
  ancho = 100;
  alto = 50;
}
void draw() {
  background(0);


  if (mouseX>50 && mouseX <150 && mouseY>50 && mouseY<100 ) {
    fill(0, 200, 255);
  } else {
    fill(0, 0, 255);
  }
  rect(px, py, ancho, alto);
  fill(250, 150, 30);
  ellipse(posX, height/2, 100, 100);
}
void mousePressed() {
  if (mouseX>px && mouseX<px+ancho && mouseY>py && mouseY<py+alto) {
    posX += 10;
  }
  // posX = posX +10;
}

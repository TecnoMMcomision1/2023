boolean rojo;
void setup() {
  size(500, 500);
  background(128);
  rojo = false;
}
void draw() {
  if (rojo==true) {
    fill(255, 0, 0);
  } else {
    fill(0, 0, 255);
  }
  ellipse(mouseX, mouseY, 100, 100);
  // comentario en una linea
  println(keyCode);
}
void mousePressed() {
  /*if (rojo==true) {
   rojo = false;
   } else {
   rojo = true;
   }*/
  rojo = !rojo;
}
void keyPressed() {
  if (keyCode==' ') { // número es 32
    background(128);
    rojo = false;
  }
}

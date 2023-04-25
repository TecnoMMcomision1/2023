int x;
float numero;
String palabra;
boolean activo;
void setup() {
  size(640, 480);
  x = 0;
  background(255);
  activo = true;
}
void draw() {
  float borde = x*255/width;
  stroke(borde);
  line(x, 0, x, height/2);
  stroke(255-borde);
  line(x, height/2, x, height);
  if (x<=width && activo == true) {
    x++;
  }
  // x= x+1;
}
void mousePressed() {
  ellipse(mouseX, mouseY, 50, 50);
  if (x>=width) {
    background(255);
    x = 0;
  }
}
void keyPressed() {
  if (key=='d') {
    activo = false;
  }
  if (key=='a') {
    activo = true;
  }
}

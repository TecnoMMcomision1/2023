float va, vb;
void setup() {
  size(500, 500);
  textSize(30);
}
void draw() {
  background(0);
  text(promedio(4.2, 5.8), 50, 50);
  text(promedio(va, vb), 300, 50);
  text("va " +va, 300, 100);
  text("vb " +vb, 300, 150);

  text("es mayor?"+esMayor(va, vb), 50, 200);
}
boolean esMayor(float a, float b) {
  if (a>b) {
    return true;
  } else {
    return false;
  }
}
float promedio(float a, float b) { // calcula el promedio entre a y b
  float cuenta =  (a+b)/2;
  return cuenta;
}
void mousePressed() {
  va = random(100);
  vb = random(100);
}

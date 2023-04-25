void setup() {
  size(400, 400);
}
void draw() {
  background(0);
  fill(255, 0, 0);
  ellipse(100, 100, 200, 200);
  fill(0, 255, 0);
  ellipse(200, 100, 200, 200);
  fill(0, 0, 255);
  ellipse(300, 100, 200, 200);

  // con opacidad
  fill(255, 0, 0, 128);
  ellipse(100, 300, 200, 200);
  fill(0, 255, 0, 50);
  ellipse(200, 300, 200, 200);
  float mX = mouseX*255/400;
  /* promedio entre la posición del mouseX,
   el color que quiero lograr y la distancia a recorrer */
  fill(0, 0, 255, 255-mX);
  ellipse(300, 300, 200, 200);
  println("el mouseX está en: "+mX);
}

float py = 0;
float opacidad = 255;
float vel = 1;
float rojo, verde, azul;
void setup() {
  size(400, 400);
  textSize(40);
  textAlign(CENTER);
}
void draw() {
  background(0);
  opacidad = py*255/height;
  if (frameCount%60==0) { // cada segundo cambia
    rojo = random(150, 255);
    verde = random(150, 255);
    azul = random(150, 255);

    // vel = vel-0.1; // revisen esto
  }
  fill(rojo, verde, azul, 255-opacidad);
  text("PRESENTACION", width/2, py);
  if (py<height) {
    py = py+0.5 * vel;
  }
}

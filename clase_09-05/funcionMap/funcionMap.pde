float opacidad;
float tama;
int posy;
void setup() {
  size(400, 400);
  textSize(30);
  opacidad = 255;
  tama = 100;
}
void draw() {
  background(255);

  opacidad = map(mouseX, 0, width, 255, 0);
  fill(255, 0, 0, opacidad);
  text(opacidad, 50, 300);
  text("Este texto desaparece", 100, 100);
  tama = map(posy, 0, height/2, 100, 10);
  rect(0, posy, tama, tama);
  posy++;
}

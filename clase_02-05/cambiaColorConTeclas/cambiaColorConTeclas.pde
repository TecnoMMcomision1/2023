int px, py;
color relleno;
int tam;
void setup() {
  size(400, 400);
  px = width/2;
  py = height/2;
  relleno = color(255);
  tam = width/5; //
}
void draw() {
  background(0);
  fill(relleno);
  ellipse(px, py, tam, tam);
}
void keyPressed() {
  if (keyCode==RIGHT && px<width-tam/2) {
    px += tam;
    //px = px+100;
    relleno = color(255, 0, 0);
  }
  if (keyCode==LEFT && px> tam/2) {
    px -= tam;
    relleno = color(0, 0, 255);
  }
  if (keyCode==UP) { // completar subir
    py -= tam;
    relleno = color(0, 255, 0);
  }
  if (keyCode==DOWN) { // completar bajar
    py += tam;
    relleno = color(255, 255, 0);
  }
}

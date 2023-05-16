float px, py, dx, dy;
float vel;
int tam;
void setup() {
  size(400, 400);
  px = width/2;
  py = height/2;
  dx = random(-3, 3);
  dy = random(-3, 3);
  vel = 1;
  tam = 80;
  textSize(30);
}
void draw() {
  background(0);

  text("dx= "+dx, 50, 50);
  text("vel= "+vel, 300, 50);
  ellipse(px, py, tam, tam);
  px = px+dx *vel;
  py += dy *vel;
  // px = px+10;
  if (px>=width-tam/2 || px<tam/2) {
    dx = dx*-1;

    //vel = random(0.5, 1.5);
    // dx *= -1; // otra forma de sintaxis
  }
  if (py>=height-tam/2 || py<tam/2) {
    dy = dy*-1;
    //vel = random(0.5, 1.5);
    // dx *= -1; // otra forma de sintaxis
  }
}

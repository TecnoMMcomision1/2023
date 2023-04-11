float pX, pY;
int linea;
void setup() {
  size(600, 600);
  background(0);
}
void draw() {
  pX = random( 600);
  pY = random( 600);

  println(pX);
  line(linea, 0, linea, 600);
  stroke(255, 255, 0);
  strokeWeight(1);
  if (linea<300) {
    linea ++;
  }
  if (pX>300 && pY >300) {
    noStroke();
    fill(255);
    ellipse(pX, pY, 20, 20);
  } else if (pX<300 && pY <300) {
    fill(0, 255, 0);
    ellipse(pX, pY, 20, 40);
  } else {
    fill(255, 0, 0);
    rect(pX, pY, 30, 15);
  }
}


int segundos;
void setup() {
  size(400, 400);
  textAlign(CENTER);
  textSize(40);
}
void draw() {
  background(0);
  if (frameCount%60==0) {
    segundos++;
  }
  if (segundos<=3) {
    fill(0, 255, 255);
    rect(200, 200, 100, 250);
    text("primera pantalla", width/2, 100);
  } else if (segundos >3 && segundos <6) {
    fill(244, 255, 0);
    ellipse(200, 200, 100, 250);
    text("segundo pantalla", width/2, 100);
  } else {
    fill(0, 244, 0);
    rect(100, 300, 400, 45);
    text("tercera pantalla", width/2, 100);
  }

  fill(255, 0, 0);
  text(segundos, 100, 50);
  println(segundos);
}
void mousePressed() {
  segundos = 0;
}

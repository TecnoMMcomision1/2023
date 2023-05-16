boolean rojo;
void setup() {
  size(500, 500);
  rojo= true;
}
void draw() {
  background(255);
  for (int c=width; c>0; c = c-25) {
    if (rojo==true) {
      fill(255, 0, 0);
    } else {
      fill(255);
    }
    ellipse(width/2, height/2, c, c);
    rojo = !rojo;
  }
}

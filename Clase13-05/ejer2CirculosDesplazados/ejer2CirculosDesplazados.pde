int cant = 10;
void setup() {
  size(500, 500);
}
void draw() {
  background(0);
  for (int c=0; c<cant; c++) {
    float diam = map(c, 0, cant-1, width, 20);
    float posX = map(c, 0, cant-1, width/2, width-10);
    if (c%2==0) {
      fill(255, 0, 0);
    } else {
      fill(200);
    }
    ellipse(posX, height/2, diam, diam);
  }
}

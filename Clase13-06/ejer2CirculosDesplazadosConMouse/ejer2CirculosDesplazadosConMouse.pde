int cant = 20;
void setup() {
  size(500, 500);
}
void draw() {
  background(0);
  for (int c=0; c<cant; c++) {
    float diam = map(c, 0, cant-1, width, 20);
    float posX = map(c, 0, cant-1, width/2, mouseX);
    float posY = map(c, 0, cant-1, height/2, mouseY);
    float tonalidad = map(c, 0, cant-1, 20, 255);
    strokeWeight(10);
    if (c%2==0) {
      stroke(255, 0, 0, tonalidad);
    } else {
      stroke(200, tonalidad);
    }
    noFill();
    ellipse(posX, posY, diam, diam);
  }
}

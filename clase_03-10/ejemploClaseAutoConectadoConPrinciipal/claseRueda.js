class Rueda {
  constructor(d) {
    this.d = d;
  }
  dibujarRueda(x, y, vel) { // ubicación en X e Y y velocidad
    this.x = x;
    this.y = y;
    this.vel = vel;
    push();
    translate(this.x, this.y);
    rotate(radians(frameCount*this.vel));
    strokeWeight(2);
    fill(200);
    circle(0, 0, this.d);
    line(-this.d/2, 0, this.d/2, 0);
    line(0, -this.d/2, 0, this.d/2);
    fill(100);
    circle(0, 0, this.d/2);
    pop();
  }
}

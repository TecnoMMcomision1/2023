class Comportamiento {
  constructor(x, y, dx, dy, vert) {
    this.x = x;
    this.y = y;
    this.dx = random(-5, 5);
    this.dy = random(-5, 5);
    this.vert = vert;
  }
  mover() {
    if (this.x>width|| this.x<0) {
      this.dx *= -1;
    }
    if (this.y>height|| this.y<0) {
      this.dy *= -1;
    }
    if (this.vert) {
      this.y += this.dy;
    } else {
      this.x += this.dx;
    }
  }
}

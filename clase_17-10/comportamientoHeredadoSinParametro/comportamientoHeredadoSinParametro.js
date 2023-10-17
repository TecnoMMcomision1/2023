let prog;
function setup() {
  createCanvas(400, 400);
  prog = new Principal();
}
function draw() {
  background(200);
  prog.dibujar();
}
function mousePressed() {
  prog.cambiar();
}

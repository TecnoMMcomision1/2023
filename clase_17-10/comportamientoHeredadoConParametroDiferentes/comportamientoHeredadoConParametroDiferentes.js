let prog;
function setup() {
  createCanvas(400, 400);
  prog = new Principal(100,10); // cantidad de objetos a dibujar
}
function draw() {
  background(200);
  prog.dibujar();
}
function mousePressed() {
  prog.cambiar();
}

let principal;
function setup() {
  createCanvas(480, 480);
  principal = new Programa();
}

function draw() {
  background(100);
  principal.dibujar();
}
function mousePressed() {
  principal.accionarBotones();
}

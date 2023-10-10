let p;
function setup() {
  createCanvas(640, 480);
  p = new Principal();
}


function draw() {
  background(250);
  p.display();
  
}
function keyPressed() {
  p.moverPersonaje(keyCode);
}

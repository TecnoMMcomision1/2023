let r1, r2; // instancias de clase
let a1, a2;
function setup() {
  createCanvas(450, 450);
  r1 = new Rueda(80);
  r2 = new Rueda(120);
  a1 = new Auto(0, 100, 120, 50);
  a2 = new Auto(0, 300, 80, 60);
}


function draw() {
  background(250);
  r1.dibujarRueda(width/2, height/2, 1);
  r2.dibujarRueda(100, 180);
  a1.dibujarAuto();
  a2.dibujarAuto();
  
}

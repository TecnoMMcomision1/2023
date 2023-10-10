let a;
let m, m1;
let h;
let hijas = [];
function setup() {
  createCanvas(400, 400);
  a = new Abuela(width/2, height/2, 100);
  m = new Madre(100, 300, 80);
  m1 = new Madre(233, 138, 154);
  h = new Hija(200, 50, 80);
  for (let i=0; i<5; i++) {
    hijas[i] =new Hija(width/2, 40+i*80, 80);
  }
}


function draw() {
  background(200);
  a.dibujarAbuela();
  m.dibujarMadre();
  m1.dibujarMadre();
  h.dibujarHija();
  for (let i=0; i<5; i++) {
    hijas[i].dibujarHija();
  }
}

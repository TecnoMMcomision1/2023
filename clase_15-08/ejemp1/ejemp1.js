let imag = [];
let px = 50;
let num;
function preload() {
  for (let i=0; i<7; i++) {
    imag[i] = loadImage('data/horse'+i+'.png');
  }
}
function setup() {
  createCanvas(600, 400);
  num = 0;
}


function draw() {
  background(200);
  if (frameCount%5==0) {
    num = num%6;
    num++;
  }
  image(imag[num], px, 200);
  //ellipse(mouseX, mouseY, 40, 40);
  px++;
  if (px>width) {
    px = 0;
  }
}

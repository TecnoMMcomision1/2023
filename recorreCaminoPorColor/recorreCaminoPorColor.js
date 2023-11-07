let fondo;
let px, py, sep;
function setup() {
  createCanvas(500, 500);
  noStroke();
  fondo = loadImage("data/camino.jpg");
  fondo.resize(500, 500);
  px = 25;
  py = 25;
  sep = 18;
}

function draw() {
  image(fondo, 0, 0, 500, 500);
  fill(255, 0, 0);
  circle(px, py, 30);
  let der = get(px+sep, py);
  let izq = get(px-sep, py);
  let arr = get(px, py-sep);
  let aba = get(px, py+sep);
  if (keyIsPressed) {
    if (keyCode===RIGHT_ARROW && red(der)>50) {
      px++;
    } else if (keyCode===LEFT_ARROW && red(izq)>50) {
      px--;
    } else if (keyCode===UP_ARROW && red(arr)>50) {
      py--;
    } else if (keyCode===DOWN_ARROW && red(aba)>50) {
      py++;
    }
  }
}

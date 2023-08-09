let px = [];
let py =[];
let dx = [];
let dy = [];
let tam = 30;
let cant = 20;
let moverse=[];
function setup() {
  createCanvas(400, 400);
  for (let i=0; i<cant; i++) {
    px[i] = width/2;
    py[i] = height/2;
    dx[i] = random(-1, 1);
    dy[i] = random(-1, 1);
    moverse[i] = true;
  }
}


function draw() {
  background(200);

  for (let i=0; i<cant; i++) {
    circle(px[i], py[i], tam);
    if (moverse[i]) {
      px[i] += dx[i];
      py[i] += dy[i];
      // px[i] = px[i] + dx[i];
    }
  }
}
function mousePressed() {
  for (let i=0; i<cant; i++) {
    if (detener(px[i], py[i], tam)) {
      moverse[i] = false
    }
  }
}
function detener(x, y, diam) {
  let distan = dist(mouseX, mouseY, x, y );
  return distan < diam/2;
}

function keyPressed() {
  for (let i=0; i<cant; i++) {
    px[i] = width/2;
    py[i] = height/2;
    dx[i] = random(-1, 1);
    dy[i] = random(-1, 1);
  }
}

function setup() {
  createCanvas(500, 500);
  colorMode(RGB); // por defecto

  background(200);
  colorMode(HSB, 360, 100, 100);
}


function draw() {
 
  for (let i=0; i<width; i++) {
    let tono = map(i, 0, width, 0, 360);
    stroke(tono, 100, 100);
    line(i,0, i, height/2);
  }
  for (let i=0; i<width; i++) {
    let tono = map(i, 0, 360, 0, 360);
    stroke(tono, 100, 100);
    line(i,height/2, i, height);
  }
}

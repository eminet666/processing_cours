let myFont;

function preload() {
  myFont = loadFont('SpaceGrotesk-Light.otf');
}

var xpos = 50;
var speed = 1;

function setup() {
  createCanvas(windowWidth, windowHeight);
  textAlign(CENTER, CENTER);
  noCursor();
}

function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
}

function draw() {
  background('#f8fab8');
  strokeWeight(3);
  ellipseMode(CENTER);

  for (var x = 10; x < windowWidth; x = x + 40) {
    for (var y = 10; y < windowWidth; y = y + 40) {
      push();
      translate(x, y);
      dessiner();
      pop();
    }
  }

  if ((xpos > width - 50) || (xpos < 50)) {
    speed = speed * -1;
  }

  fill('#f8dc88');
  noStroke();
  ellipse(xpos, xpos, 80, 80);

  if (mouseIsPressed) {
    xpos = xpos + speed;
  } else {
    speed = speed * -1;
  }

  push();
  textSize(width / 12);
  textFont(myFont);
  fill(0);
  noStroke();
  text('diagonal', mouseX, mouseY);
  pop();
}

function dessiner() {
  fill(204, 240, 225);
  ellipse(10, 10, 30, 30);
}

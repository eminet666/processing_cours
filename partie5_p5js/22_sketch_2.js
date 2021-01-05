let myFont;
function preload() {
  myFont = loadFont('SpaceGrotesk-Light.otf');
}

var xpos = 50;
var speed = 1.8;


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
  rectMode(CENTER);

  xpos = xpos + speed;

  if ((xpos > width - 50) || (xpos < 50)) {
    speed = speed * -1;
  }

  fill(204, 240, 225);
  noStroke();


  if (mouseIsPressed) {
    ellipse(height / 2, xpos, 50, 50);
  } else {
    rect(height / 2, xpos, 50, 50);
  }


  push();
  textSize(width/12);
  textFont(myFont);
  fill(0);
  noStroke();
  text('vertical',mouseX, mouseY);
  pop();


  for (var x = 10; x < windowWidth; x = x + 40) {
    for (var y = 10; y < windowWidth; y = y + 40) {
      push();
      translate(x, y);
      dessiner();
      pop();
    }
  }

}

function dessiner() {
  fill('#f76a8c');
  rect(10, 10, 5, 5);
}

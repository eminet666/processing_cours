let myFont;
function preload() {
  myFont = loadFont('SpaceGrotesk-Light.otf');
}

var xpos = 50;
var speed = 1;

function setup() {
  createCanvas(windowWidth, windowHeight);
  ellipseMode(CENTER);
  textAlign(CENTER, CENTER);
  noCursor();
}

function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
}

function draw() {
  background('#f8fab8');
  stroke('#f8fab8');
  strokeWeight(8);
  ellipse(mouseX, mouseY, 170, 170);

  fill('#f76a8c');
  //noStroke();
  ellipse(xpos, height / 2, 50, 50);

  xpos = xpos + speed;

  if ((xpos > width - 50) || (xpos < 50)) {
    speed = speed * -1;
  }

  push();
  textSize(width/12);
  textFont(myFont);
  fill(0);
  noStroke();
  text('horizontal',mouseX, mouseY);
  pop();

   for (var x = 10; x < windowWidth; x = x+40){
        for (var y = 10; y < windowWidth; y = y+40){
            push();
            translate(x, y);
            dessiner();
            pop();
        }
    }
}

function dessiner() {
    ellipse(10, 10, 1.1, 1.1);
}

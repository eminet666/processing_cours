var r = 0;
var back1;
var back2;
var back3;

function setup() {
    // createCanvas(400, 400);
    var canvas = createCanvas(400, 400);
    canvas.parent('centre');
    back1 = random(0, 255);
    back2 = random(0, 255);
    back3 = random(0, 255);

    background(back1, back2, back3);
    rectMode(CENTER);

    noStroke();
    smooth();
    frameRate(15);
}

function draw() {
    fill(back1, back2, back3, 50);
    rect(width / 2, height / 2, width, height);

    fill(255);
    //les carrés suivent la souris
    translate(mouseX, mouseY);

    rotate(r);
    rect(0, 0, 100, 100);

    r = r + 0.05;

}

function sleep(milliseconds) {
    const date = Date.now();
    var currentDate = null;
    do {
        currentDate = Date.now();
    } while (currentDate - date < milliseconds);
}

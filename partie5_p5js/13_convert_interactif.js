// remplacer let par var, println par console.log
// modif : ajout fonction frameRate() pour ralentir l'animation (comme en processing)
let r = 0;
let back1;
let back2;
let back3;

function setup() {
    createCanvas(400, 400);
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

function keyPressed() {
    console.log(key);
    if (key == 'p') {
        save("image.png");
        console.log("imprimer");
    }
}

function sleep(milliseconds) {
    const date = Date.now();
    let currentDate = null;
    do {
        currentDate = Date.now();
    } while (currentDate - date < milliseconds);
}

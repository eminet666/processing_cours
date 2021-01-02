// remplacer let par var, println par console.log  
// 2 problèmes : delay() remplacé par sleep(), blue par bleu
var angle;

// var red = 0;
// var green = 0;
var bleu = 0;
var increasebleu = true;

function setup() {
    createCanvas(800, 800);
    rectMode(CENTER);
    strokeWeight(10);
}

function draw() {
    background(0);
    //positionnement de la spirale
    translate(width / 2, height / 2);
    var rectSize = 700;
    var numberOfRect = 100;
    var ratio = rectSize / numberOfRect;

    // set colors
    for (var i = 0; i < numberOfRect; i++) {
        //variation couleurs;
        fill(i * 10, 0, bleu * i);
        //échelle du carré
        rotate(radians(angle));
        scale(0.94);
        rect(0, 0, rectSize - ratio * i, rectSize - ratio * i);
    }
    // delay(25); remplacé par la fonction sleep écrite en libraries
    sleep(25);

    // si la valeur de increasebleu = true , augmenter valeur du bleu de 1
    if (increasebleu) {
        bleu++;
    }
    // si la valeur de increasebleu = false , diminuer valeur du bleu de 1
    else if (!increasebleu) {
        bleu--;
    }

    // si la valeur du bleue égal 50 ou 0, inverser la valeur de increasebleu
    if (bleu == 50 || bleu == 0) {
        increasebleu = !increasebleu;
    }
    angle += 0.1;
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

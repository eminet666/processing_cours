function setup(){
      createCanvas(800,800);
      background (0);
      translate(15, 15);

    //Première boucle (hauteur)
    for (let y = 0; y < 100; y = y +1) {
      //Seconde boucle (largeur)
      for (let x = 0; x < 100; x = x +1) {
        fill(random(255));
        rect(x * 60, y * 60, 40, 40);
      }
    }

    for (let i = 0; i < 100; i++) {
      let dimension= (random(20));
      fill(random(20,20),random(20),random(20,20));
      console.log(dimension);
      rect(random(800),random(800),dimension,dimension);
    }
}

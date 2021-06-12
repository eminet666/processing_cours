void setup(){
      size(800,800);
      background (0);
      translate(15, 15);
 
    //Première boucle (hauteur)
    for (int y = 0; y < 100; y = y +1) {
      //Seconde boucle (largeur)
      for (int x = 0; x < 100; x = x +1) {
        fill(random(255));
        rect(x * 60, y * 60, 40, 40);
      }
    }

    for (int i = 0; i < 100; i++) {
      int dimension= int(random(20));
      fill(random(20,20),random(20),random(20,20));
      println(dimension);
      rect(random(800),random(800),dimension,dimension);
    }
}
void keyPressed(){
  println(key);
  if(key== 'p'){
     save("image.png");
     println("imprimer");
  }
}

float angle;

  int red = 0;
  int green = 0;
  int blue = 0;
  boolean increaseBlue = true;
  
void setup() {
  size(800,800);
  rectMode(CENTER);
  strokeWeight(10);
}

void draw(){ 
  background(0);
  //positionnement de la spirale
  translate(width/2, height/2);
  int rectSize = 700;
  int numberOfRect = 100;
  int ratio = rectSize/numberOfRect;

  // set colors
 for(int i=0; i<numberOfRect; i++){
      //variation couleurs;
      fill(i * 10, 0, blue * i);
      //échelle du carré
      rotate(radians(angle));
      scale(0.94);
      rect(0,0,rectSize- ratio * i,rectSize- ratio * i);
 }
 delay(25);
 
 // si la valeur de increaseBlue = true , augmenter valeur du bleu de 1
   if(increaseBlue){
   blue ++;
   }
 // si la valeur de increaseBlue = false , diminuer valeur du bleu de 1
   else if(!increaseBlue){
   blue --;
   }
 
 // si la valeur du bleue égal 50 ou 0, inverser la valeur de increaseBlue
   if(blue == 50 || blue == 0){
   increaseBlue = !increaseBlue;
   }
   angle+=0.1;
}

void keyPressed(){
  println(key);
  if(key== 'p'){
     save("image.png");
     println("imprimer");
  }
}

size(400,400);
//fill(255,0,0);

/* 5 carres espaces
rect(0,0,10,10);
rect(20,0,10,10);
rect(40,0,10,10);
rect(60,0,10,10);
rect(80,0,10,10);
*/

/* 5 carres décales en x et y 
for(int i= 0 ; i < 5 ; i = i + 1){
  rect(i*10,i*10,10,10); 
}
*/

/* 5 carrés placés aléatoirement */
for (int i = 0; i < 100; i = i + 1) {
  int dimension = int(random(50));
  fill(random(127,255), random(127,255), random(127,255));
  // println(dimension);
  println("i = "+i + " dimension = "+dimension);
  rect( random(400) , random(400)  , dimension , dimension);
}

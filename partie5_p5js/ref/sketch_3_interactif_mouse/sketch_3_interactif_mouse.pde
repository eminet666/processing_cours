float r=0;
float back1;
float back2;
float back3;

void setup() {
  size(400,400);
  back1 = random(0,255);
  back2 = random(0,255);
  back3 = random(0,255);
  
  background(back1, back2, back3);
  rectMode(CENTER);
  
  noStroke();
  smooth();
}
void draw(){
  fill(back1, back2, back3, 50);
  rect(width / 2, height /2, width, height);
  
  fill(255);
  //les carrés suivent la souris 
  translate(mouseX, mouseY);
  
 
  rotate(r);
  rect(0,0,100,100);
  
  
  
  r = r + 0.05;

  
}
void keyPressed(){
  println(key);
  if(key== 'p'){
     save("image.png");
     println("imprimer");
  }
}

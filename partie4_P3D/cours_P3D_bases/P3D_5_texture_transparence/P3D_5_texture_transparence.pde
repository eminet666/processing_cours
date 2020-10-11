PImage img;
boolean axes = false;

void setup(){
  size(600,600, P3D);
  img = loadImage("arbre.gif");
}

void draw (){
  background(100);
  //noStroke();
  stroke(255);
  fill(0,0,0,0); // Side effect = Sets gl.BLEND

  translate(width/2, height/2, 0);

  beginShape();
    texture(img);
    tint(37,235,51);
    vertex(-20, -20, 0, 0, 0);
    vertex(70, -20, 0, 100, 0);
    vertex(70, 130, 0, 100, 100);
    vertex(-20, 130, 0, 0, 100);
  endShape(CLOSE);

  beginShape();
    texture(img);
    //noTint();
    tint(14,119,22);
    vertex(0, 0, 0, 0, 0);
    vertex(90, 0, 0, 100, 0);
    vertex(90, 150, 0, 100, 100);
    vertex(0, 150, 0, 0, 100);
  endShape(CLOSE);
  
  println(axes);
}

void keyPressed() {
    if (key == 'x') {
      if(axes == false) { axes = true; }
      if(axes == true)  {axes = false; }
    } 
}






/*
      stroke(255,0,0);          // rouge axe X
      line(0,0,0,100,0,0);  
      stroke(0,255,0);          // vert axe Y
      line(0,0,0,0,100,0); 
      stroke(0,0,255);          // bleu axe Z
      line(0,0,0,0,0,100); 

*/

int cols, rows;
int x, y, z;
int l, h;
int camX=0, camY=0;

void setup(){
  size(600,600, P3D);
}

void draw (){
  background(100);
  
  translate(width/2, height/2, 0);
  float fov = PI/3.0; 
  float cameraZ = (height/2.0) / tan(fov/2.0); 
  perspective(fov, float(width)/float(height), cameraZ/2.0, cameraZ*2.0); 
  camX = int(map(mouseY, 0, height, 0, -90));
  camY = int(map(mouseX, 0, width, -90, 90));
  rotateX(radians(camX)); 
  println(camY);
  rotateY(radians(camY)); 

  stroke(255,0,0);          // rouge axe X
  line(0,0,0,100,0,0);  
  stroke(0,255,0);          // vert axe Y
  line(0,0,0,0,100,0); 
  stroke(0,0,255);          // bleu axe Z
  line(0,0,0,0,0,100); 

  stroke(255);
  noFill();

  x = 0; y = 0; z=100; l=50; h=150;
  //for (int i = 0; i < 6; i = i+1) {
    //x = -150+i*50;
    //println(x);
    beginShape();
      vertex(x, y, z, 0, 0);
      vertex(x+l, y, z, 100, 0);
      vertex(x+l, y-h, z, 100, 100);
      vertex(x, y-h, z, 0, 100);
    endShape(CLOSE);
  //}
  x = 100; y = 0; z=200; l=50; h=150;
    beginShape();
      vertex(x, y, z, 0, 0);
      vertex(x+l, y, z, 100, 0);
      vertex(x+l, y-h, z, 100, 100);
      vertex(x, y-h, z, 0, 100);
    endShape(CLOSE);
    
  x = 100; y = 0; z = 0; l=50; h=150;
    beginShape();
      vertex(x, y, z, 0, 0);
      vertex(x+l, y, z, 100, 0);
      vertex(x+l, y-h, z, 100, 100);
      vertex(x, y-h, z, 0, 100);
    endShape(CLOSE);
  
/*
  beginShape();
    vertex(x, 0, z, 0, 0);
    vertex(x+l, 0, z, 100, 0);
    vertex(x+l, y+h, z, 100, 100);
    vertex(x, y+h, z, 0, 100);
  endShape(CLOSE);
*/
}

/*
  beginShape();
    vertex(-20, -20);
    vertex(70, -20);
    vertex(70, 130);
    vertex(-20, 130);
  endShape(CLOSE);
  
  beginShape();
    vertex(-20, -20, 0);
    vertex(70, -20, 0);
    vertex(70, 130, 0);
    vertex(-20, 130, 0);
  endShape(CLOSE);
  
  beginShape();
    vertex(-20, -20, 0, 0);
    vertex(70, -20, 100, 0);
    vertex(70, 130, 100, 100);
    vertex(-20, 130, 0, 100);
  endShape(CLOSE);

  beginShape();
    vertex(-20, -20, 0, 0, 0);
    vertex(70, -20, 0, 100, 0);
    vertex(70, 130, 0, 100, 100);
    vertex(-20, 130, 0, 0, 100);
  endShape(CLOSE);

*/

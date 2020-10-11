int cols, rows;
int x, y, z;
int l, h;

void setup(){
  size(600,600, P3D);
}

void draw (){
  background(100);
  
  translate(width/2, height-200, 0);

  stroke(255,0,0);          // rouge axe X
  line(0,0,0,100,0,0);  
  stroke(0,255,0);          // vert axe Y
  line(0,0,0,0,100,0); 
  stroke(0,0,255);          // bleu axe Z
  line(0,0,0,0,0,100); 

  stroke(255);
  noFill();

  x = 0; y = 0; z=100; l=50; h=150;
    beginShape();
      vertex(x, y, z, 0, 0);
      vertex(x+l, y, z, 100, 0);
      vertex(x+l, y-h, z, 100, 100);
      vertex(x, y-h, z, 0, 100);
    endShape(CLOSE);

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

}

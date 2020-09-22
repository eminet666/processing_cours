

void setup(){
    size(400,400);
   background(255,255,0);
}

void draw(){
    //background(255,255,0);
    fill(random(127,255),0,0);
    ellipse(mouseX, mouseY, 10, 10); 
}

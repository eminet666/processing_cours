

void setup(){
    size(400,400);

}

void draw(){
    background(255,255,0);
    fill(random(127,255),0,0);
    rect(random(350), random(350), random(100), random(100));
    delay(500);
}

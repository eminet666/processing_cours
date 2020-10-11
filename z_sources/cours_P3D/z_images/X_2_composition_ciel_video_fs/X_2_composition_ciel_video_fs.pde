import processing.video.*;
Movie myMovie;
PImage img;

void setup(){
  //fullScreen(P3D);
  size(750,750, P3D);
  img = loadImage("ciel.jpg");
  myMovie = new Movie(this, "ciel.mp4");
  myMovie.loop();
}

void draw (){
  background(100);
  //image(img,0,0);
  image(myMovie, 0, 0);
  
  stroke(255);
  line(0, 250, width, 250);

}

void movieEvent(Movie m) {
  m.read();
}

// https://www.processing.org/reference/libraries/video/Movie.html

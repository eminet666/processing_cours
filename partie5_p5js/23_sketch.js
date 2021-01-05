/*
Ref :
http://www.joemckaystudio.com/multisketches/
https://stackoverflow.com/questions/39970680/why-are-constants-not-defined-when-using-p5-js-in-instance-mode
https://github.com/processing/p5.js/wiki/Global-and-instance-mode
*/

// Sketch Un
var sketch1 = function(p) {
  p.setup = function() {
    p.createCanvas(200, 200);
  };
  p.draw = function() {
    p.background("#d8b9c3");
    p.fill("#363062");
    p.noStroke();
    p.rect(100, p.mouseY, 75, 75);
  };
};
var myp5 = new p5(sketch1, 'c1');

// Sketch Deux
var sketch2 = function(p) {
  p.setup = function() {
    p.createCanvas(200, 200);
  };
  p.draw = function() {
    p.background("#827397");
    p.fill("#4d4c7d");
    p.noStroke();
    p.ellipse(p.mouseX, 45, 45, 45);
  };
};
var myp5 = new p5(sketch2, 'c2');

// Sketch Trois
var sketch3 = function(p) {
  var x = 10;
  var y = 40;
  var speed = 3;
  p.setup = function() {
    p.createCanvas(200, 200);
  };
  p.draw = function() {
    p.background("#844685");
    p.fill("#f3c623");
    p.noStroke();
    x += speed;
    if(x > p.width){
      x = 0;
    }
    p.ellipse(x,y,20,20);
  };
};
var myp5 = new p5(sketch3, 'c3');

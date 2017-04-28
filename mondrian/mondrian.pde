boolean stop = false;
int[] binary = {20, 0, 10};

void setup() {
  size(640, 480);
  frameRate(5);
}

void draw() {
  background(255);
  //if (stop) {
  //  //println("1");
  //  noLoop();
  //} else if (!stop) {
  //  //println("2");
  //  loop();
  //}
  //noLoop();
  
  strokeWeight( binary[ int(random(0, 3)) ] );
  println(int(random(0, 3)));
  rect(random(0, width), random(0, height), random(0, 200), random(0, 200));
  
  for ( int i = 0; i < 3; i++ ) {
    color clr = color( random(0, 255), random(0, 255), random(0, 255) );
    fill(clr);
    rect(i * 200, 0, random(15, 100), height);
    
  }
  
  for ( int j = 0; j < 3; j++ ) {
    color clr = color( random(0, 255), random(0, 255), random(0, 255) );
    fill(clr);
    rect(0, j * 100, width, random(20, 120));
  }
  
}

void keyPressed() {
  if (key == 's') {
    stop = !stop;
  }
  println(stop);
}
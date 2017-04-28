/**
 * ArrayList of objects
 * by Daniel Shiffman.  
 * 
 * This example demonstrates how to use a Java ArrayList to store 
 * a variable number of objects.  Items can be added and removed
 * from the ArrayList.
 *
 * Click the mouse to add bouncing balls.
 */
 
PFont helvetica;

ArrayList<Ball> balls;
int ballWidth = 10;

void setup() {
  size(640, 360);
  noStroke();
  helvetica = createFont("Helvetica", 24);
  balls = new ArrayList<Ball>();
}

void draw() {
  background(255);
  
  fill(0);
  textFont(helvetica);
  textLeading(28);
  textAlign(CENTER, BASELINE);
  text("Yandex", width/2, height/2);
  
  fill(random(0, 255));
  
  for (int i = balls.size()-1; i >= 0; i--) { 
    // An ArrayList doesn't know what it is storing so we have to cast the object coming out
    Ball ball = balls.get(i);
    ball.display();
  }  
  
}

void mouseDragged() {
  if ( (pmouseX != mouseX) && (pmouseY != mouseY) ) {
    balls.add(new Ball(mouseX, mouseY, ballWidth));
  }
}
boolean clearFrame = false;
boolean drawRect = false;
boolean drawEllipse = false;

void setup() {
  size(200, 200);
  background(255);
}

void draw() {
  if (clearFrame) {
    background(255);
  }
  
  noStroke();
  fill(int(random(0, 255)));
  rectMode(CENTER);
  if (drawRect) {
    rect(mouseX, mouseY, random(0, 20), random(0, 20));
  }
  
  if (drawEllipse) {
    ellipse(mouseX, mouseY, random(0, 20), random(0, 20));
  }
  
  if (!drawRect && !drawEllipse) {
    stroke(0);
    strokeWeight(1);
    //if (pmouseX != 0 && pmouseY != 0) {
      line(pmouseX, pmouseY, mouseX, mouseY);
    //}
  }
  
}

void keyPressed() {
  println(key);
  if (key == 'c') {
    clearFrame = !clearFrame;
  } 

  if (key == 'r') {
    drawRect = !drawRect;
    drawEllipse = false;
  } else if (key == 'e') {
    drawEllipse = !drawEllipse;
    drawRect = false;
  } else if (key == 'l') {
    drawRect = false;
    drawEllipse = false;
  }
  
  
}
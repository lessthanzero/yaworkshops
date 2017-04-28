import processing.pdf.*;

int x;
int y;
color clr = color(255, 255, 9);
color clrHex = #bada55;
float r;
boolean saveToPDF = false;

void setup() {
  size(640, 480);
  frameRate(60);
  x = 10;
  //noSmooth();
}

void draw() {
  
  background( 128 );
  
  strokeWeight(2);
  fill(random(255), random(255), random(255));
  ellipseMode(CENTER);
  r = random(10, 200);
  
  
}

void keyPressed() {
  if (key == 's') {
    saveFrame("#####-frame.png");
  } else if (key == 'p') {
    println("To pdf");
    saveToPDF = true;
  }
}

void mousePressed() {
  
  if (saveToPDF == true) {
    beginRecord(PDF, "draft.pdf"); 
  }
  
  ellipse(mouseX, mouseY, r, r);
  
  if (saveToPDF == true) {
    endRecord();
    saveToPDF = false; 
  }
}

void mouseDragged() {
  if (saveToPDF == true) {
    beginRecord(PDF, "draft.pdf"); 
  }
  
  if ( (pmouseX != mouseX) && (pmouseY != mouseY) ) {
    ellipse(mouseX, mouseY, r, r);
  }
  
  if (saveToPDF == true) {
    endRecord();
    saveToPDF = false; 
  }
}
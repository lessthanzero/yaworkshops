import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class a_logo extends PApplet {

PFont helvetica;
int horShift = 60;
int c = color(0); 

public void setup() {
  
  
  frameRate(25);
  helvetica = createFont("Helvetica", 24);
  
}

public void draw() {
  
  
  background(255);
  fill(c);
  noStroke();
  rectMode(CENTER);
  rect(width/2 - horShift, height/2, 48, 48);
  textFont(helvetica);
  textLeading(28);
  textAlign(LEFT, CENTER);
  text("Yandex", width/2 - horShift + 40, height/2 - 4);

}

public void mousePressed() {
  c = color( random(0, 255), 0, 0 );
  println("Mouse click");
}

  public void settings() {  size(640, 480); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "a_logo" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

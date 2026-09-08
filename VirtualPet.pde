import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

public void setup() {
  size(500, 500);
  arduino = new Arduino(this, Arduino.list()[0], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}

public void draw() {
  background(192);
  int y = arduino.analogRead(5);
  System.out.println(y);
  
  
  fill(233,186,12);
  triangle(145,110,150,200,220,175);
  triangle(355,110,350,200,280,175);
  fill(240,127,201);
  triangle(155,130,160,200,210,175);
  triangle(345,130,340,200,290,175);
  fill(233,186,12);
  ellipse(250,270,250,225);
  
  fill(255,255,255);
  ellipse(210,240,40+y,70+y);
  ellipse(290,240,40+y,70+y);
  fill(134,90,55);
  ellipse(210,250,34+y,34+y);
  ellipse(290,250,34+y,34+y);
  fill(0,0,0);
  ellipse(210,250,24+y,24+y);
  ellipse(290,250,24+y,24+y);
  
  fill(240,127,201);
  ellipse(250,290+y/2,50,20);
  
  noFill();
  arc(280,320+y/2,60,50,0,PI);
  arc(220,320+y/2,60,50,0,PI);
  
  line(145,300,75,280);
  line(145,310,65,310);
  line(145,320,75,340);
  
  line(355,300,425,280);
  line(355,310,435,310);
  line(355,320,425,340);
}

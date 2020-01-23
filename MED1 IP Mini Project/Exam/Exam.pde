/*
  Introduction to Programming 5 ECTS, Mediaology 1st semester, Aalborg University Copenhagen
  Mini Project for Exam Hand in - 23.01.2020

    Project name: Drumming Pharaohs

    Creator:Truls Bendik Tjemsland
    Student id: 20182747
*/

import processing.sound.*;                 //library for sound playback
SoundFile file;                            //Naming of a drum sound
SoundFile file1;                           //Naming of second drum sound
SoundFile file2;                           //Naming of third drum sound
SoundFile file3;                           //Naming of fourth drum sound
Scenery myScenery;                         //Naming of a scenery instance
Pharaoh [] myPharaohs = new Pharaoh[9];    //Naming of the Pharaoh instances
PImage img;                                //Naming image of Pharaoh


void setup() {

  //Naming the size of the screen and utilizing the P2D OpenGL software for more efficent rendering
  size(1280, 720, P2D);  


  //Variables used to determine characteristics for Pharaoh
  float _sizeX = 50;
  float _sizeY = 72;
  float _x = width/2;
  float _y = height/2;
  float _speedX = 5;
  float _speedY = 2;


  //An instance of Scenery class
  myScenery = new Scenery(); 

  //Loop for assigning Pharaoh class instances 
  for ( int i = 0; i < myPharaohs.length; i++) {
    myPharaohs[i] = new Pharaoh(_sizeX, _sizeY, _x, _y, _speedX*random(3), _speedY*random(4));
  }


  //Instance four different drum sounds loaded from the sketch folder
  file = new SoundFile(this, "congo_drum.aiff"); 
  file1 = new SoundFile(this, "congo_drum1.aiff"); 
  file2 = new SoundFile(this, "congo_drum2.aiff"); 
  file3 = new SoundFile(this, "congo_drum3.aiff"); 


  //Instance of the pharaoh image loaded from the sketch folder
  img = loadImage("pharaoh.png");
}

void draw() {
  background(#822DB3);

  //Scenery class methods
  myScenery.sun(); 
  myScenery.show(); 
  myScenery.sky(); 

  //Pharaoh class methods 
  for ( int i = 0; i < myPharaohs.length; i++) {
    myPharaohs[i].show();
    myPharaohs[i].move();
    myPharaohs[i].bounce();
  }
}


//Used to find coordinates on screen while drawing the scenery
void mousePressed() {
  ellipse( mouseX, mouseY, 2, 2 );
  text( "x: " + mouseX + " y: " + mouseY, mouseX + 2, mouseY );
}

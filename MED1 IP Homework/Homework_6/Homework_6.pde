Flower myFlower1;
Flower myFlower2;

void setup() {
  size(600, 300);

//Variables used to determine the characteristics for an object when it is not overloaded.
  float _r1= random(50, 100);
  float _petals = 6;
  float _x = width/2;  
  float _y = height/2; 
  int _pc = color(random(255), random(255), random(255));
  float _speedX = 6;
  float _speedY = 3;
  int rHit=50; 

  myFlower1 = new Flower();
  myFlower2 = new Flower();
}



void draw() {

  background(#6EB28D);

  //Simplified method for checking overlapping using a called function from the object.
  if (myFlower1.overlaps(myFlower2)) {
    background(0, 0, 255);
  }

  //If one object overlaps the other, the background changes color.
  /*float d = dist(myFlower1.x, myFlower1.y, myFlower2.x, myFlower2.y);
   if (d > myFlower1.r + myFlower2.r) {
   background(0, 255, 0);
   } else if (d < myFlower1.r + myFlower2.r) {
   background(255, 0, 0);
   }*/

  myFlower1.display();
  myFlower1.movement();
  myFlower1.bounce();
  myFlower2.display();
  myFlower2.movement();
  myFlower2.bounce();
}

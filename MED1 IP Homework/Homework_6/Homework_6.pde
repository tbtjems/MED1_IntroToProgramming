Flower myFlower1;
Flower myFlower2;

void setup() {
  size(1600, 900);

  //(random(255), random(255), random(255))
  float _r1= random(50, 100);
  float _petals = 6;
  float _x = width/2;  //800
  float _y = height/2;  //600
  int _pc = color(random(255), random(255), random(255));
  float _speedX = 6;
  float _speedY = 3;
  int rHit=50; 


  myFlower1 = new Flower(_r1, _petals, _x, _y, _pc, _speedX, _speedY);
  myFlower2 = new Flower(_r1, _petals+random(3, 9), _x, _y, _pc+color(random(255), random(255), random(255)), _speedX+5, _speedY+10);
}



void draw() {

  background(#6EB28D);


  myFlower1.display();
  myFlower1.movement();
  myFlower1.bounce();
  myFlower2.display();
  myFlower2.movement();
  myFlower2.bounce();
}

Flower myFlower1;
Flower myFlower2;
Flower myFlower3;

void setup() {
  size(1600, 900);


  float _r1= random(50, 100);
  int _petals=8;
  float _x=width/2;  //800
  float _y=height/2;  //600
  int _pc=#FFA000;
  float _speedX=random(-20, 20);
  float _speedY=random(-20, 20);
  myFlower1 = new Flower(_r1, _petals, _x, _y, _pc, _speedX, _speedY);
  myFlower2 = new Flower(_r1+random(50, 100), _petals, _x+random(-400, 400), _y+random(-400, 400), _pc, _speedX, _speedY);
  myFlower3 = new Flower(_r1, _petals, _x+random(-400, 400), _y+random(-400, 400), _pc, _speedX, _speedY);

}


void draw() {

  background(#43AF76);


  myFlower1.display();
  myFlower1.movement();
  myFlower1.bounce();
  myFlower2.display();
  myFlower2.movement();
  myFlower2.bounce();
  myFlower3.display();
  myFlower3.movement();
  myFlower3.bounce();
}

Flower myFlower1;
Flower myFlower2;
Flower myFlower3;

void setup() {
  size(1600,900);
  
  
  int _r1 = 60;
  int _petals = 7;
  float _x = width/2;
  float _y = height/2;
  int _pc = #FFA000;
  int _mspeed = 8;
  
  myFlower1 = new Flower(_r1, _petals, _x, _y, _pc, _mspeed);
  myFlower2 = new Flower(_r1, _petals, _x, _y, _pc, _mspeed);
  myFlower3 = new Flower(_r1, _petals, _x, _y, _pc, _mspeed);
  


}


void draw(){

  background(#43AF76);
  

  myFlower1.display();
  myFlower1.move();
  myFlower1.bounce();
  
}





 

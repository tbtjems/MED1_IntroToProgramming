//Flower myFlower1;
//Flower myFlower2;
//Flower myFlower3;

Flower [] FlowerRow = new Flower[2]; //flower array
int n_flowers = FlowerRow.length;


void setup() {
  size(1600,900);
  
  
  int _r1 = 60;
  int _petals = 7;
  float _x = random(height,width);
  float _y = height/2;
  int _pc = #FFA000;
  int _mspeed = 8;
  
   //print(FlowerRow.length);
   float fSpace=width/n_flowers;
   // float stepHalf=step/2;
  
 // myFlower1 = new Flower(_r1, _petals, _x, _y, _pc, _mspeed);
  //myFlower2 = new Flower(_r1, _petals, _x, _y, _pc, _mspeed);
  //myFlower3 = new Flower(_r1, _petals, _x, _y, _pc, _mspeed);
  
 for (int i = 0; i<n_flowers; i +=1) {
  FlowerRow[i] = new Flower (_r1, _petals, i*fSpace+_r1*1.7, _y, _pc, _mspeed);
 }

}


void draw(){

  background(#43AF76);
  
  
  for (int i = 0; i<n_flowers; i +=1) {
   FlowerRow[i].display();  
  }
  
    
    
  

  //myFlower1.display();
  //myFlower1.move();
  //myFlower1.bounce();
  
}





 



Flower [][] FlowerRow = new Flower[6][8]; //flower array
Fint n_flowers = FlowerRow.length;

  int _r1 = 60;
  int _petals [] = {4,12};
  float _x = random(height,width);
  float _y = height/2;
  int _pc = 256;
  int _mspeed = {1,10};
  int fixedXPos, fixedYPos;



void setup() {
  
  fixedYPos ) height/FlowerRow.length;
  fixedXPos = width/FlowerRow.length;
  int xOffset = fiexedXPos/2;
  int yOffset = fixedYPos/2;
  int middle height /2;
  
  
  
  size(1600,900);
  
 for (int i = 0; i<n_flowers.length; i++) 
 {
   
   for(int j = 0; j<n_flowers.length; j++)
    {
  FlowerRow[i][j] = new Flower (_r1, _petals, i*fSpace+_r1*1.4, _y, _pc, _mspeed);
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





 

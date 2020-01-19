int r=100;
float ballX; //position of x for ball
float ballY;

void setup() {
  size(1600,900);
  background(#43AF76);
}

void draw(){

  fill(#A23CF7);
  int numPetals=3;
  for (float i=0; i<PI*2; i+=2*PI/numPetals) {
  ballX=width/2 + r*cos(i);
  ballY=height/2 + r*sin(i);
  ellipse(ballX,ballY,r,r); 
  }
  fill(200,0,0);
  ellipse(width/2,height/2,r*1.2,r*1.2);
}  
 

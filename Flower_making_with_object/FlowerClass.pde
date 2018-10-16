class Flower {
  
  //Variables
  

float r;            // radius of the flower petal
int n_petals;       // numbers of petals
float x;            // x-pos of the center of the flower
float y;            // y-pos of the center of the flower
int petalColor;     // hexadecimal number of the color of petals
int xspeed, yspeed; // movement speed for the flower


Flower(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColor, int temp_speed) {
  
  r= temp_r;
  n_petals= temp_n_petals;
  x= temp_x;
  y= temp_y;
  petalColor= temp_petalColor;
  xspeed=temp_speed;
  yspeed=temp_speed;
  
  
}

void display () {

  float ballX;
  float ballY;
  
fill(petalColor);
  for (float i=0; i<PI*2; i+=2*PI/n_petals) {
  ballX= x + r*cos(i);
  ballY= y + r*sin(i);
  ellipse(ballX,ballY,r,r); 
  }
  fill(200,0,0);
  ellipse(x,y,r*1.2,r*1.2);  
}

void move (){

  x+=xspeed;
  y+=yspeed;
  
}

void bounce (){
 
  
  if(x>width || x<0){
    xspeed*=-1;
  }
  if(y>height || y<0){
    yspeed*=-1;
  }
  
  
}


}

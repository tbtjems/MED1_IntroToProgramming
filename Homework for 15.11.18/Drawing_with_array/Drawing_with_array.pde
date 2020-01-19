int num = 400;
int[] x = new int[num];
int[] y = new int[num];
int indexPosition = 0;
color [] rgb = {#00ADEF, #EC008B, #FFF100, #231F20} ;

void setup() {
  size(1000,1000);
  noStroke();
  fill(255, 200);

}

void draw(){
 background(#C4B341);
 // Shift the values by using a ring buffer and a modulo operator
 x[indexPosition] = mouseX;
 y[indexPosition] = mouseY;
 
 //Cycle between 0 and the number of elements
 indexPosition = (indexPosition + 1) % num;
 
 for ( int i =  0; i < num; i++){
  //Set the array position to read
  int pos = (indexPosition +i) % num;
  float radius = (num-i) / 8.0;
  ellipseMode(CORNER);
  fill(random(119), random(136), random(46));
  ellipse (x[pos], y[pos], radius, radius); 
 }
 
}

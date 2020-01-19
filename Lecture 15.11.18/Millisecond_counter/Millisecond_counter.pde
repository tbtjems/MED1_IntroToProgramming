void setup(){
 size(1000,1000);
 background(0);
  
}

void draw() {
  int m = millis();
  noStroke();
  fill(m % x);
  rect(250, 250, width/2, height/2);
}

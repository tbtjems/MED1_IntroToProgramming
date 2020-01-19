int n = 100;
int sum = 0;
int i;

void setup(){
 size(600,600);
 background(0);
  
  
}

void draw(){
 
  for( i = 1; i <= n; i++){
      
    sum = sum+i;
    
    
  }
  
  println(sum);
  
  noLoop();
}

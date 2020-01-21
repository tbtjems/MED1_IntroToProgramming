// Variable for length of tail and arrays for x/y values for the circles to be drawn on screen.
int number = 200;
int x[] = new int[number];
int y[] = new int[number];

//Array for second tail
int secondTail[] = new int[width];



void setup() {
  size(1300, 700);
}


void draw() {
  background(#FFFFFF);
  //firstTail();
  //secondTail();

  //Shifting the values from left to right
  for ( int i = number-1; i > 0; i--) {
    x[i] = x[i-1];
    y[i] = y[i-1];
  }

  //Adding the new values to the beginning of the array
  x[0] = mouseX;
  y[0] = mouseY;

  //Draw the circeles for the tail
  for ( int i = 0; i < number; i++) {
    //noStroke();
    fill(#000000, 122);
    rect(x[i], y[i], i/3.0, i/3.0);
  }

  // For loop for reading array from beginning to end, to avoid overwriting data
  for (int i = secondTail.length-1; i > 0; i--) {
    secondTail[i] = secondTail[i-1];
  }

  //Adding the new values to the beginning
  secondTail[0] = mouseY;

  //Display each pair of values as a line
  for ( int i = 1; i < secondTail.length; i++) {
    line (i, secondTail[i], i-1, secondTail[i-1]);
  }
}
/*
void firstTail() {
 //Shifting the values from left to right
 for ( int i = number-1; i > 0; i--) {
 x[i] = x[i-1];
 y[i] = y[i-1];
 }
 
 //Adding the new values to the beginning of the array
 x[0] = mouseX;
 y[0] = mouseY;
 
 //Draw the circeles for the tail
 for ( int i = 0; i < number; i++) {
 noStroke();
 fill(#000000, 122);
 rect(x[i], y[i], i/3.0, i/3.0);
 }
 }
 
 void secondTail() {
 //background(204);
 
 // for loop for reading array from beginning to end, to avoid overwriting data
 for (int i = secondTail.length-1; i > 0; i--) {
 secondTail[i] = secondTail[i-1];
 }
 
 //Adding the new values to the beginning
 secondTail[0] = mouseY;
 
 //Display each pair of values as a line
 for ( int i = 1; i < secondTail.length; i++) {
 line (i, secondTail[i], i-1, secondTail[i-1]);
 }
 }
 */

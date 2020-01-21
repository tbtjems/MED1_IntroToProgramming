// Variable for length of tail and arrays for x/y values for the circles to be drawn on screen.
int number = 200;
int x[] = new int[number];
int y[] = new int[number];


void setup() {
  size(1300, 700);
}


void draw() {
  background(0);

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
    fill(#FFFFFF, 122);
    rect(x[i], y[i], i/3.0, i/3.0);
  }
}

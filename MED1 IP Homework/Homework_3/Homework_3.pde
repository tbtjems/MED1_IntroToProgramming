int circleX = 50;
int circleY = 50;
int circleSpeedX = 5;
int circleSpeedY = 9;
int stepX = 1;
int stepY = 1;
int r = 40;


void setup() {
  size(1280, 720);
}

void draw() {
  background(255);

  // Add the current speed to the x location.
  //circleX = circleX + circleSpeedX;

  if ((circleX > width) || (circleX < 0)) {
    // If the object reaches either edge, multiply speed by -1 to turn it around.
    circleSpeedX = circleSpeedX * -1;
  }

  // Add the current speed to the y location.
  // circleY = circleY + circleSpeedY;

  if ((circleY > height) || (circleY < 0)) {
    // If the object reaches either top or bottom, multiply speed by -1 to turn it around.
    circleSpeedY = circleSpeedY * -1;
  }

  // Display circle at x location

  noStroke();
  fill(175);
  ellipse(circleX, circleSpeedY, r, r);

  circleX += stepX;
  circleSpeedY += stepY;
}

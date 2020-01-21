class Flower {

  // Variables

  float r;       // radius of the flower petal
  float n_petals;  // number of petals 
  float x;       // x-position of the center of the flower
  float y;       // y-position of the center of the flower
  int petalColor;//hexadecimal number for the color of petals
  float speedX; // X-speed
  float speedY; // Y-speed


  //Constructor for Flower object
  Flower(float temp_r, float temp_n_petals, float temp_x, float temp_y, int temp_petalColor, float temp_speedX, 
    float temp_speedY) {
    r = temp_r;
    n_petals = temp_n_petals;
    x = temp_x;
    y = temp_y;
    petalColor = temp_petalColor;
    speedX = temp_speedX;
    speedY = temp_speedY;
  }

  //Second constructor, overloading the previous one and assigning different values
  Flower() {
    r = random(50);
    n_petals = random(5, 15);
    x = width/2;
    y = height/2;
    petalColor = color(random(255), random(255), random(255));
    speedX = random(3, 20);
    speedY = random(3, 20);
  }


  boolean overlaps(Flower other) {
    float d = dist(x,y,other.x,other.y);
    if (d < r + other.r) {
      return true;
    } else {
      return false;
    }
  }

  //Function to display the flower and it's petals
  void display () {

    float petalX;
    float petalY;

    fill(petalColor);

    for (float i = 0; i<PI*2; i += 2*PI/n_petals) {
      petalX = x + r*cos(i);
      petalY = y + r*sin(i);
      ellipse(petalX, petalY, r, r);
    }

    fill(200, 0, 0);
    ellipse(x, y, r*1.2, r*1.2);
  }

  //Function to move the flower on within the screen
  void movement () {

    fill(petalColor);
    x = x + speedX;
    y = y + speedY;
  }

  //Function to make the flower bounce when hit one of the edges of the screen
  void bounce() {
    if (x < 0) {
      speedX = -speedX;
    }

    if (x > width) {
      speedX = -speedX;
    }

    if (y < 0) {
      speedY = -speedY;
    }

    if (y > height) {
      speedY = -speedY;
    }
  }
}

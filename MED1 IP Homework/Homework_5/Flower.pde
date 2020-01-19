class Flower {

  // Variables

  float r;       // radius of the flower petal
  int n_petals;  // number of petals 
  float x;       // x-position of the center of the flower
  float y;       // y-position of the center of the flower
  int petalColor;//hexadecimal number for the color of petals
  float speedX; // X-speed
  float speedY; // Y-speed

  Flower(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColor, float temp_speedX, 
    float temp_speedY) {
    r = temp_r;
    n_petals = temp_n_petals;
    x = temp_x;
    y = temp_y;
    petalColor = temp_petalColor;
    speedX = temp_speedX;
    speedY = temp_speedY;
  }
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

  void movement () {

    fill(petalColor);
    x = x + speedX;
    y = y + speedY;
  }

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

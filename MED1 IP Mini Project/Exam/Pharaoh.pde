//Class making instances of flying Pharaohs playing drums when bouncing of the edges of the screen
class Pharaoh {

  //Attributes of the Pharaoh class
  float sizeX;                       // x-size of the pharaoh image
  float sizeY;                       // y-size of the pharaoh image
  float x;                           // for the x position of the center of the pharaoh
  float y;                           // for the y postion of the center of the pharaoh
  float speedX;                      // x-speed for the pharaoh 
  float speedY;                      // y-speed for the pharaoh


  // Constructor method for the creation of a new instance of the Pharaoh class
  Pharaoh(float temp_sizeX, float temp_sizeY, float temp_x, float temp_y, float temp_speedX, float temp_speedY) {
    sizeX = temp_sizeX;
    sizeY = temp_sizeY;
    x = temp_x;
    y = temp_y;
    speedX = temp_speedX;
    speedY = temp_speedY;
  }

  //Method for display of the of an instance of Pharaoh class
  void show() {
    image(img, x, y, sizeX, sizeY);
  }

  //Method for movement of the of an instance of Pharaoh class
  void move() {
    x = x + speedX;
    y = y + speedY;
  }

  //Method for bouncing and playing drums when an instance of Pharaoh class reach the screen edges
  void bounce() {

    if (x < 0) {
      speedX = -speedX;
      file.play();
    }

    if (x > width-sizeX/2) {
      speedX = -speedX;
      file1.play();
    }

    if (y < 0) {
      speedY = -speedY;
      file2.play();
    }

    if (y > height-sizeY) {
      speedY = -speedY;
      file3.play();
    }
  }
}

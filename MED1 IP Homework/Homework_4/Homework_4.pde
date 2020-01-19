int stepX=30;
int stepY=20;

void setup() {
  size(1200, 600);
  // Double for loop for making the grid of grey rectangles 
  for (int iX=0; iX<width; iX += stepX) {
    for (int iY=0; iY<height; iY += stepY) {
      fill(random(75, 175)); 
      noStroke();
      rect(iX, iY, stepX, stepY);
    }
  }
}

void draw() { //<>//
}

void mousePressed() {
  if (mouseButton == LEFT) {
    // Double for loop for drawing of red rectangles on top of a grey rectangle when pressed 
    for (int iX=0; iX<width; iX += stepX) {
      for (int iY=0; iY<height; iY += stepY) {
        if ((mouseX > iX ) &&  (mouseX < (iX + stepX)) && (mouseY > iY) && (mouseY < (iY + stepY))) {
          fill(random(255), random(255), random(255) ); 
          rect(iX, iY, stepX, stepY);
        }
      }
    }
  } else if (mouseButton == RIGHT) {
    for (int iX=0; iX<width; iX += stepX) {
      for (int iY=0; iY<height; iY += stepY) {
        if ((mouseX > iX ) &&  (mouseX < (iX + stepX)) && (mouseY > iY) && (mouseY < (iY + stepY))) {
          fill(random(75, 175)); 
          rect(iX, iY, stepX, stepY);
        }
      }
    }
  }
}

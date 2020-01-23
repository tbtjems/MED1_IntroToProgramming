//Class for loading the scenery, skies and sun to the screen
class Scenery {
  
  //Attributes used for the sky() method
  float posCloudX;
  float posCloudY;

  Scenery() {
  }


  //Method for displaying the scenery of pyramids and sand
  void show() {
    //Sand foreground
    //syntax:quad(x1, y1, x2, y2, x3, y3, x4, y4)(); 
    fill(#D9763D);
    quad(0, height/1.6, width, height/1.35, width, height, 0, height);


    //Pyramids
    // syntax:triangle(x1, y1, x2, y2, x3, y3)
    noStroke();

    // Large Pyramids Numbered Left to Right
    // Pyramid 1 Left Triangle
    fill(#D4AB5F);
    triangle(-100, 500, 200, 300, 300, 520);
    // Pyramid 1 Right Triangle
    fill(#FFCE73);
    triangle(300, 520, 200, 300, 500, 500);

    // Pyramid 2 Left Triangle
    fill(#D4AB5F);
    triangle(330, 550, 630, 230, 730, 580);
    // Pyramid 2 Right Triangle
    fill(#FFCE73);
    triangle(730, 580, 630, 230, 900, 550);

    // Pyramid 3 Left Triangle
    fill(#D4AB5F);
    triangle(800, 600, 1100, 300, 1200, 630);
    // Pyramid 3 Right Triangle
    fill(#FFCE73);
    triangle(1200, 630, 1100, 300, 1500, 600);

    // Small Pyramids Numbered Left to Right
    // Pyramid 1 Left Triangle
    fill(#D4AB5F);
    triangle(200, 600, 280, 530, 300, 610);
    // Pyramid 1 Right Triangle
    fill(#FFCE73);
    triangle(300, 610, 280, 530, 365, 600);

    // Pyramid 2 Left Triangle
    fill(#D4AB5F);
    triangle(380, 620, 460, 550, 480, 630);
    // Pyramid 2 Right Triangle
    fill(#FFCE73);
    triangle(480, 630, 460, 550, 545, 620);

    // Pyramid 3 Left Triangle
    fill(#D4AB5F);
    triangle(560, 640, 640, 570, 660, 650);
    // Pyramid 3 Right Triangle
    fill(#FFCE73);
    triangle(660, 650, 640, 570, 745, 640);
  }


  //Method for display of the skies and their movement
  void sky() {
    //Clouds with transparency and movement
    posCloudY = posCloudY - random(13)/100;
    posCloudX = posCloudX + random(7)/10;
    
    fill(255, 200);
    quad(posCloudX+332.5, posCloudY+231, posCloudX+372.5, posCloudY+249, posCloudX+332.5, posCloudY+267, posCloudX+292.5, posCloudY+249);
    quad(posCloudX+393.5, posCloudY+217, posCloudX+433.5, posCloudY+235, posCloudX+393.5, posCloudY+253, posCloudX+353.5, posCloudY+235);
    quad(posCloudX+298.5, posCloudY+240, posCloudX+338.5, posCloudY+258, posCloudX+298.5, posCloudY+276, posCloudX+258.5, posCloudY+258);
    quad(posCloudX+275.5, posCloudY+235, posCloudX+315.5, posCloudY+253, posCloudX+275.5, posCloudY+271, posCloudX+235.5, posCloudY+253);
    quad(posCloudX+258.5, posCloudY+214, posCloudX+298.5, posCloudY+232, posCloudX+258.5, posCloudY+250, posCloudX+218.5, posCloudY+232);
    quad(posCloudX+313.5, posCloudY+265, posCloudX+353.5, posCloudY+283, posCloudX+313.5, posCloudY+301, posCloudX+273.5, posCloudY+283);
    quad(posCloudX+403.5, posCloudY+258, posCloudX+443.5, posCloudY+276, posCloudX+403.5, posCloudY+294, posCloudX+363.5, posCloudY+276);
    quad(posCloudX+353.5, posCloudY+265, posCloudX+393.5, posCloudY+283, posCloudX+353.5, posCloudY+301, posCloudX+313.5, posCloudY+283);
    quad(posCloudX+339.5, posCloudY+369, posCloudX+379.5, posCloudY+387, posCloudX+339.5, posCloudY+405, posCloudX+299.5, posCloudY+387);
  }


  //Method for displaying the sun, which follow the mouse x and y coordniates
  void sun() {
    //Gradient Ellipses
    fill(255, 237, 199, 1);
    ellipse((mouseX/2), mouseY-100, 940, 940);
    fill(255, 200, 200, 3);
    ellipse((mouseX/2), mouseY-100, 680, 680);
    fill(255, 150, 150, 6);
    ellipse((mouseX/2), mouseY-100, 480, 480);
    fill(255, 130, 130, 10);
    ellipse((mouseX/2), mouseY-100, 340, 340);
    fill(255, 105, 105, 15);
    ellipse((mouseX/2), mouseY-100, 280, 280);
    fill(255, 95, 95, 20);
    ellipse((mouseX/2), mouseY-100, 180, 180);
    fill(255, 55, 55, 25);
    ellipse((mouseX/2), mouseY-100, 175, 175);
    fill(255, 35, 35, 30);
    ellipse((mouseX/2), mouseY-100, 120, 120);
    fill(255, 15, 15, 40);
    ellipse((mouseX/2), mouseY-100, 90, 90);
    fill(255, 0, 0, 63);
    ellipse((mouseX/2), mouseY-100, 85, 85);

    //Main Ellipse
    fill(255, 237, 199, 63);
    tint(255, 127);
    ellipse((mouseX/2), mouseY-100, 80, 80);
  }
}

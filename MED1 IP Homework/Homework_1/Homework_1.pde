void setup(){
  size(1280, 720);
  background(#822DB3);

/*
Gradient background sourced from:
Richard Bourne https://www.openprocessing.org/sketch/803760
 */
 
 //Griadient background
  color bottomColor = color(#36B370);
  
  loadPixels();
  for (int i = 0;i<pixels.length; i++)
  {
    float r= red(pixels[i]);
    float g= green(pixels[i]);
    float b= blue(pixels[i]);

    float r2 = red(bottomColor);
    float g2 = green(bottomColor);
    float b2 = blue(bottomColor);

    r = r * (pixels.length - i) / pixels.length + ((r2 * i) / pixels.length);
    g = g * (pixels.length - i) / pixels.length + ((g2 * i) / pixels.length);
    b = b * (pixels.length - i) / pixels.length + ((b2 * i) / pixels.length);
    pixels[i] = color(r, g, b);
  }
  updatePixels();
  
 
  
  /* Failed landscaping code:
  noFill();
   beginShape();
      //syntax:bezierVertex(x2, y2, x3, y3, x4, y4);
      vertex(width, height/2+100);
      bezierVertex(100, height/2+100, 100, height/2+100, 100, height/2+100);
   endShape();
   
  fill(#BF9443);
  //rect(width/2, height/2, width, height/2 );
  //Line for back horizont
  fill(#933838);
  beginShape();
  curveVertex(0, 300);
  curveVertex(0, 350);
  curveVertex(200, 380);
  curveVertex(600, 350);
  curveVertex(900, 430);
  curveVertex(1100, 470);
  curveVertex(1280, 320);
  curveVertex(width, height);
  vertex(width, height);
  vertex(width, height);
  endShape(); 
  */
 
}

void draw(){
  
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

//Sun 
  // syntax:ellipse(x,y,w,h);

//Gradient Ellipses
  fill(255,237,199,1);
  ellipse(1000,100,940,940);
  fill(255,200,200,3);
  ellipse(1000,100,680,680);
  fill(255,150,150,6);
  ellipse(1000,100,480,480);
  fill(255,130,130,10);
  ellipse(1000,100,340,340);
  fill(255,105,105,15);
  ellipse(1000,100,280,280);
  fill(255,95,95,20);
  ellipse(1000,100,180,180);
  fill(255,55,55,25);
  ellipse(1000,100,175,175);
  fill(255,35,35,30);
  ellipse(1000,100,120,120);
  fill(255,15,15,40);
  ellipse(1000,100,90,90);
  fill(255,0,0,63);
  ellipse(1000,100,85,85);


//Main Ellipse
  fill(255,237,199,63);
  tint(255, 127);
  ellipse(1000,100,80,80);


}

//Used to find coordinates on screen
void mousePressed(){
  ellipse( mouseX, mouseY, 2, 2 );
  text( "x: " + mouseX + " y: " + mouseY, mouseX + 2, mouseY );
}

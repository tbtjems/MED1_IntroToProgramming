//Hold down the mouse to aim the ball. 
//Pull back to increase the force of the shot.
//Release the mouse to make the shot.
//Try bouncing the ball into the hole.
//Clicking on the ball stops it.

//variables used to define the position of the ball
float x = 300;
float y = 300;

//used to define the force? applied to the shot of the ball
float deltaX;
float deltaY;

//variable used to define the size of the ball
float ballWidth = 25;

//
float t;

//
float arcStart = -PI/2;
float arcEnd = PI/2;

//variables to define position of golf hole
float targetX = random(100+ballWidth/2,750-ballWidth/2);
float targetY = random(100+ballWidth/2,750-ballWidth/2);

void setup()
{
size (600, 600);
background (0);
}

void draw()
{
  background (0);
  fill (#00BC0A);
rect (100,100,400,400);

  clubLine();
  drawFigure ();
  moveFigure ();
  rolling ();
  friction();
  bounce ();
  stop();
  collision();
}


//class for visualization the amount of force put in a shot of a ball 
void clubLine()
{
  if(mousePressed == true)
  {
  stroke(#FFFFFF);
  line (x, y, mouseX, mouseY);
  }
}

//class to define amount of force applied to shot of ball
void mouseReleased()
{
  deltaX = (x - mouseX)/66;
  deltaY = (y - mouseY)/66;
}

//class to draw golfball.
void drawFigure()
{
  //shadow of golfball's size and colour
  noStroke(); 
  fill (#7FB78B); 
  ellipse (x-5, y-5, ballWidth, ballWidth); 
  
  //golf hole size and colour
  fill (0);
  ellipse (targetX, targetY, ballWidth, ballWidth);
  
  //golf ball size and colour
  fill (#FFFFFF); 
  stroke (#A6A7A6);
  ellipse (x, y, ballWidth, ballWidth);
}

//class to define the next position of the ball
void moveFigure()
{
  x = x + deltaX;
  y = y + deltaY;
}

//class for movement of the ball
void rolling ()
{
  if (arcStart < 0)
  {
  t = t + abs(sqrt(sq(deltaX)+sq(deltaY)));
  if (t > ballWidth)
  {arcStart = PI/2;
  arcEnd = 1.5 * PI;
  }
  }
  else if (arcStart > 0)
  {
    t = t - abs(sqrt(sq(deltaX)+sq(deltaY)));
  if (t < 0)
  {arcStart = -PI/2;
  arcEnd = PI/2;
  }
}
}


//class for bouncing of the ball
void bounce ()
{
  if (x > width-100-ballWidth/2 || x < 100+ballWidth/2)
  {
    deltaX = -deltaX;
    deltaX = deltaX * 0.6;
    if (x < 100+ballWidth/2)
    {
    x = 101+ballWidth/2;
  }
    else 
    {x = width-101-ballWidth/2;
  }
  }
  if (y > width-100-ballWidth/2 || y < 100+ballWidth/2)
  {
    deltaY = -deltaY;
    deltaY = deltaY * 0.6;
    if (y < 100+ballWidth/2)
    {y = 101+ballWidth/2;
  }
    else 
    {y = width-101-ballWidth/2;
  }
  }
}


//class for decreaseing of movement over time
void friction ()
{
deltaX = deltaX * 0.999;
deltaY = deltaY * 0.999;
}


//class for full stop of movement of ball if movement goes below a certain number
void stop ()
{
  if( abs(deltaX) < 0.9 && abs(deltaY) < 0.5)
{
deltaX = 0;
deltaY = 0;
}
}


//class to definition of golf hole
void collision ()
{
  if (sqrt(sq(x-targetX)+sq(y-targetY))-5 < ballWidth/2)
  {x = targetX;
  y = targetY;
  targetX = random(100+ballWidth/2,500-ballWidth/2);
  targetY = random(100+ballWidth/2,500-ballWidth/2);
  }}

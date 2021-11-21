//your variable declarations here
Star[] starfield = new Star[200];
Spaceship bruno;

boolean accelerate = false;
boolean turnRight = false;
boolean turnLeft = false;

public void setup() 
{
  background(0);
  size(600, 600);
  for(int i = 0; i < starfield.length; i++)
    starfield[i] = new Star();
   bruno = new Spaceship();
}
public void draw() 
{
  background(0);
  for(int i = 0; i < starfield.length; i++) 
    starfield[i].show();
   movement();
   bruno.show();
   bruno.move();
}

public void keyPressed() {
   if(key == 'a' || keyCode == LEFT)
     turnLeft = true;
   if(key == 'd' || keyCode == RIGHT)
     turnRight = true;
   if(key == 'w' || keyCode == UP)
     accelerate = true;
   if(key == ' ')
     bruno.hyperspace();
}

public void keyReleased() {
   if(key == 'a' || keyCode == LEFT)
     turnLeft = false;
   if(key == 'd' || keyCode == RIGHT)
     turnRight = false;
   if(key == 'w' || keyCode == UP)
     accelerate = false;
}

public void movement() {
  if(accelerate)
    bruno.accelerate(0.1);
  if(turnRight)
    bruno.turn(3);
  if(turnLeft)
    bruno.turn(-3);
}

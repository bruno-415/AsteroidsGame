//your variable declarations here
private Star[] starfield = new Star[200];
private ArrayList<Asteroid> asteroidField;
private Spaceship bruno;

private boolean accelerate = false;
private boolean turnRight = false;
private boolean turnLeft = false;

public void setup() 
{
  background(0);
  size(600, 600);
  for(int i = 0; i < starfield.length; i++)
    starfield[i] = new Star();
  asteroidField = new ArrayList<Asteroid>();
  for(int i = 0; i < 5; i++)
    asteroidField.add(new Asteroid());
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
   for(int i = 0; i < asteroidField.size(); i++) {
     asteroidField.get(i).move();
     asteroidField.get(i).show();
   }
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

//your variable declarations here
Star[] starfield = new Star[200];
Spaceship bruno;

public void setup() 
{
  background(0);
  size(1000, 1000);
  for(int i = 0; i < starfield.length; i++)
    starfield[i] = new Star();
   bruno = new Spaceship();
}
public void draw() 
{
  background(0);
  for(int i = 0; i < starfield.length; i++) 
    starfield[i].show();
   if(keyPressed) {
     if(key == 'a')
       bruno.turn(-10);
     if(key == 'd')
       bruno.turn(10);
     if(key == 'w')
       bruno.accelerate(0.02);
   }
   bruno.show();
   bruno.move();
}

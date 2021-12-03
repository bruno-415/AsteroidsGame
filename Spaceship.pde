class Spaceship extends Floater  
{   
  public Spaceship() {
    corners = 4;
    xCorners = new int[]{-8, 16, -8, -2};
    yCorners = new int[]{-8, 0, 8, 0};
    myColor = color(204, 252, 248);
    myCenterX = myCenterY = 300;
    myXspeed = myYspeed = 0;
    myPointDirection = 270;
  }
  public void hyperspace() {
    myCenterX = (int)(Math.random()*600);
    myCenterY = (int)(Math.random()*600);
    myXspeed = myYspeed = 0;
  }
}

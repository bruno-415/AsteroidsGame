class Asteroid extends Floater
{
  private double rotSpeed;
  private int n;
  private int m;

  public Asteroid() {
    n = 8;
    m = n/2;
    corners = 6;
    xCorners = new int[]{-11+(int)(Math.random()*n)-m, 7+(int)(Math.random()*n)-m, 13+(int)(Math.random()*n)-m, 6+(int)(Math.random()*n)-m, -11+(int)(Math.random()*n)-m, -12+(int)(Math.random()*n)-m};
    yCorners = new int[]{-8+(int)(Math.random()*n)-m, -8+(int)(Math.random()*n)-m, 0+(int)(Math.random()*n)-m, 10+(int)(Math.random()*n)-m, 8+(int)(Math.random()*n)-m, 0+(int)(Math.random()*n)-m};
    myColor = color(161, 153, 133);
    myCenterX = myCenterY = 300;
    myXspeed = (Math.random()*6)-3;
    myYspeed = (Math.random()*6)-3;
    myPointDirection = 0;
    rotSpeed = (Math.random()*3)-1;
  }
  public void move() {
     //change the x and y coordinates by myXspeed and myYspeed
    turn(rotSpeed);
    super.move();
  }
}

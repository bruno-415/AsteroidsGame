class Spaceship extends Floater  
{   
    Spaceship() {
      corners = 4;
      xCorners = new int[]{-8, 16, -8, -2};
      yCorners = new int[]{-8, 0, 8, 0};
      myColor = color(204, 252, 248);
      myCenterX = myCenterY = 500;
      myXspeed = myYspeed = 0;
      myPointDirection = 270;
    }
    public void hyperspace() {
      myCenterX = (int)(Math.random()*1000);
      myCenterY = (int)(Math.random()*1000);
      myXspeed = myYspeed = 0;
    }
}

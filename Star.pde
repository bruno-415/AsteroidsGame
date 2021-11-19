class Star //note that this class does NOT extend Floater
{
    private int myX;
    private int myY;
    private color myColor;
    private int starSize;
    public Star() {
      myX = (int)(Math.random()*1000);
      myY = (int)(Math.random()*1000);
      myColor = color((int)(Math.random()*256), 
      (int)(Math.random()*256), 
      (int)(Math.random()*256));
      starSize = 3;
    }
    public void show() {
      noStroke();
      fill(myColor);
      ellipse(myX, myY, starSize, starSize);
    }
}

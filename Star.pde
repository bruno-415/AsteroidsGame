class Star //note that this class does NOT extend Floater
{
    private int myX;
    private int myY;
    private color myColor;
    private int starSize = 0;
    public Star() {
      myX = (int)(Math.random()*600);
      myY = (int)(Math.random()*600);
      myColor = color((int)(Math.random()*256), 
      (int)(Math.random()*256), 
      (int)(Math.random()*256));
      starSize = (int)(Math.random()*2)+1;
    }
    public void show() {
      noStroke();
      fill(myColor);
      ellipse(myX, myY, starSize, starSize);
    }
}

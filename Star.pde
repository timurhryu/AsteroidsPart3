class Star //note that this class does NOT extend Floater
{
  public int r, g, b, a;
  public int myX, myY;

  Star() {
    r =  (int)(Math.random()*256);
    g =  (int)(Math.random()*256);
    b =  (int)(Math.random()*256);
    a =  (int)(Math.random()*256);

    myX = (int) (Math.random()*width);
    myY = (int) (Math.random()*height);
  }
  void show() {
    fill(r, g, b, a);
    noStroke();
    ellipse(myX, myY, 1.5, 1.5);
  }
  //your code here
}

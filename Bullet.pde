class Bullet extends Floater {
  public Bullet(Spaceship theShip) {
    myXspeed  = theShip.myXspeed;
    myYspeed  = theShip.myYspeed;
    myCenterX  = theShip.myCenterX;
    myCenterY  = theShip.myCenterY;
    myPointDirection  = theShip.myPointDirection;
    r = (int)(Math.random()*256);
    g = (int)(Math.random()*256);
    b = (int)(Math.random()*256);
    a = (int)(Math.random()*256);
    accelerate(6);
  }
  public void show(){
    ellipse((float)myCenterX,(float)myCenterY, 3, 3);
    fill(r, g, b, a);
    stroke(r, g, b, a);
  }
}

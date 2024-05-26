class Bullet extends Floater {
  public Bullet(Spaceship theShip) {
    myXspeed  = theShip.myXspeed;
    myYspeed  = theShip.myYspeed;
    myCenterX  = theShip.myCenterX;
    myCenterY  = theShip.myCenterY;
    myPointDirection  = theShip.myPointDirection;
    myColor= (int)(Math.random()*256);
    accelerate(6);
  }
  public void show(){
    ellipse((float)myCenterX,(float)myCenterY, 3, 3);
    //fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
}

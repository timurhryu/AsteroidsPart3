class Asteroids extends Floater {
  double myRot;
  public Asteroids() {

    corners = 3;
    xCorners =  new int[]{((int)((Math.random()*4)-12)),((int)((Math.random()*4)-6)),((int)((Math.random()*4)+4)), ((int)((Math.random()*8)-6)), ((int)((Math.random()*4)-12)),((int)((Math.random()*4)+4))};
    yCorners =  new int[]{((int)((Math.random()*4)-12)), ((int)((Math.random()*4)-6)),((int)((Math.random()*4)+4)), ((int)((Math.random()*8)-6)), ((int)((Math.random()*4)-12)),((int)((Math.random()*4)+4))};
    myCenterX = (int)(Math.random() * width) ;
    myCenterY= (int)(Math.random() * height);
    myXspeed = (int)(Math.random() *5) - 2.5;
    myYspeed =(int)(Math.random() *5) - 2.5;
    myPointDirection = (int) (Math.random()*360) ;
    myColor = 200;
    myRot = (int)(Math.random()*180);
  }
  void move() {
    turn(myRot);
    super.move();
  }
  public  double getc() {
    return myCenterX;
    
  }
   public  double gets() {
    
    return myCenterY;
  }
}

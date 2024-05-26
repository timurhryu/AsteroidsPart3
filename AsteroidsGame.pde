Star[] starry = new Star[5000];
Spaceship fly = new Spaceship();
//Asteroids bam = new Asteroids();
ArrayList <Asteroids> bam = new ArrayList <Asteroids>();
ArrayList <Bullet> kachow = new ArrayList <Bullet>();

//ArrayList Asteroids
public void setup() {
  size(500, 500);
  for (int i =0; i < starry.length; i++) {
    starry[i] = new Star();
  }

  for (int i =0; i < 30; i++) {
    bam.add(new Asteroids());
  }
}
public void draw() {
  background(1);

  fly.show();
  fly.move();
  for (int i =0; i<starry.length; i++) {
    starry[i].show();
  }
  for (int i =0; i < bam.size(); i++) {
    bam.get(i).show();
    bam.get(i).move();

    if (dist((float) bam.get(i).myCenterX, (float) bam.get(i).myCenterY, (float) fly.myCenterX, (float) fly.myCenterY)<15) {
      bam.remove(i);
    }
  }
  for (int i =0; i < kachow.size(); i++) {
    kachow.get(i).show();
    kachow.get(i).move();
  }
  for (int i = 0; i < kachow.size(); i++) {
    for (int j = 0; j < bam.size(); j++) {
      if (dist((float) bam.get(j).myCenterX, (float) bam.get(j).myCenterY, (float) kachow.get(i).myCenterX, (float) kachow.get(i).myCenterY) <20 ) {
        bam.remove(j);
        kachow.remove(i);
        i--;
        j--;
        break;
      }
    }
  }
  for (int i = kachow.size() - 1; i >= 0; i--) {
    kachow.get(i).move () ;
    kachow.get(i).show() ;
    if (kachow.get(i).myCenterX > width) {
      kachow.remove(i);
    } else if (kachow.get(i).myCenterY > height) {
      kachow.remove(i);
    } else if (kachow.get(i).myCenterY < 0) {
      kachow.remove(i);
    } else if (kachow.get(i).myCenterX < 0) {
      kachow.remove(i);
    }
  }
  /*for (int i = 0; i < kachow.size(); i++) {
   
   if (kachow.get(i).myCenterX > width || kachow.get(i).myCenterX < 0) {
   kachow.remove(i);
   i--;
   }
   if (kachow.get(i).myCenterY > height || kachow.get(i).myCenterY < 0) {
   kachow.remove(i);
   i--;
   */
}


public void keyPressed() {
  if (keyCode == UP) {
    fly.accelerate(7);
  } else if (keyCode == RIGHT) {
    fly.turn(10);
  } else if (keyCode == LEFT) {
    fly.turn(-10);
  } else if (keyCode == DOWN) {
    fly.turn(Math.random()*360);
    fly.myCenterX = (Math.random()*width);
    fly.myCenterY = (Math.random()*height);
    fly.myXspeed = 0;
    fly.myYspeed = 0;
  } else if (keyCode == ' ') {
    kachow.add(new Bullet(fly));
  }
}

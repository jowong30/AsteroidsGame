//your variable declarations here
//Spaceship bob = new Spaceship();
Spaceship bob;
Star [] patrick = new Star[500];
ArrayList <Asteroid> steve = new ArrayList <Asteroid>();
int asteroidSize=30;
boolean up = false;
boolean down = false;
boolean left = false;
boolean right = false;
int bulletSize=0;
ArrayList <Bullet> bill = new ArrayList <Bullet>();
public void setup() 
{
	background(0);
  	size(600,600);
  	bob= new Spaceship();
  	for(int i=0; i<patrick.length; i++){
  		patrick[i] = new Star();
  	}

  	for(int i=0; i<asteroidSize; i++){
  		steve.add(new Asteroid());
  	}
}
public void draw() 
{
	background(0);

  for(int i = 0; i<bill.size(); i++){
      //patrick.move();
      bill.get(i).show();
      bill.get(i).move();

      /*
      if(dist( (float)bob.shipPosX(), (float)bob.shipPosY(), (float)steve.get(i).getAsPosX(), (float)steve.get(i).getAsPosY())<13 ){
          steve.remove(i);
          asteroidSize--;
      }
      */
  }



  bob.show();
  bob.move();
  for(int i = 0; i<patrick.length; i++){
  		//patrick.move();
  		patrick[i].show();
  }
  for(int i = 0; i<asteroidSize; i++){
  		//patrick.move();
  		steve.get(i).show();
  		steve.get(i).move();

      if(dist( (float)bob.shipPosX(), (float)bob.shipPosY(), (float)steve.get(i).getAsPosX(), (float)steve.get(i).getAsPosY())<13 ){
          steve.remove(i);
          asteroidSize--;
      }
  }
  fill(255,0,0);
  text(asteroidSize , 50,50);

  if(up ==true ){
      bob.directX(0);
      bob.directY(0);
      bob.accelerate(1.5);
  }
  if(down ==true ){
      bob.directX(0);
      bob.directY(0);
      bob.accelerate(-1.5);
  }
  if(left ==true ){
      bob.turn(-7);
  }
  if(right ==true ){
      bob.turn(7);
  }


}

public void keyReleased(){
  if(key=='w'){
    up = false;
  }
  if(key=='a'){
    left = false;
  }
  if(key=='s'){
    down = false;
  }
  if(key=='d'){  
    right = false;
  }
}

public void keyPressed(){
	if(key=='w'){
		up = true;
	}
	if(key=='a'){
		left = true;
	}
	if(key=='s'){
		down = true;
	}
	if(key=='d'){  
		right = true;
	}

	if(key ==' '){
		bob.hyperSpace();
	}

	
	//bob.limit();
	
}

public void mouseClicked(){
  bill.add(new Bullet(bob));


}

/*
if(key=='w'){
    bob.accelerate(1);
  }
  if(key=='a'){
    bob.turn(-10);
  }
  if(key=='s'){
    bob.accelerate(-1);
  }
  if(key=='d'){  
    bob.turn(10);
  }

  */
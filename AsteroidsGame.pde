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
int bulletNum =0;
ArrayList <Bullet> bill = new ArrayList <Bullet>();
public void setup() 
{
	background(0);
	size(600,705);
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

  for(int i = 0; i<bill.size(); i++){
    for(int u = 0; u<asteroidSize; u++){
          if(dist( (float)bill.get(i).bulletPosX(), (float)bill.get(i).bulletPosY(), (float)steve.get(u).getAsPosX(), (float)steve.get(u).getAsPosY())<10 ){
              bill.remove(i);
              steve.remove(u);
              asteroidSize--;
              break;
          }
      }
  }
  for(int i = 0; i<bill.size(); i++){
    if((float)bill.get(i).bulletPosY()==0 || (float)bill.get(i).bulletPosY()==600||(float)bill.get(i).bulletPosX()==0 || (float)bill.get(i).bulletPosX()==600){
        bill.remove(i);
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

  if(mousePressed==true&& frameCount%20==0){
      bill.add(new Bullet(bob));
  }

  fill(255);
  rect(0,600,600,100);
  fill(0);
  rect(5,605,590,90);

  fill(255);
  //textAllign(CENTER);
  textSize(50);
  text("FIGHT",20,660);

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

/*
public void mousePressed(){
  bill.add(new Bullet(bob));


}
*/
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
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
int xx=0;
int yy=0;
int life=12;
int restartSwitch =0;
int reAsteroid=0;
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

      bill.get(i).move();
      bill.get(i).show();
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
          life-=3;
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

  if(mousePressed==true&& frameCount%10==0 &&mouseX>15&&mouseX<115 && mouseY<682 && mouseY>625){
      bill.add(new Bullet(bob));
  }

  //BOTTOM BAR
  fill(255);
  rect(0,600,600,100);
  fill(0);
  rect(5,605,590,90);

  //fight
  
  noFill();
  strokeWeight(2);
  stroke(255,102,0);
  rect(15,625, 100,50);//59,650
  fill(255, 102, 0);
  textSize(25);
  text("FIGHT",30,660);


  if(mouseX>15&&mouseX<115 && mouseY<682 && mouseY>625){
      noFill();
      strokeWeight(2);
      stroke(255, 204, 0);
      rect(15,625, 100,50);//59,650
      fill(255, 204, 0);
      textSize(25);
      text("FIGHT",30,660);
      fill(255,0,0);
      noStroke();
      xx=25;
      yy=650;
      beginShape();
        vertex(0 +xx,5 +yy);
        vertex(7 +xx,-1 +yy);
        vertex(7 +xx,-3 +yy);
        vertex(4 +xx,-5 +yy);
        vertex(2 +xx,-5 +yy);
        vertex(0 +xx,-3 +yy);
        vertex(-2+xx ,-5 +yy);
        vertex(-4+xx ,-5 +yy);   
        vertex(-7+xx ,-3 +yy);    
        vertex(-7+xx ,-1 +yy);  
      endShape(CLOSE);          
  }

  //HP BAR
  fill(255);
  noStroke();
  fill(255);
  text("HP" ,135,660);
  fill(255,0,0);
  rect(173,640,120,23);
  fill(255, 204, 0);
  rect(173,640,life*10,23);
  fill(255);
  text(life+ " / 12" ,300,660);

  fill(255);
  textSize(15);
  text("  Number of \nAsteroids left" ,420,630);
  textSize(25);
  text(asteroidSize , 450,680);


  if(life<=0){
    
    textSize(50);
    textAlign(CENTER);
    text("Game Over", 300,300);
    restartSwitch=1;
    textAlign(LEFT);
    noLoop();
  }

  if(restartSwitch ==1){
      if(key=='r'){
          loop();
          life=12;
      }
  }



  fill(255,0,0);
  stroke(255,203,0);
}

public void keyReleased(){
  if(restartSwitch ==1){
    if(key=='r'){
        loop();
        life=12;
        asteroidSize=30;
        for(int i=0; i<asteroidSize; i++){
          steve.add(new Asteroid());
        }
    }
  }

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

	if(key =='p'){
    noLoop();
  }
  if(key =='o'){
    loop();  }
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
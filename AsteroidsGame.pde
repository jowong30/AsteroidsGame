//your variable declarations here
//Spaceship bob = new Spaceship();
Spaceship bob;
Star [] patrick = new Star[500];
Asteroid [] steve = new Asteroid[5];
public void setup() 
{
	background(0);
  	size(600,600);
  	bob= new Spaceship();
  	for(int i=0; i<patrick.length; i++){
  		patrick[i] = new Star();
  	}

  	for(int i=0; i<steve.length; i++){
  		steve[i] = new Asteroid();
  	}
}
public void draw() 
{
	background(0);
  bob.show();
  bob.move();
  for(int i = 0; i<patrick.length; i++){
  		//patrick.move();
  		patrick[i].show();
  }
  for(int i = 0; i<steve.length; i++){
  		//patrick.move();
  		steve[i].show();
  		steve[i].move();
  }

  fill(255);
  text((int)bob.myDirectionX, 200,200);
  text((int)bob.myDirectionY, 100,100);

}

public void keyPressed(){
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

	if(key ==' '){
		bob.hyperSpace();
	}
	
	//bob.limit();
	
}

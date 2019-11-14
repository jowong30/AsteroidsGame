//your variable declarations here
//Spaceship bob = new Spaceship();
Spaceship bob;
Star [] patrick = new Star[500];
public void setup() 
{
	background(0);
  	size(600,600);
  	bob= new Spaceship();
  	for(int i=0; i<patrick.length; i++){
  		patrick[i] = new Star();
  	}
}
public void draw() 
{
	background(0,100);
  bob.show();
  bob.move();
  for(int i = 0; i<patrick.length; i++){
  		//patrick.move();
  		patrick[i].show();
  }
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

}

//your variable declarations here
//Spaceship bob = new Spaceship();
Spaceship bob;
public void setup() 
{
	background(0);
  	size(600,600);
  	bob= new Spaceship();
}
public void draw() 
{
	background(0,100);
  bob.show();
  bob.move();
}

public void keyPressed(){
	if(key=='w'){
		bob.accelerate(2);
	}
	if(key=='a'){
		bob.turn(-5);
	}
	if(key=='s'){
		bob.accelerate(-2);
	}
	if(key=='d'){
		bob.turn(5);
	}

	if(key =='2'){
		//bob.accelerate(0);
		bob.myCenterX = Math.random()*600;
    	bob.myCenterY = Math.random()*600;
    	bob.myDirectionX = 0;		
    	bob.myDirectionY = 0;
	}

}

public class Asteroid extends Floater
{

	private int rotAsteroid;

	public Asteroid(){
		corners = 5; 
    	xCorners = new int[corners];
    	yCorners = new int[corners];
    	

    	xCorners[0] =  0; 
    	yCorners[0] =  10; 

    	xCorners[1] =  10; 
    	yCorners[1] =  10; 

    	xCorners[2] =  10; 
    	yCorners[2] =  -10; 

    	xCorners[3] =  -10; 
    	yCorners[3] =  -10; 

    	xCorners[4] =  -10; 
    	yCorners[4] =  0; 


    	myColor = color(200);
    	myCenterX= Math.random()*600;
		myCenterY= Math.random()*600;
		
		myDirectionX=(Math.random()*3-1.5);
		myDirectionY=(Math.random()*3-1.5);
		
		myPointDirection= (Math.random()*2*PI);

		rotAsteroid = (int)(Math.random()*101-50);

	}

	public void move(){
		turn(rotAsteroid);
		super.move();
	}
}

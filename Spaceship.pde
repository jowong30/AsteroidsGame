class Spaceship extends Floater  
{   

    public Spaceship(){
    	corners = 10; 
    	xCorners = new int[corners];
    	yCorners = new int[corners];
    	

    	xCorners[0] =  5; 
    	yCorners[0] =  0; 

    	xCorners[1] =  -1; 
    	yCorners[1] =  6; 

    	xCorners[2] =  -3; 
    	yCorners[2] =  6; 

    	xCorners[3] =  -5; 
    	yCorners[3] =  4; 

    	xCorners[4] =  -5; 
    	yCorners[4] =  2; 

    	xCorners[5] =  -3; 
    	yCorners[5] =  0; 

    	xCorners[6] =  -5; 
    	yCorners[6] =  -2;

    	xCorners[7] =  -5; 
    	yCorners[7] =  -4;

    	xCorners[8] =  -3; 
    	yCorners[8] =  -6; 

		xCorners[9] =  -1; 
    	yCorners[9] =  -6; 

    	myColor= color(255,0,0);
    	myCenterX = 300;
    	myCenterY = 300;
    	myDirectionX = 0;		
    	myDirectionY = 0;
    	myPointDirection = 90;


    }
    public void hyperSpace(){
    	bob.myCenterX = Math.random()*600;
    	bob.myCenterY = Math.random()*600;
    	bob.myDirectionX = 0;		
    	bob.myDirectionY = 0;
    	bob.myPointDirection = Math.random()*360;
    }
}

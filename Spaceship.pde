class Spaceship extends Floater  
{   

    public Spaceship(){
    	corners = 10; 
    	xCorners = new int[corners];
    	yCorners = new int[corners];
    	

    	xCorners[0] =  6; 
    	yCorners[0] =  1; 

    	xCorners[1] =  6; 
    	yCorners[1] =  3; 

    	xCorners[2] =  4; 
    	yCorners[2] =  5; 

    	xCorners[3] =  2; 
    	yCorners[3] =  5; 

    	xCorners[4] =  0; 
    	yCorners[4] =  3; 
    	xCorners[5] =  -2; 
    	yCorners[5] =  5; 
    	xCorners[6] =  -4; 
    	yCorners[6] =  5;
    	xCorners[7] =  -6; 
    	yCorners[7] =  3;
    	xCorners[8] =  -6; 
    	yCorners[8] =  1;   
		xCorners[9] =  0; 
    	yCorners[9] =  -5; 

    	myColor= 255;
    	myCenterX = 300;
    	myCenterY = 300;
    	myDirectionX = 0;		
    	myDirectionY = 0;
    	myPointDirection = 90;


    }
}

class Bullet extends Floater
{
	private double dRadians;
	public Bullet(Spaceship bob){
		myCenterX = bob.shipPosX();
		myCenterY = bob.shipPosY();
		myPointDirection = bob.shipRot();
		dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5 * Math.cos(dRadians) + bob.shipDirectX();
		myDirectionY = 5 * Math.sin(dRadians) + bob.shipDirectY();

	}

	public void show(){
		//circle(myCenterX,myCenterY,5);
		fill(255);

		circle((float)myCenterX,(float)myCenterY,50);
	}


}
class Star
{ //note that this class does NOT extend Floater

  private float posX,posY,red,green,blue;

  public Star(){
  		posX= (float)(Math.random()*600);
  		posY= (float)(Math.random()*600);
  		red = (float)(Math.random()*255);
  		green = (float)(Math.random()*255);
  		blue = (float)(Math.random()*255);
  }
 // public move(){

 // }
  public void show(){
  	fill(red,green,blue,100);
  	noStroke();
  	ellipse(posX,posY,5,5);
  }


}
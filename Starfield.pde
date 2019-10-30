//your code here

Particle[] k = new Particle[500];
void setup()
{
	//your code here
	size(700,700);
    OddballParticle g = new OddballParticle();
   for(int i=0; i< k.length; i++)
   {
    k[400] = new OddballParticle();
     k[i] = new Particle();
   }
}
void draw()
{
	//your code here
	background(255,182,193);
	for(int i=0; i< k.length; i++)
   {
     k[i].show();
     k[i].move();
   }
 
}
class Particle
{
	//your code here
	double myX,myY,mySpeed,myAngle;
	int myColor;
	Particle()
	{
		myX=myY=300;
		myColor = color(102,51,0);
		myAngle = Math.random()*2*Math.PI;
		mySpeed = Math.random()*16;
	}
	void move()
	{
		myX= myX + Math.cos(myAngle) * mySpeed;
		myY= myY + Math.sin(myAngle) * mySpeed;;
	}
	void show()
	{
		fill(myColor);
     noStroke();
     ellipse((float)myX,(float)myY,50,50);
     ellipse((float)myX-12,(float)myY-15,25,25);
     ellipse((float)myX+12,(float)myY-15,25,25);
     fill(0);
     noStroke();
     ellipse((float)myX-12,(float)myY-7,5,10);
     ellipse((float)myX+12,(float)myY-7,5,10);
     fill(0);
     noFill();
     stroke(0);
     arc((float)myX+3,(float)myY+5,5,20,PI/2-1,PI);
     arc((float)myX-3,(float)myY+5,5,20,0,PI/2+1);
     fill(255,182,193);
     noStroke();
     int[] xCoor ={(int)myX-3,(int)myX+3,(int)myX};
     int[] yCoor ={(int)myY,(int)myY,(int)myY+3};
     beginShape();
     for(int i = 0; i< xCoor.length; i++)
     {
       vertex(xCoor[i],yCoor[i]);
     }
     endShape(CLOSE);

	}
}

class OddballParticle extends Particle //inherits from Particle
{
	//your code here
    OddballParticle()
    {
        myColor = color((int)(Math.random()*255)+1,(int)(Math.random()*255)+1,(int)(Math.random()*255)+1);
        myX=myY=300;
        myAngle = Math.random()*2*Math.PI;
        mySpeed = Math.random()*10;
    }
    void move()
    {
        myX= myX + Math.cos(myAngle) * mySpeed;
        myY= myY + Math.sin(myAngle) * mySpeed;;
    }
	void show()
    {
        fill(myColor);
     noStroke();
     ellipse((float)myX,(float)myY,50,50);
     ellipse((float)myX-12,(float)myY-15,25,25);
     ellipse((float)myX+12,(float)myY-15,25,25);
     fill(0);
     noStroke();
     ellipse((float)myX-12,(float)myY-7,5,10);
     ellipse((float)myX+12,(float)myY-7,5,10);
     fill(0);
     noFill();
     stroke(0);
     arc((float)myX+3,(float)myY+5,5,20,PI/2-1,PI);
     arc((float)myX-3,(float)myY+5,5,20,0,PI/2+1);
     fill(255,182,193);
     noStroke();
     int[] xCoor ={(int)myX-3,(int)myX+3,(int)myX};
     int[] yCoor ={(int)myY,(int)myY,(int)myY+3};
     beginShape();
     for(int i = 0; i< xCoor.length; i++)
     {
       vertex(xCoor[i],yCoor[i]);
     }
     endShape(CLOSE);

    }
}



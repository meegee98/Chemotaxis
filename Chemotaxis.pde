Bacteria bob; 
Bacteria [] colony;//declare bacteria variables here   
 void setup()   
 {     
   size(500, 500);
   //bob= new Bacteria();
   frameRate(15);
   //initialize bacteria variables here   
   colony = new Bacteria [50];
   bob= new Bacteria();
   for(int i=0; i<colony.length; i++)
   {
   	  colony[i] = new Bacteria();
   }
 }   
 void draw()   
 {    
   background(216, 191, 216);
   for(int i=0; i<colony.length; i++)
   {
   		colony[i].move();
   		colony[i].show();
   }
  	bob.mouseIsPressed();//bob.show//bob.move
   //move and show the bacteria   
 }  
 
class Bacteria    
 {  
   int myX, myY;
   int myColorR, myColorG, myColorB;
   int direction;

   Bacteria ()
   {
     myX=250;
     myY=250;
     myColorR= (int)(Math.random()*255);
     myColorG= (int)(Math.random()*255);
     myColorB= (int)(Math.random()*255);
   }   
   void move()
   {
     /*myX= myX + (int)(Math.random()*3)-1;
     myY= myY + (int)(Math.random()*3)-1;*/
     direction= (int)(Math.random()*4);
     if (direction==0)
     {
     	myX= myX+5;
     	if(myX>=490)
     	{
     		direction=(int)(Math.random()*4);
     	}
     }
     else if (direction ==1)
     {
     	myX= myX-5;
     	if(myX<=10)
     	{
     		direction=(int)(Math.random()*4);
     	}
     }
     else if (direction ==2)
     {
     	myY= myY+5;
     	if (myY>=490)
     	{
     		direction=(int)(Math.random()*4);
     	}
     }
     else if (direction ==3)
     {
     	myY=myY-5;
     	if(myY<=10)
     	{
     		direction=(int)(Math.random()*4);
     	}
     }
   }

   void show()
   {
     noStroke();
     fill(myColorR, myColorG, myColorB);
     ellipse(myX, myY, 30, 30);
   }
   void mouseIsPressed()
   {
   	fill(238,232,170);
   	rect(mouseX, mouseY, 15, 15);
   }
 }    
 //if mouseirpressed draw
 // follow food or mouse else do this
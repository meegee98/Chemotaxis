Bacteria bob; 
Bacteria [] colony;
int foodX= (int)(Math.random()*10);//declare bacteria variables here   
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
   background(0, 0, 128);
   fill(139, 137, 137);
   ellipse(150, 500, 400, 100);
   ellipse(400, 500, 400, 100);
   for(int i=0; i<colony.length; i++)
   {
   		colony[i].move();
   		colony[i].show();
   }
  	mousePressed();//bob.show//bob.move
   //move and show the bacteria   
 }  
 
class Bacteria    
 {  
   int myX, myY;
   int myColorR, myColorG, myColorB;
   int direction;
   int faces;

   Bacteria ()
   {
     myX=(int)(Math.random()*500);
     myY=(int)(Math.random()*500);
     myColorR= (int)(Math.random()*255);
     myColorG= (int)(Math.random()*255);
     myColorB= (int)(Math.random()*255);
     faces= (int)(Math.random()*10);
   }   
   void move()
   {
    if(myX<mouseX)
    {
    	myX= myX+(int)(Math.random()*5)-1;
    }
    else
    {
    	myX=myX+(int)(Math.random()*3)-2;
    }
    if (myY<mouseY)
    {
    	myY=myY+(int)(Math.random()*5)-1;
    }
    else 
    {
    	myY=myY+(int)(Math.random()*3)-2;
    }
     /*myX= myX + (int)(Math.random()*3)-1;
     myY= myY + (int)(Math.random()*3)-1;*/
     /*direction= (int)(Math.random()*4);
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
     }*/
   }
   	//make FISHES
   void show()
   {
     noStroke();
     fill(myColorR, myColorG, myColorB);
     ellipse(myX, myY, 40, 30);
     if(mouseX>myX)
     {
      triangle(myX-30, myY-15, myX, myY, myX-30, myY+15);
      fill(0);
      ellipse(myX+10, myY, 5, 5);
     }
     else if(mouseX<myX) 
     {
       triangle(myX+30, myY-15, myX, myY, myX+30, myY+15);
       fill(0);
       ellipse(myX-10, myY, 5, 5);
     }

     
/*ellipse(50, 50, 40, 30);
triangle(20, 35, 50, 50, 20, 65);
triangle(80, 35, 50, 50, 80, 65);
ellipse(60, 48, 5, 5); */
     /*if(faces==0)
     {
     	ellipse(myX+, myY, 5, 5,)
     }*/
   }
 }
  void mousePressed()
   {
   	fill(238,232,170);
   	ellipse(mouseX-5, mouseY, 5, 5);
    ellipse(mouseX+17, mouseY-5, 5, 5);
    ellipse(mouseX, mouseY-12, 5, 5);
    ellipse(mouseX+10, mouseY-12, 5, 5);
    ellipse(mouseX+17, mouseY+1, 5, 5);
    ellipse(mouseX+5, mouseY+1, 5, 5);
    ellipse(mouseX+7, mouseY+15, 5, 5);
    ellipse(mouseX-2, mouseY+12, 5, 5);
    ellipse(mouseX+15, mouseY+12, 5, 5);
   }    
 //if mouseirpressed draw
 // follow food or mouse else do this
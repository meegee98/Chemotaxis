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
   background(49, 79, 79);
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
    	myY=myY+(int)(Math.random()*5)-2;
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
     triangle(myX-30, myY-15, myX, myY, myX-30, myY+15);
/*ellipse(50, 50, 40, 30);
triangle(20, 35, 50, 50, 20, 65);*/
     /*if(faces==0)
     {
     	ellipse(myX+, myY, 5, 5,)
     }*/
   }
 }
    void mousePressed()
   {
   	fill(238,232,170);
   	rect(mouseX, mouseY, 15, 15);
   }    
 //if mouseirpressed draw
 // follow food or mouse else do this
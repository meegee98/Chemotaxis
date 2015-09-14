Bacteria bob; //declare bacteria variables here   
 void setup()   
 {     
   size(500, 500);
   bob= new Bacteria();
   //initialize bacteria variables here   
 }   
 void draw()   
 {    
   background(0);
   bob.move();
   bob.show();
   //move and show the bacteria   
 }  
 
class Bacteria    
 {  
   int myX, myY
   //int myColor;
   Bacteria()
   {
     move();
     myX=50;
     myY=50;
     //myColor=c;
   }   
   void move()
   {
     myX+= (int)(Math.random()*3)-1;
     myY+= (int)(Math.random()*3)-1;
   }

   void show()
   {
     fill(255);
     ellipse(myX, myY, 50, 50);
   }
 }    
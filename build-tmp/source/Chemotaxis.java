import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Chemotaxis extends PApplet {

//Bacteria bob; 
Bacteria [] colony;//declare bacteria variables here   
 public void setup()   
 {     
   size(500, 500);
   //bob= new Bacteria();
   frameRate(15);
   //initialize bacteria variables here   
   colony = new Bacteria [50];
   for(int i=0; i<colony.length; i++)
   {
   	colony[i] = new Bacteria();
   }
 }   
 public void draw()   
 {    
   background(216, 191, 216);
   for(int i=0; i<colony.length; i++)
   {
   	colony[i].move();
   	colony[i].show();
   }
  	//bob.show//bob.move
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
   public void move()
   {
     /*myX= myX + (int)(Math.random()*3)-1;
     myY= myY + (int)(Math.random()*3)-1;*/
     direction= (int)(Math.random()*4);
     if (direction==0)
     {
     	myX= myX+5;
     }
     else if (direction ==1)
     {
     	myX= myX-5;
     }
     else if (direction ==2)
     {
     	myY= myY+5;
     }
     else if (direction ==3)
     {
     	myY=myY-5;
     }
   }

   public void show()
   {
     noStroke();
     fill(myColorR, myColorG, myColorB);
     ellipse(myX, myY, 20, 20);
   }
 }    
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Chemotaxis" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

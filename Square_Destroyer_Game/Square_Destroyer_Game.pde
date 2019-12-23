int a;    //head of the snake x coordinate
float b = 500;    //head of the snake y coordinate
int x = 500;    //target x coordinate
float y = 500;    //target y coordinate
int z = 0;
int x1 = -50, z1;
float y1 = -50;
 int p = 3;

void setup() {
  size(1000, 1000);
  
}


void draw() {
 
  
  if (z==3) {
    x1 = 750;
    y1 = 500;
    z1 = 0;
    fill(255, 0, 0);
    rect(x1, y1, 50, 50);
  }


  if (a>=x-5&&a<=x+5&&b<=y+50&&b>y-30) {   
    y=random(250, 750);   
    rect (x, y, 50, 50);     
    z++;
  }
  
  if (a>=x1-5&&a<=x1+5&&b<=y1+50&&b>y1-30) {   
    y1 = random(200, 800);
    rect (x1, y1, 50, 50);
    z++;
  }
      //if (a==1180&&z==b&&z>3){
      // z--; 
       //b = z;////////////////////////////game over code to reduce points//
 // } 
    
   

  b=(mouseY);    //sets y coordinate of snake to position of mouse
  if (a>=1180) {
    a=5;    //resets path on left hand side of screen once it travels out on the right
  } else {
    background (100);
    fill(0, 0, 255);
    rect(a, b, 30, 30);
    rect(a-30, b, 30, 30);
    rect(a-60, b, 30, 30);
    rect(a-90, b, 30, 30);
    rect(a-120, b, 30, 30);
    rect(a-150, b, 30, 30);
    rect(a-180, b, 30, 30);    //drawing of the snake on the screen and its tail
    a+=25;      //adds to a value of snake to have it travel to the right
  }
  fill(255, 0, 0);
  rect(x, y, 50, 50);     //re draws box #1 on screen every time draw function resets.


  fill(255, 0, 0);
  rect(x1, y1, 50, 50);  

  textSize(80);
  fill(255, 255, 0);
  text("Points: "+z, 315, 100);     //re-displays score on top of screen
}

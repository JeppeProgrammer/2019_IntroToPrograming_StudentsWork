class fade{
  
int[] xpos = new int[50]; 
ArrayList<fade> ypos = new ArrayList<fade>(50);
int Xpos;        // movement of circleX
int Xpos2;        // movement of circleX
int Ypos;        // movement of CircleY
int Ypos2;        // movement of CircleY
int direcX;
int direcY;

fade(int TempX, int TempY, int TDX, int TDY,int tempx, int tempy){
   for (int i = 0; i < xpos.length; i++) {  //initialising Array
  xpos[i] = tempx;     ypos.get(i) = tempy; 
} 
  Xpos = TempX;
  Ypos = TempY;
  direcX = TDX;
  direcY=TDY;
  }
  
fade(int TempX2, int TempY2, int TDX, int TDY,int tempx, int tempy, int TDT){
   for (int i = 0; i < xpos.length; i++) {  //initialising Array
  xpos[i] = tempx;     ypos[i] = tempy; 
} 
  Xpos2 = TempX2;
  Ypos2 = TempY2;
  direcX = TDX;
  direcY=TDY;
  }
  
  void change() { 
   for (int i = 0; i < xpos.length - 1; i++) {
     xpos[i] = xpos[i + 1];    
     ypos[i] = ypos[i + 1]; 
   }
  xpos[xpos.length - 1] =Xpos; // where it should move
  ypos[ypos.length - 1] =Ypos; // where it should move
  Xpos = Xpos + direcX;
  Ypos = Ypos + direcY;
  }
  
  void display(){
 for (int i = 0; i < xpos.length; i++) { 
 noStroke();   
 fill(255 - i*5); 
 ellipse(xpos[i], ypos[i], i, i);  
 }
  }

void bounce(){
    if (Xpos > width || Xpos < 0){
    direcX*=-1;
  }
  if (Ypos > height || Ypos < 0){
    direcY *= -1;
 }
}

void overlap(){
 if (dist(Xpos, Ypos, Xpos2, Ypos2) < 0.5){
   
 }
}

}

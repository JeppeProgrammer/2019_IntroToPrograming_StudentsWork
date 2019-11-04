class Bubble {
  
  //Variable scope
  float x;
  float y;
  float rW;
  float rH;
  int Bolor;
  float BelocityX;
  float BelocityY;
  boolean SlowDown;
  
  //Constructor
  Bubble (float T_x, float T_y, float T_r, int T_color, float T_speedX, float T_speedY) {
  x = T_x;
  y = T_y;
  rW = T_r;
  rH = T_r;
  Bolor = T_color;
  BelocityX = T_speedX;
  BelocityY = T_speedY;
  }
  
  void Bisplay (){
    fill (Bolor); //Color of the bubble
    ellipse(x,y,rW-BelocityY/1.5,rH+BelocityY/1.5); //Draw the bubble
    
  }
  
  void Bove (){
   x = x + BelocityX;
   y = y + BelocityY;
   
   if (SlowDown == true){
    BelocityY = BelocityY *0.9;
    println(SlowDown);
    if (BelocityY < 0.5 && BelocityY > -0.5){
      SlowDown = false;
      BelocityY = BelocityY * -1;
      println(SlowDown);
    }
   }
   
   if (SlowDown == false) {
     
    BelocityY = BelocityY *1.1;
   }
  }
  
  void Bounce (){
    
    if (x > width-(rW/2) || x < (rW/2)) {
      BelocityX = BelocityX * -1;
    }
    
    if (y > height-(rW/2)) {
      BelocityY = BelocityY * -1;
      //rH = rH - BelocityY/1.5;
      //rW = rW + BelocityY/1.5;
      SlowDown = true;
    }
  }



}

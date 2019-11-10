
fade a;


void setup() {  
  size(800, 800);
  a = new fade(width/2, height/2,5,7,width/2,height/2);
}
 
void draw() {  
  background(255);
a.change();
a.display();
a.bounce();
}

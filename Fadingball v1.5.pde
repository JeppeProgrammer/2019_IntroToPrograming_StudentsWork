
fade a;
fade b;


void setup() {  
  size(800, 800);
  a = new fade(width/2, height/2,5,7,width/2,height/2);
  b = new fade(width/2, height/2,-5,7,width/2,height/2, 10);
}
 
void draw() {  
  background(255);
a.change();
a.display();
a.bounce();

b.change();
b.display();
b.bounce();

}

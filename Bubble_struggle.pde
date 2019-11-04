float _x;
float _y;
float _rBubble;
int _BubbleColor;
float _speedX;
float _speedY;

Bubble [] EBubble = new Bubble[7];

void setup() {
  size(1000,600);
  //background(#FFFFFF);
  _x = width/2;
  _y = 200;
  _rBubble = 80;
  _BubbleColor = #0007FF;
  _speedX = 2.5;
  _speedY = 1;
  
  EBubble [0] = new Bubble(_x,_y,_rBubble,_BubbleColor,_speedX,_speedY);
  EBubble [1] = new Bubble(_x,_y,_rBubble-10,_BubbleColor,_speedX,_speedY);
  EBubble [2] = new Bubble(_x,_y,_rBubble-10,_BubbleColor,_speedX*-1,_speedY*-1);
  EBubble [3] = new Bubble(_x,_y,_rBubble-20,_BubbleColor,_speedX,_speedY);
  EBubble [4] = new Bubble(_x,_y,_rBubble-20,_BubbleColor,_speedX,_speedY);
  EBubble [5] = new Bubble(_x,_y,_rBubble-20,_BubbleColor,_speedX*-1,_speedY*-1);
  EBubble [6] = new Bubble(_x,_y,_rBubble-20,_BubbleColor,_speedX*-1,_speedY*-1);
}

void draw() {
  background(#FFFFFF);
  EBubble[0].Bisplay();
  EBubble[0].Bove();
  EBubble[0].Bounce();
  
}

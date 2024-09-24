int startX=150;
int startY=0;
int endX=150;
int endY=0;
float weight = 12;
void setup()
{
  size(300,300);
  background(0,0,0);
  strokeWeight(weight); 

  fill(255,255,255);
  rect(0,0,300,300);
  stroke(224,206,229);
  frameRate(120);
}
void draw()
{
  fill(0,0,0,30);
  rect(0,0,300,300);
  
  endX= endX+(int)(Math.random()*20)-10;
  endY= endY+(int)(Math.random()*20);
  line(startX,startY,endX,endY);
  startX = endX;
  startY = endY;
  weight-=.4;
  strokeWeight(weight);
  
  if (weight < 1)
    weight =1;
}
void mousePressed()
{
  fill(255,255,255);
  rect(0,0,300,300);
  weight = 12;
  strokeWeight(weight);
  startX= 150;
  startY =0;
  endX= 150;
  endY= 0;
}

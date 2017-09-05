//ping pong
int x = 60;
int time = 0;
void setup()
{
  size(300,300);
  frameRate(30);
}
void draw()
{
  background(220,220,220);
  paddle();
  line (50,150,x,150);
  ball();
  move();
}

void ball()
{
  fill (255,255,255);
  ellipse(x,150,20,20);
}

void move()
{
  if (x <= 200 && time == 0)
  {
    x = x + 10;
  }
  if (x >= 60 && time == 1)
  {
    x = x - 10;   
  }
  if (x == 210)
  {
   time = 1; 
  }
  if (x == 50)
  {
    time = 0;
  }
}
void paddle()
{
  fill (0,0,0);
  rect(45,200,5,50);
  ellipse(45,150,40,100);
  fill(255,0,0);
  ellipse(50,150,40,100);
}
int ypos_c,ypos_s,xpos_c,xpos_s;
int y=0,p=0;
int z,q;
int posx,posy;
int carpos,judge_c,judge_s;
int shoot,shoot_y;
int shootd,shoot_yd;
int shootpos,shootposd;
int shootcount;
int ypos_cd,ypos_sd,xpos_cd,xpos_sd;
int yd=0,pd=0;
int zd,qd;
int posxd,posyd;
int shootcountd;
int carposd,judged_c,judged_s;
 int start;
int carposS;
int score;
 

import processing.sound.*;
SoundFile file;
SoundFile circle;
SoundFile square;
SoundFile shooting;


void setup()
{
  size(640,340);
  z=int(random(50,150));
  q=int(random(10,50));
  posx=int(random(1,10.9));
  posy=int(random(1,10.9));
  carpos=60;
  ypos_c=0;
  ypos_s=0;
  xpos_c=80;
  xpos_s=230;
  shoot=0;
  shoot_y=320;
  shootcount=0;
  
  //size(640,340);
  zd=int(random(50,150));
  qd=int(random(10,50));
  posxd=int(random(1,10.9));
  posyd=int(random(1,10.9));
  carposd=380;
  ypos_cd=0;
  ypos_sd=0;
  xpos_cd=400;
  xpos_sd=530;
  shootd=0;
  shoot_yd=320;
  shootcountd=0;
  start=0;
  carposS=140;
  score=0;
  
  file = new SoundFile(this, "sample.mp3");
  file.play();
  circle = new SoundFile(this, "circle1.mp3");
  square = new SoundFile(this, "square.mp3");
  shooting = new SoundFile(this, "shoot.mp3");
  
}


void keyPressed()
{
  if(key==BACKSPACE)
  {
  carpos=220;
  
  }
  if(key==DELETE)
  {
    carpos=60;
  }
  //if(key==BACKSPACE&& start==1)
  //{
  //carpos=460;
  
  //}
  //if(key==DELETE&&start==1)
  //{
  //  carpos=140;
  
  if(key==ENTER)
  {
  carposd=520;
  }
  if(key==TAB)
  {
    carposd=380;
   
  }
  if (key == CODED) 
  {
    if (keyCode == UP)
    {
      file.pause();
    shooting.play();
    file.play();
      shoot=1;
      shootpos=carpos;
      if(shoot_y==0)
      {
        shootcount+=1;
      }
    }
   }
   if (key == CODED) 
   {
    if (keyCode == DOWN)
    {
      file.pause();
    shooting.play();
    file.play();
      shootd=1;
      shootposd=carposd;
      if(shoot_yd==0)
      {
        shootcountd+=1;
      }
    }
   }
   if (key == CODED) 
   {
    if (keyCode == SHIFT)
    {
      start=1;
    }
   }
   if (key == CODED) 
   {
    if (keyCode == ALT)
    {
      start=2;
    }
   }
   if (key == CODED) 
   {
    if (keyCode == LEFT)
    {
      carposS=140;
    }
   }
    if (key == CODED) 
   {
    if (keyCode == RIGHT)
    {
      carposS=460;
    }
   }
   

   
   
}


 



void dottedLine(float x1, float y1, float x2, float y2, float steps){
 for(int i=0; i<=steps; i++) {
   float x = lerp(x1, x2, i/steps);
   float y = lerp(y1, y2, i/steps);
   noStroke();
   ellipse(x, y,2,2);
 }
}

int gameover(int carpos,int xpos,int ypos,char type)
{
  
  if(carpos+20==xpos&&ypos==310&&type=='c')
  {
    return 1;
  }
  else if(carpos+10==xpos&&ypos==310&&type=='s')
  {
   
    return 2;
  }
  else
  {
    return 0;
  }
    
}

    

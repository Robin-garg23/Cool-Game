void single()
{
  dottedLine(320,0,320,340,40);
   textSize(24);
    text("SCORE:",240,30);
    text(score,330,30); 
    
   rect(carposS,320,40,10);
  if(p>q&&posx<=5)
  {
   xpos_c=160;
  ellipse(xpos_c,ypos_c,20,20);
  ypos_c+=2;
  }
  else if(p>q&&posx>5)
  {
    xpos_c=480;
    ellipse(xpos_c,ypos_c,20,20);
  ypos_c+=2;
  }
  if(y>z&&posy<=5)
  {
    xpos_s=470;
  rect(xpos_s,ypos_s-10,20,20);
  ypos_s+=2;
  
  }
  else if(y>z&&(posy>5))
  {
    xpos_s=150;
    rect(xpos_s,ypos_s-10,20,20);
  ypos_s+=2;
  
  }
  y++;
  
  p++;
  if(((ypos_c-ypos_s)<10)&&(ypos_c<5&&ypos_s<5))
  {
    ypos_s-=60;
  }
  
  
  if(ypos_s>340)
  {
    ypos_s=0;
    z=int(random(50,150));
    y=0;
    posy=int(random(1,10.9));
  }
  judge_s=gameover(carposS,xpos_s,ypos_s,'s');
  judge_c=gameover(carposS,xpos_c,ypos_c,'c');
  
  
  
  if(judge_c==1)
  {
    ypos_c=0;
     q=int(random(10,50));
    p=0;
    posx=int(random(1,10.9));
    file.pause();
    
    circle.play();
    file.play();
    score++;
    
    
    
    
    
    
    
  }
  else if(judge_s==2 || ypos_c>315)
  {
      
   //file.stop();
    file.pause();
    square.play();
      
    textSize(64);
    fill(0, 102, 153, 204);
  text("GAMEOVER",160,170);
  textSize(32);
  text("You Lost",180,220);
  delay(2000);
  noLoop();
  }
  //shooting(carposS);
}

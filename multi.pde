void multi()
{
  stroke(255,255,255);
  line(320,0,320,340);
  
   fill(255);
   
 dottedLine(160,0,160,340,40);
 dottedLine(480,0,480,340,40);
 
 rect(carpos,320,40,10);
  if(p>q&&posx<=5)
  {
   xpos_c=80;
  ellipse(xpos_c,ypos_c,20,20);
  ypos_c+=2;
  }
  else if(p>q&&posx>5)
  {
    xpos_c=240;
    ellipse(xpos_c,ypos_c,20,20);
  ypos_c+=2;
  }
  if(y>z&&posy<=5)
  {
    xpos_s=230;
  rect(xpos_s,ypos_s-10,20,20);
  ypos_s+=2;
  
  }
  else if(y>z&&(posy>5))
  {
    xpos_s=70;
    rect(xpos_s,ypos_s-10,20,20);
  ypos_s+=2;
  
  }
  y++;
  
  p++;
  if(((ypos_c-ypos_s)<10)&&(ypos_c<5&&ypos_s<5))
  {
    ypos_s-=60;
  }
  //if(ypos_c>340)
  //{
  //   ypos_c=0;
  //   q=int(random(10,50));
  //  p=0;
  //  posx=int(random(1,10.9));
  //}
  
  if(ypos_s>340)
  {
    ypos_s=0;
    z=int(random(50,150));
    y=0;
    posy=int(random(1,10.9));
  }
  judge_s=gameover(carpos,xpos_s,ypos_s,'s');
  judge_c=gameover(carpos,xpos_c,ypos_c,'c');
  
  
  
  if(judge_c==1)
  {
    ypos_c=0;
     q=int(random(10,50));
    p=0;
    posx=int(random(1,10.9));
    
    
    circle.play();
    file.play();
    
    
    
    
    
  }
  else if(judge_s==2 || ypos_c>315)
  {
      
   //file.stop();
     
    square.play();
    
    textSize(64);
    fill(0, 102, 153, 204);
  text("GAMEOVER",160,170);
  textSize(32);
  text("Player B wins",180,220);
  delay(2000);
  noLoop();
  
  
  
  }
 
  
  rect(carposd,320,40,10);
  if(pd>qd&&posxd<=5)
  {
    xpos_cd=400;
  ellipse(xpos_cd,ypos_cd,20,20);
  ypos_cd+=2;
  }
  else if(pd>qd&&posxd>5)
  {
    xpos_cd=540;
    ellipse(xpos_cd,ypos_cd,20,20);
  ypos_cd+=2;
  }
  if(yd>zd&&posyd<=5)
  {
    xpos_sd=530;
  rect(xpos_sd,ypos_sd-10,20,20);
  ypos_sd+=2;
  
  }
  else if(yd>zd&&(posyd>5))
  {
    xpos_sd=390;
    rect(xpos_sd,ypos_sd-10,20,20);
  ypos_sd+=2;
  
  }
  yd++;
  
  pd++;
  if(((ypos_cd-ypos_sd)<10)&&(ypos_cd<5&&ypos_sd<5))
  {
    ypos_sd-=60;
  }
  //if(ypos_cd>340)
  //{
  //   ypos_cd=0;
  //   qd=int(random(10,50));
  //  pd=0;
  //  posxd=int(random(1,10.9));
  //}
  
  if(ypos_sd>340)
  {
    ypos_sd=0;
    zd=int(random(50,150));
    yd=0;
    posyd=int(random(1,10.9));
  }
  
  judged_c=gameover(carposd,xpos_cd,ypos_cd,'c');
  judged_s=gameover(carposd,xpos_sd,ypos_sd,'s');
  
  
  if(judged_c==1)
  {
    ypos_cd=0;
    qd=int(random(10,50));
    pd=0;
    posxd=int(random(1,10.9));
    file.stop();
    
    circle.play();
     
    
    

  }
  else if(judged_s==2 || ypos_cd>315)
  {
     
    
    square.play();
    
    textSize(64);
    fill(0, 102, 153, 204);
  text("GAMEOVER",160,170);
  textSize(32);
  text("Player A wins",180,220);
  delay(2000);
  noLoop();
  
  }
  
  
  //shooting code
  
  if(shoot==1 && shootcount<4)
  {
    rect(shootpos+15,shoot_y,8,15);
    shoot_y-=2;
    if(shoot_y==ypos_s && carpos+10==xpos_s)
    {
      shoot=0;
      ypos_s=0;
      shoot_y=0;
    }
  }
  if(shootd==1 && shootcountd<4)
  {
    rect(shootposd+15,shoot_yd,8,15);
    shoot_yd-=2;
    if(shoot_yd==ypos_sd && carposd+10==xpos_sd)
    {
      shootd=0;
      ypos_sd=0;
      shoot_yd=0;
    }
  }
  
  
  
}

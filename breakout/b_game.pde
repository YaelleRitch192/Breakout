void game(){
  background(blue);
    textFont(font);
  fill(0);
  
 //bricks
 
 int i=0;
 while(i<n){
   if(alive[i]==true){
managebrick(i);
   }

 i=i+1;
 }


 
  //paddle
  fill(30);
  circle(paddlex,height,paddled);
  
   if (akey==true)paddlex=paddlex-10;
  if (dkey==true)paddlex=paddlex+10;
  if (paddlex<paddled/2)paddlex=paddled/2;
  if (paddlex>width-paddled/2)paddlex=width-paddled/2;
//ball
fill(255);
  circle(ballx, bally, balld);
  timer=timer-1;
  if (timer<0){
    ballx=ballx+vx;
    bally=bally+vy;  
  }
  if (dist(paddlex, height, ballx, bally)<= paddled/2+ balld/2) {
    vx=(ballx-paddlex)/17;
    vy=(bally-height)/17;
}
  if(ballx<balld/2||ballx>width-balld/2){
    vx=vx *-1;
  }
  if(bally<balld/2){
    vy=vy*-1;
  }
//if (ballx>width-balld/2) ballx=width-balld/2;
//if (ballx<balld/2) ballx=balld/2;
//if (ballx<balld/2||ballx>width-balld/2)vx=vx*-1;
//if (bally<balld/2||bally>height-balld/2)vy=vy*-1;
//if (bally>height-balld/2)bally=height-balld/2;
//if (bally<balld/2)bally=balld/2;

////points
if(bally>height){
lives=lives-1;
ballx=width/2;
bally=600;
vy=vy+6;
vx=0;
timer=75;
}
if(lives<1) mode=gameover;
if(score>3) mode=gameover;

}

void managebrick(int i){
    if(y[i]==200) fill(green);
   if(y[i]==250) fill(orange);
   if(y[i]==300) fill(pink);
   if(y[i]==350) fill(purple);
 circle(x[i],y[i],brickd);
  //brick bounce
   if (dist(ballx, bally,x[i], y[i])<= brickd/2+ balld/2) {
    vx=(ballx-x[i])/17;
    vy=(bally-y[i])/17;
    alive[i]=false;
    score++;
   }
}

void gameclicks(){
  
}

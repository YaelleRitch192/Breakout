void game() {
  background(blue);
  image(flowers,0,0,width,height);
  textFont(font);
  fill(0);
  sealion.pause();
  frogs.play();
  camel.pause();
  //bricks

  int i=0;
  while (i<n) {
    if (alive[i]==true) {
      managebrick(i);
    }
    i=i+1;
  }




  //paddle
  fill(30);
  circle(paddlex, height, paddled);

  if (akey==true)paddlex=paddlex-10;
  if (dkey==true)paddlex=paddlex+10;
  if (paddlex<paddled/2)paddlex=paddled/2;
  if (paddlex>width-paddled/2)paddlex=width-paddled/2;

  //ball
  fill(255);
  circle(ballx, bally, balld);
  timer=timer-1;
  if (timer<0) {
    ballx=ballx+vx;
    bally=bally+vy;
  }
  if (dist(paddlex, height, ballx, bally)<= paddled/2+ balld/2) {
    vx=(ballx-paddlex)/7;
    vy=(bally-height)/7;
  }
  if (ballx<balld/2||ballx>width-balld/2) {
    vx=vx *-1;
    bounce.play();
    bounce.rewind();
  }
  if (bally<balld/2) {
    vy=vy*-1;
        bounce.play();
    bounce.rewind();
  }

  ////lives
  if (bally>height) {
    lives=lives-1;
    scoredown.play();
    scoredown.rewind();
    ballx=width/2;
    bally=500;
    vy=5;
    vx=0;
    timer=120;
  }
  textSize(20);
  text("lives:", 40, 30);
  if (lives==1) circle(100, 30, 20);
  if (lives==2) {
    circle(100, 30, 20);
    circle(120, 30, 20);
  } else if (lives==3) {
    circle(100, 30, 20);
    circle(120, 30, 20);
    circle(140, 30, 20);
  }
  
//win and lose
  if (lives<1) mode=gameover;
  if (score>55) mode=gameover;


  //pause button
  fill(255, 255, 255, 50);
  strokeWeight(4);
  if (dist(width/2, 100, mouseX, mouseY)<35.5) {
    stroke(green, 100);
  } else {
    stroke(255, 255, 255, 50);
  }
  circle(width/2, 100, 75);
  strokeWeight(0);
  fill(255);
  rect(480, 80, 12, 40);
  rect(507, 80, 12, 40);
}

void managebrick(int i) {
  if (y[i]==200) fill(green);
  if (y[i]==250) fill(orange);
  if (y[i]==300) fill(pink);
  if (y[i]==350) fill(purple);
  circle(x[i], y[i], brickd);
  //brick bounce
  if (dist(ballx, bally, x[i], y[i])<= brickd/2+ balld/2) {
    vx=(ballx-x[i])/7;
    vy=(bally-y[i])/7;
    alive[i]=false;
    score++;
    broken.play();
    broken.rewind();
  }
}

void gameclicks() {
  if (dist(width/2, 100, mouseX, mouseY)<37.5) {
    mode=pause;
  }
}

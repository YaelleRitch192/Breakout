void gameover() {
  frogs.pause();
  background(200, 30, 250);
  textFont(font);
  textSize(100);
  if (score>55) {
    sealion.play();
    bubbles2();
    fill(pink);
    text("you win", width/2, 200);
      if (mouseX>200 && mouseX<800 && mouseY>450 && mouseY<550)fill(green);
  else  fill(pink); 

  text("play again", width/2, 500);
  }
  
  if (lives<1) {
    background(200, 30, 250);
image(background,0,0,width,height);
    textSize(bigsmall);
    lose.play();
    if (bigsmall<100)bigsmall=bigsmall+1;

    fill(0);
    text("you lose", width/2, 200);
      if (mouseX>200 && mouseX<800 && mouseY>450 && mouseY<550)fill(green);
  else  fill(0); 

  text("play again", width/2, 500);
  }


}

void bubbles2() {
  strokeWeight(1);
  bally=0;
  while (bally<100) {
    dotx=random(0, width);
    doty=random(0, height);
    fill(0, 0, random(100, 255));
    circle(dotx, doty, random(100, 150)); 
    bally=bally+1;
  }
}

void gameoverclicks() {
  if (mouseX>200 && mouseX<800 && mouseY>450 && mouseY<550) mode=intro;
}

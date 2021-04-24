void intro() {
  background(100, 150, 160);
  fill(255);
  sealion.rewind();
  camel.play();
  lose.pause();
  lose.rewind();
  frogs.rewind();
  sealion.pause();
  lives=3;
  score=0;
  paddlex=width/2;
  ballx=width/2;
  bally= 500;
  vx=0;
  vy=5;
  timer=75;
  alive[i]=true;
  int i=0;
  while (i<n) {
    alive[i]=true; 

    i=i+1;
  }

  textFont(font);
  textSize(200);
  //gif
  image(gif[f], 0, 0, width, height);
  f=f+1;
  if (f==frames) f=0;
  //text
  text("Breakout", width/2, 300);
  //start button
  textSize(100);
  if (mouseX>350 && mouseX<650 && mouseY>550 && mouseY<650)fill(green); 
  else fill(255);
  text("start", width/2, 600);
  //keyboard icon
    fill(255);
  textSize(50);
  text("Use keys:",770,500);
  textFont(keyboard);
  textSize(150);
  text("AD",800,600);

}

void introclicks() {
  if (mouseX>350 && mouseX<650 && mouseY>550 && mouseY<650)mode=game;
}

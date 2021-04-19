void intro(){
  background(100,150,160);
    textFont(font);
  textSize(200);
  //gif
    image(gif[f],0,0,width,height);
   f=f+1;
  if(f==frames) f=0;
  //text
    text("Breakout",width/2, 300);
}

void introclicks(){
  mode=game;
}

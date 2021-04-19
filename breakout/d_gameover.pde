void gameover(){
  background(200,30,250);
    textFont(font);
  textSize(100);
  if(score>3){
  text("you win",width/2,height/2);
  }
  if(lives<1){
    text("you lose",width/2,height/2);
  }
}

void gameoverclicks(){
  
}

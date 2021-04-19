//Yaelle Ritch

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//music
Minim minim;
AudioPlayer coinsound;
AudioPlayer gameoversound;
AudioPlayer bumpsound;
AudioPlayer mariosound; 

int mode;
final int intro =1;
final int game =2;
final int pause =3;
final int gameover =4;

//colours
color green = #AAFF00;
color orange = #FFAA00;
color pink = #FF00AA;
color purple = #AA00FF;
color blue = #00AAFF;

//keyboard
boolean akey, dkey;
//paddle
float paddlex, paddled;
//ball
float ballx, bally, balld, vx, vy;
int timer;
//points
int lives;
int score;
//brick variables
int[] x;
int[] y; 
int n;
int brickd;
int i;
int tempx;
int tempy;
boolean[] alive;
//font
PFont font;
//gif
PImage [] gif;
int frames;
int ii;
int f;



void setup() {
  mode=intro;
  size(1000, 700);
  textAlign(CENTER,CENTER);
  
 //brick array setup 
 brickd=50; 
 n=56;
 x=new int[n];
 y=new int [n];
 alive=new boolean[n];
 tempx=200;
 tempy=200;
 int i=0;
 while(i<n){
   x[i]=tempx;
   y[i]=tempy;
   alive[i] = true;
   tempx=tempx+50;
   if(tempx==900){
     tempx=200;
     tempy=tempy+50;
   }
  i=i+1; 
 }
  
  
  //keyboard
  akey=dkey=false;
  //paddle
  paddlex=width/2;
  paddled=100;
  //ball
  //ball
  ballx=width/2;
  bally= 600;
  balld=50;
  vx=0;
  vy=vy+6;
  timer=75;
  //points
  lives=3;
  score=0;
//fonts
font=createFont("Bubblegum.ttf",100);
//gif
 frames=30;
 gif=new PImage[frames];
 int ii = 0;
while(ii<frames){
gif[ii] = loadImage ("frame_"+ii+"_delay-0.1s.gif");
ii=ii+1;
}
//music
  minim=new Minim(this);
  coinsound=minim.loadFile("coin.wav");
  gameoversound=minim.loadFile("gameover.wav");
  bumpsound=minim.loadFile("bump.wav");
  mariosound=minim.loadFile("mario bros theme.mp3");
}

void draw() {
  if (mode==intro) {
    intro();
  } else if (mode==game) {
    game();
  } else if (mode==pause) {
    pause();
  } else if (mode==gameover) {
    gameover();
  } else {
   println("mode error" + mode);
   }
}

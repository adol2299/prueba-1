int[] matx1={100,250,400,250,180,320,250,100,250,400};
int[] maty1={100,100,100,180,250,250,320,400,400,400};
             //1 2 3 4 5 6 7 8 9,10
int[][]matl1={{0,1,0,0,0,0,0,1,0,0},//1
              {1,0,1,1,0,0,0,0,0,0},//2
              {0,1,0,0,0,0,0,0,0,1},//3
              {0,1,0,0,1,1,1,0,0,0},//4
              {0,0,0,1,0,0,1,0,0,0},//5
              {0,0,0,1,0,0,1,0,0,0},//6
              {0,0,0,1,1,1,0,0,1,0},//7
              {1,0,0,0,0,0,0,0,1,0},//8
              {0,0,0,0,0,0,1,1,0,1},//9
              {0,0,1,0,0,0,0,0,1,0},};//10
         
int a=0,b,c,aux1=0,aux=0,cont=0,win=0,ganar,lc,lf;
int []dibujo=new int[4];
int [][]user=new int[10][10];

 //// variables ////
 
void setup(){
background(148, 148, 184);
size(500,500);
strokeWeight(6);
}

//// setup ////

void draw(){
  if(aux1==0){
    textSize(21);
    textAlign(CENTER,CENTER);
text("Bienvenido",250,230);
 text(" Para comenzar presione a ",250,260);
 text("Si en algun momento desea reiniciar presione r",250,290);
  if(keyPressed==true&&key=='a'){
 aux1++;
 background(148, 148, 184);
 }
  }
  else{
  a=matx1.length;
for(int y=0;y<10;y++){
  for(int x=0;x<10;x++){
  if(matl1[x][y]==1){ 
  stroke(212,18,18,1);  
  line(matx1[x],maty1[x],matx1[y],maty1[y]);
  }
  }
}
for(int a1=0;a1<a;a1++){
ellipse(matx1[a1],maty1[a1],20,20);
}
}
 /// ///
if(cont==13){
  for(int f=0;f<10;f++){
  for(int c=0;c<10;c++){
  if(user[f][c]!=1){
  user[f][c]=0;
  }
  }
  }
 for(int rf=0;rf<10;rf++){
 for(int rc=0;rc<10;rc++){
 if(user[rf][rc]!=matl1[rf][rc]){
    ganar=1;
   }
 }
}
 }// ganar 
 if((cont==13)&&(ganar==0)){
  println("Ganó");
  fill(243,243,28);
   textSize(27);//tamaño del texto
    textAlign(CENTER,CENTER);//centralizar texto
text("Ha ganado el nivel",250,230);//se coloco texto
 text("Avanza al siguiente nivel con s",250,250);
     if (keyPressed==true&&key=='s'){//reiniciar
  background(148, 148, 184);
   aux=0;
   cont=0;
   ganar= 0;
   for(int lf=0;lf<10;lf++){
 for(int lc=0;lc<10;lc++){
  user[lf][lc]=0;
 }
}
}
 }//mensaje de ganar
 if((cont==13)&&(ganar==1)){
 fill(243,243,28);
 println("Perdió");
    textSize(29);//tamaño del texto
    textAlign(CENTER,CENTER);//centralizar texto
text("Ha perdido el nivel",250,230);//se coloco texto
 text(" para volver a intentar presione r",250,250);
   aux=0;
   cont=0;
   ganar=0;
 for(int lf=0;lf<10;lf++){
 for(int lc=0;lc<10;lc++){
  user[lf][lc]=0;
 }
}
 }
   if (keyPressed==true&&key=='r'){//reiniciar
 background(148, 148, 184);
   aux=0;
   cont=0;
   ganar=0;
    for(int lf=0;lf<10;lf++){
 for(int lc=0;lc<10;lc++){
  user[lf][lc]=0;
                         }
                        }
                      }  
}//draw

 //// dibujo de lineas ////
 
 void mouseClicked() {
  if(aux==0){
  for(b=0;b<10;b++){
  if((mouseX>=(matx1[b]-10))&&(mouseX<=(matx1[b]+10))&&(mouseY>=(maty1[b]-10))&&(mouseY<=(maty1[b]+10))){
  dibujo[0]=matx1[b];
  dibujo[1]=maty1[b];
  c=b;
  aux++; 
  }
  }
  }
//println(dibujar[0]);
//println(dibujar[1]);
 else{
   
 for(b=0;b<10;b++){
  if((mouseX>=(matx1[b]-10))&&(mouseX<=(matx1[b]+10))&&(mouseY>=(maty1[b]-10))&&(mouseY<=(maty1[b]+10))){
  dibujo[2]=matx1[b];
  dibujo[3]=maty1[b];
  if(matl1[c][b]==1){
    stroke(212,18,18); 
    line(dibujo[0],dibujo[1],dibujo[2],dibujo[3]);
  dibujo[0]=dibujo[2];
  dibujo[1]=dibujo[3];
  user[b][c]=1;
  user[c][b]=1;
  c=b;
  cont++;
  println(cont);
   }
  }
 }
 }
 }
void accumulation(){  

  stagnantPieces stag = new stagnantPieces();
  stag.piececolor = currpiece.piececolor;
  stag.grid= currpiece.piecegrid;
  stagnant.add (stag);
  
}
void draw(){
  fall();
  fill(180);
  display();
          fill(100,100,100);
          rect(0,0,400,50);
          fill(250);
          textSize(50);
          text("TETRIS",120,40);
  currpiece.displaypiece();
  restingPieces();
  
  //game over loop
      for (int i=0; i<notVacant[0].length; i++){
        if (notVacant[2][i] == true){ background(0);textSize(100);fill(255,0,0);text("GAME",70,300);text("OVER",70,400);}
  }
 // ArrayListDisconnect(stagnant);//code currently does not disconnect the arraylist pass by reference
    
}

 void newpiece(){  
  xPoss = 6;
 yPoss = 1;
 currpiece = pieces.get(int(random(pieces.size())));// random "currpiece" selector
 println("New Piece Added");
 }



void display(){
 for (int a = 0; a<400; a+=25){
   for(int b = 0; b<800; b+=25){
     rect(a,b,25,25);
   }
 }
}


void keyPressed() {
          if(key== ' '){
        //    println("drop");
         //   yPoss=28;
         println(notVacant[yPoss+1][xPoss]);
          }
    //////use position variables and occupied variables 
  if (key==CODED) {                
      if (keyCode==LEFT) {
        if(xPoss>0&&notVacant[yPoss][xPoss-1]==false)
      {xPoss--;}                 
      } else if (keyCode==DOWN) {
          if (yPoss<29)
        {yPoss++;}
        } else  if (keyCode==RIGHT) {       
            if(xPoss<13&&notVacant[yPoss][xPoss+2]==false)
          {xPoss++;}
          } else  if (keyCode==UP) {              
           currpiece.rotate();
           }else if(keyCode==SHIFT){
              newpiece();
          } 
        }
}
  
     
void pieceDrop(){
      Final endposs = new Final();
          endposs.accX = xPoss;
          endposs.accY = yPoss;                    
         //  println(yPoss,xPoss);
           //println(notVacant[endposs.accY][endposs.accX]);
          FinalXY.add(endposs);          
      accumulation();
      newpiece();      
  }


void fall() {
      if (millis() > time + 1000) {
        time = millis();
        yPoss++;
      }
            for(int i = 0; i<currpiece.piecegrid.length; i++){
              for(int j = 0; j<currpiece.piecegrid[i].length; j++){
                 if (currpiece.piecegrid[i][j]==true && notVacant[yPoss+i+1][xPoss+j] == true){ //correct for checking full grid for any vacant/nonvacant spots                
                     pieceDrop();
                 }
             }
          }
        if (yPoss>28){  
        pieceDrop();
      }
  
}

void restingPieces(){

  for(int i=0; i<stagnant.size(); i++){
    for(int j = 0; j< stagnant.get(i).grid.length; j++){
      for (int k=0; k< stagnant.get(i).grid[j].length;k++){ 
       
        if (stagnant.get(i).grid[j][k]){            
                notVacant[FinalXY.get(i).accY+j][FinalXY.get(i).accX+k] = true;
              
        fill (stagnant.get(i).piececolor);
        rect (k*blockSize+FinalXY.get(i).accX*blockSize,FinalXY.get(i).accY*blockSize+j*blockSize,blockSize,blockSize);////cxheck for rest validation        
        }
      }
    }
  }

}

//attempting to break the pass-by reference to ArrayList - "stagnant"
//ArrayList<stagnantPieces> ArrayListDisconnect (ArrayList<stagnantPieces> stagnant){
//ArrayList<stagnantPieces> Temp = new ArrayList<stagnantPieces>();
 //for (int i = 0; i<stagnant.size(); i++){
   // Temp.get(i).grid = stagnant.get(i).grid;    
 // }
 //stagnant = new ArrayList<stagnantPieces>();
  // for(int i = 0; i<Temp.size(); i++){
  //  stagnant.get(i).grid = Temp.get(i).grid;   
 //  }
//return stagnant;
//}

  void accumulation(){
    
   for(int i=0; i<currpiece.intArray.length; i++){
     for(int j=0; j<4; j++){
       for(int k=0; k<4; k++){
         if (currpiece.gridCalc(j,k)==currpiece.intArray[i]){
           Full[yPoss+j][xPoss+k] = true;}
       }
     }
   }
 }
 
 void restingPieces(){
   
   if(Full[2][7]==false||Full[2][8]==false||Full[2][9]==false){
     for (int i = 0; i<Full.length; i++){
       for (int j = 0; j<Full[i].length; j++){
         if (Full[i][j]){ fill(0,0,150); rect(blockSize*j, blockSize*i, blockSize, blockSize);} 
       }
     }
   }fill(0); rect(0,0,25,800); rect(325,0,25,800); rect(0,775,350,25);
   
      /////Score board/////
      fill(255,0,0); textSize(24); text("Score: " + score, 130, 795);
      
      
      /////game over loop/////                             
        if (Full[2][4]==true||Full[2][5]==true||Full[2][6]==true){ background(0);textSize(100);fill(255,0,0);text("GAME",35,300);text("OVER",35,400);}
 }
           

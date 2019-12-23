class Final{// accumulated pieces final X/Y values
    int accX;
    int accY;
}
 
class stagnantPieces {
    color piececolor;
    boolean [][] grid = new boolean [4][4];

}


class piece{  
 color piececolor = color(0);  
 boolean [][] piecegrid = new boolean [4][4];


void gridfill(String [] currentpiece){
  
  for(int i = 0; i<currentpiece.length; i++){
    for (int j = 0; j<currentpiece[0].length(); j++){
        char tempChar = currentpiece[i].charAt(j);
        if (tempChar=='1'){
        piecegrid[i][j] = true;
    }else if(tempChar=='0'){  
        piecegrid[i][j] = false;
      }
    }
  }
}

void displaypiece(){
  
  for(int i = 0;i<piecegrid.length; i++){
    for(int j = 0; j<piecegrid[0].length; j++){
   
      if (piecegrid[i][j]){
          
        fill (currpiece.piececolor);
        rect (j*blockSize+xPoss*blockSize,yPoss*blockSize+i*blockSize,blockSize,blockSize);
      }else{
      }
    }
  }

}
  void rotate(){
  //should i create new string array for all four rotations of each piece??
   
  //boolean[][]tempgrid = new boolean[6][6];
 // println("rotate piece");
   // for (int i = 0; i<piecegrid.length; i++){
   // for(int j = 0; j<piecegrid.length; j++){
    //  tempgrid [i][j] = piecegrid[i][j];
    //}
 //}
  //for (int i=0; i<piecegrid.length; i++){
   // for(int j = 0; j<piecegrid.length; j++){
   //// piecegrid[i][5-j] = tempgrid[j][i];
   // }
 //}
  }

}

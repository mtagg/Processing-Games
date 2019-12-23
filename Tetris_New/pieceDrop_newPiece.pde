void pieceDrop(){                        
      accumulation();
      newpiece();      
  }
    
void newpiece(){  
   
    gridNum = 1;
     xPoss = 5;
     yPoss = 1;
 currpiece = Pieces.get(int(random(Pieces.size())));

    
 }

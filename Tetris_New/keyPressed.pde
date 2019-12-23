void keyPressed() {
  
  if (key== ' ') { yPoss++; while(yPoss>1) {yPoss++; fall();}
  } 
  if (key==CODED) { 
    
       if       (keyCode==LEFT) {     
           boolean collision = false;
               for(int i=0; i<currpiece.intArray.length; i++){
                 for(int j=0; j<4; j++){
                    for(int k=0; k<4; k++){                  
                      if (currpiece.gridCalc(j,k)==currpiece.intArray[i]&&Full[yPoss+j][k+xPoss-1]==true){collision = true;}                                 
         }}}if (!collision){xPoss--;}
 }   
       else  if (keyCode==RIGHT) {        
              boolean collision = false;
                  for(int i=0; i<currpiece.intArray.length; i++){
                    for(int j=0; j<4; j++){
                     for(int k=0; k<4; k++){                 
                       if (currpiece.gridCalc(j,k)==currpiece.intArray[i]&&Full[yPoss+j][k+xPoss+1]==true){collision = true;}                                 
         }}}if (!collision){xPoss++;}
 }
       else if (keyCode==DOWN)  {yPoss++;}                   
       else if (keyCode==UP)    {currpiece.rotatePiece();}
       else if (keyCode==SHIFT) {newpiece();}
}
  
  
}

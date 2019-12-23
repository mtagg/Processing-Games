class Piece{
int[]intArray = new int[4];
 color piececolor = color(0); 
 
 
 Piece (int a, int b, int c, int d, color colour){
     intArray[0] = a;
     intArray[1] = b;
     intArray[2] = c;
     intArray[3] = d;
     piececolor = colour;
 
 }
 
 void displayPiece(){

   for(int i=0; i<currpiece.intArray.length; i++){
     for(int j=0; j<4; j++){
       for(int k=0; k<4; k++){
         if (gridCalc(j,k)==currpiece.intArray[i]){       
           fill(currpiece.piececolor);
           rect(k*blockSize+xPoss*blockSize,j*blockSize+blockSize*yPoss,blockSize,blockSize);
         }
       }
     }
   }
 }
 
 int gridCalc(int i, int j){
   int result = -1;
   if (gridNum==1){result = (1+4*i+j);}
   if (gridNum==2){result = (13-(4*j)+i);}
   if (gridNum==3){result = (16-j-(4*i));}
   if (gridNum==4){result = (4-i+(4*j));}  
   return result;
 }
 
 void rotatePiece(){ 
    
 if      (currpiece.intArray[0]==6&&currpiece.intArray[1]==7&&currpiece.intArray[2]==10&&currpiece.intArray[3]==11){gridNum=1;}
 else{
     
   if      (gridNum==1){  if (currpiece.intArray[3]==14&&xPoss<= 1) {xPoss++;} 
                          else if(currpiece.intArray[3]==14&&xPoss>=10){xPoss-=2;}
                          else if (xPoss== 1){ xPoss--;} gridNum=2;}  
   
   else if (gridNum==2){  if (xPoss==10){ xPoss--;} gridNum=3;}
   
                            
   else if (gridNum==3){  if (currpiece.intArray[3]==14&&xPoss<= 1) {xPoss+=2;} 
                          else if(currpiece.intArray[3]==14&&xPoss>=10){xPoss--;}
                          else if (xPoss==10){ xPoss++;} gridNum=4;}
                          
   else if (gridNum==4){  if (currpiece.intArray[3]==14&&xPoss>=10){xPoss++;} 
                          else if (xPoss== 0){ xPoss+=2;} gridNum=1;}   
  }
 }
}

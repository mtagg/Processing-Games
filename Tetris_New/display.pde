 void display(){
   for (int a = 0; a<450; a+=25){
     for(int b = 0; b<800; b+=25){
       rect(a,b,25,25);}
 }
       fill(0);
       rect(0,0,450,50);
       fill(250);
       textSize(50);
       text("TETRIS",100,40);       
 }
      
 void rowClear(){
   boolean rowFull = true;
     for (int row = Full.length-2; row>0; row--){
         for (int col = 0; col<Full[row].length; col++){
             if (!Full[row][col]){rowFull=false;}
           }if (rowFull){ 
               for(int i = row; i>0; i--){Full[i] = Full[i-1];}score+=10;}
        rowFull = true;}  
 }

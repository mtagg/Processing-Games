ArrayList<Piece> Pieces = new ArrayList<Piece>();
Piece currpiece;
boolean [][] Full = new boolean[32][14];
int xPoss, yPoss, time, gridNum, blockSize = 25, score = 0;



void setup(){ 
  
size(350,800);
gridNum = 1;

currpiece = new Piece(9,5,6,7,color(255,0,0));
Pieces.add(currpiece);

currpiece = new Piece(6,9,10,11,color(0,150,150));
Pieces.add(currpiece);

currpiece = new Piece(5,9,10,11,color(100,180,0));
Pieces.add(currpiece);

currpiece = new Piece(6,7,9,10,color(150,50,150));
Pieces.add(currpiece);

currpiece = new Piece(5,6,10,11,color(255,255,0));
Pieces.add(currpiece);

currpiece = new Piece(2,6,10,14,color(255,0,255));
Pieces.add(currpiece);

currpiece = new Piece(6,7,10,11,color(255));
Pieces.add(currpiece);

for (int i = 0; i<Full.length; i++){Full[i][0]=true;  Full[i][13]=true;}
for (int i = 0; i<Full[31].length; i++){Full[31][i]=true;}
 
newpiece();
}

void draw(){
  
  fill(180);
  rowClear();
  display();
  fall();
  currpiece.displayPiece();
  restingPieces(); 
  }
  
void fall(){  
  
   for(int i=0; i<currpiece.intArray.length; i++){
      for(int j=0; j<4; j++){
         for(int k=0; k<4; k++){
            if (currpiece.gridCalc(j,k)==currpiece.intArray[i]&&Full[yPoss+1+j][k+xPoss]==true)                                    
                  {pieceDrop();}}
        }
    }
    if (score<100){
        if (millis() > time + 1000) 
          {time = millis(); yPoss++;}
    }else if (score>=80){
        if (millis() > time + 200) 
          {time = millis(); yPoss++;}
    }
}

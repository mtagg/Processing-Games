int time;
int xPoss = 8;
int yPoss = 0;
int blockSize = 25;
int accX;
int accY;
piece currpiece = new piece();

ArrayList<piece> pieces = new ArrayList<piece>();
ArrayList<stagnantPieces> stagnant = new ArrayList<stagnantPieces>();
ArrayList<Final> FinalXY = new ArrayList<Final>();

boolean[][] notVacant = new boolean [34][17];// grid size of the play screen plus buffer

//ArrayList<finalGrid> finalgrids = new ArrayList<finalGrid>();
//class finalGrid{
//boolean[][] grid = new boolean [6][6];
//}

void setup(){
 size(400,800);
 
  //individually add different currpiece pieces to array list "pieces"
   String []currentpiece = new String[4];

currpiece = new piece();
currentpiece[0] = "0000";
currentpiece[1] = "0010";
currentpiece[2] = "1110";
currentpiece[3] = "0000";
currpiece.gridfill (currentpiece);
currpiece.piececolor = color(255,0,0);
pieces.add(currpiece);

currpiece = new piece();
currentpiece[0] = "0000";
currentpiece[1] = "1000";
currentpiece[2] = "1110";
currentpiece[3] = "0000";
currpiece.gridfill (currentpiece);
currpiece.piececolor = color(0,0,255);
pieces.add(currpiece);

currpiece = new piece();
currentpiece[0] = "0000";
currentpiece[1] = "1100";
currentpiece[2] = "0110";
currentpiece[3] = "0000";
currpiece.gridfill (currentpiece);
currpiece.piececolor = color(100,180,0);
pieces.add(currpiece);

currpiece = new piece();
currentpiece[0] = "0000";
currentpiece[1] = "0110";
currentpiece[2] = "1100";
currentpiece[3] = "0000";
currpiece.gridfill (currentpiece);
currpiece.piececolor = color(150,50,150);
pieces.add(currpiece);

currpiece = new piece();
currentpiece[0] = "0000";
currentpiece[1] = "0100";
currentpiece[2] = "1110";
currentpiece[3] = "0000";
currpiece.gridfill (currentpiece);
currpiece.piececolor = color(255,255,0);
pieces.add(currpiece);

 newpiece();

 }





    
        
    
          
         

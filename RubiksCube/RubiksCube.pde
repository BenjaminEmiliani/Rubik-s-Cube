import peasy.*;

PeasyCam cam;

color[] colors = {
//   UP     Down      Right    Left    Front    Back
  #FFFFFF, #FFFF00, #FF0000, #FFA500, #00FF00, #0000FF
};

// 3x3 rubik's cube
final int dim = 3;

Cubie[][][] cube = new Cubie[dim][dim][dim];

void setup(){
  size(600, 600 , P3D);
  cam = new PeasyCam(this, 400);
  //triple nested loop to generate all cubies in three different dimensions
  for(int i = 0; i < dim ; i++){
   for(int j = 0; j < dim ; j++){
    for(int k = 0; k < dim ; k++){
        
      int size = 50;
      float offset = ((dim - 1) * size)* 0.5;
      float x = size*i - offset;
      float y = size*j - offset;
      float z = size*k - offset;
      
      cube[i][j][k] = new Cubie(x, y, z, size);
      }
    }
  } 
}

void draw(){
  background(51);
  for(int i = 0; i < dim ; i++){
   for(int j = 0; j < dim ; j++){
    for(int k = 0; k < dim ; k++){
        
       cube[i][j][k].show();
      }
    }
  } 
    
}

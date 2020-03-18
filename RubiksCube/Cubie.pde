class Cubie {
  PVector pos;
  float sideLen;
 
  Cubie( float x , float y, float z, float len){
    pos = new PVector( x, y, z);
    sideLen = len;
  }
  
  
 void show(){
   fill(255);
   stroke(0);
   strokeWeight(8);
   pushMatrix();
   translate(pos.x,pos.y,pos.z);
   box(sideLen);
   popMatrix();
 }
  
  
}

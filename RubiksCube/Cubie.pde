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
   
   beginShape(QUADS);
   float r = sideLen/2;
   
  //z-axis 
   vertex( -r, -r , r);
   vertex(  r, -r , r);
   vertex(  r,  r , r);
   vertex( -r,  r , r);
   
   vertex( -r, -r , -r);
   vertex(  r, -r , -r);
   vertex(  r,  r , -r);
   vertex( -r,  r , -r);
   
   //y-axis 
   vertex( -r,  r , -r);
   vertex(  r,  r , -r);
   vertex(  r,  r ,  r);
   vertex( -r,  r ,  r);
   
   vertex( -r, -r , -r);
   vertex(  r, -r , -r);
   vertex(  r, -r ,  r);
   vertex( -r, -r ,  r);
   
    //x-axis 
   vertex(  r, -r , -r);
   vertex(  r,  r , -r);
   vertex(  r,  r ,  r);
   vertex(  r, -r ,  r);
   
   vertex( -r, -r , -r);
   vertex( -r,  r , -r);
   vertex( -r,  r ,  r);
   vertex( -r, -r ,  r);
   
     
   endShape();
   popMatrix();
   }
  
}

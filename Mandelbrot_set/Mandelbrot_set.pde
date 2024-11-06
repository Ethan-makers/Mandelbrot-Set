float aMax = 1, aMin = -2;
float bMin = 1.5, bMax = -1.5;

float aSlope, bSlope;

void setup() {
  background(0);
  size (800,800);
  
  aSlope = (aMax-aMin)/width;
  bSlope = (bMin-bMax)/height;
  
  noLoop();
}

void draw() {
  for (float x = 0; x <=width; x++) {
    float a = get_a_value(x);
    
    for (float y = 0; y <= height; y++) {
      float b = get_b_value(y);
      
      ComplexNum c = new ComplexNum(a,b);
      ComplexNum z = c; //Stating value of z
      
      int row = 1;
      
      while (row < 200 && z.absValue() < 2) {
        z = (z.mult(z)).add(c);
        row++;
      }
      
      if (row >= 200) {
        stroke(pow(255-170*-c.absValue(),2),255-200*c.absValue(),255-150*c.absValue());
        point(x,y);
      }
      else if (row < 200){
        stroke(pow(row,1.4),1.5*row,exp(0.5*row));
        point(x,y);
      }
        
    }
 }
}

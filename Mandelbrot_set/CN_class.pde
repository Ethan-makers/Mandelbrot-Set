class ComplexNum {
  //Fields
  float rp,ip; //real part and imagineary part of the complex number
  
  //Constructior
  ComplexNum(float a, float b) {
    this.rp = a;
    this.ip = b;
  }
  
  //Methods
  float absValue() {
    float C = sqrt(pow(this.rp,2)+pow(this.ip,2));
    return C;
  }
  
  ComplexNum add(ComplexNum other) {
    ComplexNum C = new ComplexNum(this.rp+other.rp,this.ip+other.ip);
    return C;
  }
  
  void display() {
    println(this.rp,"+",this.ip+"i");
  }
  
  ComplexNum mult( ComplexNum other ) {
    float realPart = (this.rp*other.rp)-(this.ip*other.ip);
    float imagPart = (this.rp*other.ip)+(other.rp*this.ip);
    ComplexNum C = new ComplexNum(realPart,imagPart);
    return C;
    }
   
}

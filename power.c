double Power(double x , int y){
    double res = 1;
    if(y<0){
        y *= -1;
    }
    while(y>0){
        res *=x;
        y--;
    }
    return (y<0) ? 1/res : res;
}
double Exponent(int x){
      double e = 1;
  for (int i = 8; i > 0; --i ) {
    e = 1 + e / i;
  }
  return Power(e,x);
}

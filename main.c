#include <stdio.h>
#include "myMath.h"
int main(){
double x=0;
printf("Please insert a real number:");
scanf("%lf",&x);
float func1 = sub(add(Exponent(x),Power(x,3)),2);
float func2 = add((mul(x,3)),mul((Power( x , 2)),2));
float func3 = sub(div(mul(Power(x,3),4),5),mul(x,2));
printf("The value of f(𝑥)=𝑒^𝑥+𝑥^3−2 at the point %.4lf is:%.4f\n", x,func1);
printf("The value of f(x)=3x+2X^2 at the point %.4lf is:%.4f\n", x,func2);
printf("The value of f(x)=(4x^3)/5-2x at the point %.4lf is:%.4f\n", x,func3);
return 0;
} 
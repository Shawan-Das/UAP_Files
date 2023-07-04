clc
clear
pkg load symbolic

f=@(x) x.^3-0.165*x.^2+3.993*10^-4;

iteration=5;
step=0;

x0=0.02;
x1=0.05;
y0=f(x0);
y1=f(x1);

while(step<iteration)
  x=x1-(x1-x0)*y1/(y1-y0);
  y=f(x);
  disp(x)
  step+=1;
  x0=x1;
  y0=y1;
  x1=x;
  y1=y;
endwhile
clc
clear

equation = @(t) 2000*log((14*10.^4)/((14*10.^4)-2100*t))-9.8*t;
xLev = [];
yLev = [];
for i = 1 : 30
  xLev(i) = i;
  yLev(i) = equation(i);
end
%Analytical solution
disp(xLev);
disp(yLev);
plot(xLev, yLev)


clear
clc
syms x
syms y

%y = x.^3 + 2*x.^2 - x + 3;
x = -5:.01:5;
y = x.^3 + 2*x.^2 - x + 3;

dydx_num = diff(y)./diff(x)  
dydx_num = [dydx_num NaN]

dydx_exact = 3*x.^2 + 4.*x -1;

%dydx = [[dydx_num, NaN]©, dydx_exact©]

plot(x,dydx_num, x, dydx_exact)
%title(©dy/dx©)
legend(©numerical solution©, ©analytical/Exact solution©)
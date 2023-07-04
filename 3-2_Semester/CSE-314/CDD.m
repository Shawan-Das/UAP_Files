clc
clear
pkg load symbolic
f = @(x) 2000*log((14*10.^4)/((14*10.^4)-2100*x))-9.8*x;
DevF = function_handle(diff (formula(f(sym("x")))));

x= input("Independent Variable: ");
stepSize = input("Step Size: ");

Approximate_Derivative = (f(x+stepSize) - f(x-stepSize))/(2*stepSize);

fprintf("Approximate Value: %f \n", Approximate_Derivative);

Approximate_True_error =  abs(DevF(x) - Approximate_Derivative)/DevF(x);

fprintf("Approximate True error: %f \n", Approximate_True_error*100);
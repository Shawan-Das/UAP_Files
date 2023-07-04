clc
clear
pkg load symbolic
f = @(x) 3*x.^3 - 2*x.^2 +x-1;
DevF = function_handle(diff (formula(f(sym("x")))));

x= input("Independent Variable: ");
stepSize = input("Step Size: ");

Approximate_Derivative = (f(x+stepSize) - f(x))/stepSize;

fprintf("Approximate Value: %f \n", Approximate_Derivative);

Approximate_True_error =  abs(DevF(x) - Approximate_Derivative)/DevF(x);

fprintf("Approximate True error: %f \n", Approximate_True_error*100);
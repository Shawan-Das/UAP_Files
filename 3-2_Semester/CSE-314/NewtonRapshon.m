clc
clear
pkg load symbolic
  f = @(x) 2*x.^0.5 + x.^0.5-5;
  f1 = function_handle (diff(formula (f(sym("x")))));
  fprintf("Iteration\t  x0\t\t  Relative Error\t  Significant digit\n");
  iteration=10;
  step=1;
  x0=(0.5 +1.0)/2;

  while(step<=iteration)
    
    if(f1(x0)==0)
      disp("Division By zero");
    end
    
    x1= x0 - (f(x0)/f1(x0));
    relative_error = abs((x1-x0)/x1)*100;
    x0=x1;
    fprintf("%d \t\t%d \t\t%d \t\t \n",step, x0, relative_error);
    step+=1;
end 
    %end
   
  %end 
%sfg
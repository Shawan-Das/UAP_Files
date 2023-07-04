clc
clear
pkg load symbolic
  f = @(x) x.^3 -2*x.^2 +3;
  f1 = function_handle (diff(formula (f(sym("x")))));
  
  iteration=10;
  step=0;
  x0=-1.5;
  while(step<=iteration)
    
    if(f1(x0)==0)
      disp("Division By zero");
    end
    x0= x0 - (f(x0)/f1(x0))
    step+=1;
end 
    %end
   disp("Root is in "); disp(x0);
  %end 
%sfg
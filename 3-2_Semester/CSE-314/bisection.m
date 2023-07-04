clc clear
  f = @(x) 7*x-1-cos(x);
  xl= 0;
  xu= 7;
  
  if(f(xl)*f(xu)>0)
    disp("Root isn©t in range");
  else
    while(1)
     xm=(xl+xu)/2
     if(f(xl)*f(xm)==0)
       disp("Root is in"); disp(xm);
       break;
     end
     if(f(xl)*f(xm)<0)
        xu=xm;
      end
     if(f(xl)*f(xm)>0)
        xl=xm;
     end
    endwhile
end
%--
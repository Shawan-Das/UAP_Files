clc
clear
%19101020 - for loop

a=0.5;
sum = 1+a;

i=2;

while(i<10)
  sum+= ( power(a,i) / factorial(i));
  i+=1;
end
%end

fprintf("e^a = %f \n",sum);
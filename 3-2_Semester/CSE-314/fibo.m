clc
clear
f0 =0;
f1 =1;
F = [f0 f1];

for i= 1:10
  sum = f0 +f1;
  F = [F sum];
  f0= f1;
  f1= sum;
end
%end
disp(F);

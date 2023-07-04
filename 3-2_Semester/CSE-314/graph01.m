pkg load symbolic
h = zeros(4, 1);
h(1) = 1.60; h(2) = 1.85; h(3)= 1.75; h(4) = 1.80;

H = zeros(4, 1);
H(1) = 0.50; H(2) = 0.70; H(3)= 1.90; H(4) = 1.75;

family_member_no = zeros(4, 1);
family_member_no(1) = 0; family_member_no(2) = 1;
family_member_no(3) = 2; family_member_no(4) = 3;

%{
plot(family_member_no, h)
hold('on')
plot(family_member_no, H)
hold('off')
%}
plot(family_member_no, h,':',family_member_no, H,'b--o')


xlabel('Family member number');
ylabel('Height (m)')
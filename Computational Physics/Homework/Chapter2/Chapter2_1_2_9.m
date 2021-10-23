%教材题2-9
clear
format long
a = 0;
b = 1;
n = 5000;
t = rand(1,n);
x = a+(b-a)*t;
y = 1./(1+x.^2);
s = sum(y)*(b-a)/n
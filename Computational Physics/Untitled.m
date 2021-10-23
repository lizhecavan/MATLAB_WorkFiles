% f =@(x,y) sin(x+y)/(x+y);
% v = integral2(matlabFunction(f),0,4,-1,2)
x= 0:0.1:4;
y = -1:0.1:2;
[x,y] = meshgrid(x,y);
z = sin(x+y)./(x+y);
waterfall(x,y,z)
grid
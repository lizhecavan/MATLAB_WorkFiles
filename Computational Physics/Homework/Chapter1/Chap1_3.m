%第三题
clear
[X,Y] = meshgrid(-5:0.1:5, 0:0.1:10);
Z = X.^2.*Y + sqrt(Y) ./ X;
surfc(X,Y,Z);
view(60,30);
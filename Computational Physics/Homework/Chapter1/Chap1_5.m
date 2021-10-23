%选做题
clear
lambda = input('请输入光波波长(mm):');
R = input('请输入透镜曲率半径(mm)：');
[X,Y] = meshgrid(-2:0.001:2, -2:0.001:2);
r = sqrt(X.^2+Y.^2);
I = (sin((pi*r.^2)/(R*lambda))).^2;
figure
imshow(I)
title(['牛顿环条纹  ','R=',num2str(R),'mm','  lambda=',num2str(lambda),'mm']);
%第四题

%初始化
clear
format long
%定义最概然速率
v_p = 1578;
%定义积分区间
a = 0;
b = 10*v_p;%由于函数收敛快速，所以b取8倍以上的v_p
%定义区间数
n = 20000;
%步长
h = (b-a)/n;
x = a:h:b;
y = (4/sqrt(pi)*(x.^2/v_p^3).*exp(-x.^2/v_p^2));
%计算平均速率
y1 = x.*y;
y1(2:2:n) = 4*y1(2:2:n);
y1(3:2:n-1) = 2*y1(3:2:n-1);
s1 = h/3*sum(y1);
%计算方均根速率
y2 = x.^2.*y;
y2(2:2:n) = 4*y2(2:2:n);
y2(3:2:n-1) = 2*y2(3:2:n-1);
s2 = sqrt(h/3*sum(y2));
%结果比较
disp(['平均速率为：',num2str(s1)])
disp(['方均根速率为：',num2str(s2)])
disp(['计算所得结果的比值为：','1:',num2str(v_p/s1),':',num2str(v_p/s2)])
disp(['理论比值为：','1:',num2str(1/sqrt(4/pi)),':',num2str(1/sqrt(3/2))])

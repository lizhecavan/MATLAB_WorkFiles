%第二章教材题目2-2
clear,clc
%定义区间、区间数、步长、定义域和函数
a = -1;
b = 1;
N = 2000;
h = (b-a)/N;
x = a:h:b;


%以在相同区间数下计算所用时间作为效率的比较
%梯形法
tic
y1 = 1/sqrt(2)*exp(-x.^2);
y1(2:1:N) = 2*y1(2:1:N);
s1 = h*sum(y1)/2;
t1 = toc;


%辛普森法

tic
y2 = 1/sqrt(2)*exp(-x.^2);
y2(2:2:N) = 4*y2(2:2:N);
y2(3:2:N-1) = 2*y2(3:2:N-1);
s2 = h/3*sum(y2);
t2 = toc;

%蒙特卡洛法
tic
t = rand(1,N);
x = a+(b-a)*t;
y = 1/sqrt(2)*exp(-x.^2);
s3 = sum(y)*(b-a)/N;
t3 = toc;

%输出
disp(['梯形法计算结果:', num2str(s1,10), '   用时为：', num2str(t1,10)])
disp([ '辛普森法计算结果为：',  num2str(s2,10), '   用时为：', num2str(t2,10)])
disp(['蒙特卡洛法计算结果为：', num2str(s3,10), '   用时为：', num2str(t3,10)])
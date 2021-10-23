%第三题：计算二重积分
%初始化
clear
format long
%定义积分区间
a_x = 0;
b_x = 4;
a_y = -1;
b_y = 2;
%定义积分区间数
N_x = 10000;
N_y = 10000;
%步长
h_x = (b_x-a_x)/N_x;
h_y = (b_y-a_y)/N_y;
%划分区间
[x,y] = meshgrid(a_x:h_x:b_x,a_y:h_y:b_y);

%梯形法
tic
z1 = (sin(x+y)./(x+y))';
z1(2:N_x,1) = 2*z1(2:N_x,1);
z1(2:N_x,N_y+1) = 2*z1(2:N_x,N_y+1);
z1(1,2:N_y) = 2*z1(1,2:N_y);
z1(N_x+1,2:N_y) = 2*z1(N_x+1,2:N_y);
z1(2:N_x,2:N_y) = 4*z1(2:N_x,2:N_y);
i = isnan(z1);
z1(i) = 0;
s1 = h_x*h_y*sum(z1,'all')/4;
t1 = toc;
%辛普森法
tic
z2 = (sin(x+y)./(x+y))';
z2(3:2:N_x-1,1) = 2*z2(3:2:N_x-1,1);
z2(N_x+1,3:2:N_y-1) = 2*z2(N_x+1,3:2:N_y-1);
z2(1,3:2:N_y-1) = 2*z2(1,3:2:N_y-1);
z2(3:2:N_x-1,N_y+1) = 2*z2(3:2:N_x-1,N_y+1);
z2(N_x+1,4:2:N_y) = 4*z2(N_x+1,4:2:N_y);
z2(1,4:2:N_y) = 4*z2(1,4:2:N_y);
z2(4:2:N_x,1) = 4*z2(4:2:N_x,1);
z2(4:2:N_x,N_y+1) = 4*z2(4:2:N_x,N_y+1);
z2(3:2:N_x-1,3:2:N_y-1) = 4*z2(3:2:N_x-1,3:2:N_y-1);
z2(2:2:N_x,3:2:N_y-1) = 8*z2(2:2:N_x,3:2:N_y-1);
z2(3:2:N_x-1,2:2:N_y) = 8*z2(3:2:N_x-1,2:2:N_y);
z2(2:2:N_x,2:2:N_y) = 16*z2(2:2:N_x,2:2:N_y);
i = isnan(z2);
z2(i) = 0;
s2 = h_x*h_y*sum(z2,'all')/9;
t2 = toc;

%蒙特卡洛法
tic
t_x = rand(1,N_x);
t_y = rand(1,N_y);
x = a_x+(b_x-a_x)*t_x;
y = a_y+(b_y-a_y)*t_y;
[x,y] = meshgrid(x,y);
z3 = sin(x+y)./(x+y);
i = isnan(z3);
z3(i) = 0;
s3 = sum(z3,'all')*(b_x-a_x)*(b_y-a_y)/(N_x*N_y);
t3 = toc;

%精确值
fun = @(x,y) sin(x+y)./(x+y);
 I = integral2(fun,0,4,-1,2);
 
 
%结果比较
disp(['精确值为：',num2str(I)])
 disp(['梯形法结果为：',num2str(s1,10),'   所用时间为：',num2str(t1,10),'   与精确值的绝对误差为：',num2str(abs(s1-I),10)])
 disp(['辛普森法结果为：',num2str(s2,10),'   所用时间为：',num2str(t2,10),'   与精确值的绝对误差为：',num2str(abs(s2-I),10)])
 disp(['蒙特卡洛法结果为：',num2str(s3,10),'   所用时间为：',num2str(t3,10),'   与精确值的绝对误差为：',num2str(abs(s3-I),10)])
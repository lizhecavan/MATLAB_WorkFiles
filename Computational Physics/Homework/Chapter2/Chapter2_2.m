clear
format long
a = 0;
b = 0.1;
epsilon_0 = 1e-10;%设置误差阈值
for i = 1:10
    n = 2;
    s = 0;
    s_n = 1;
    while (abs(s_n-s) > epsilon_0)
        h = (b-a)/n;
        x = a:h:b;
        y = 2/sqrt(pi)*exp(-x.^2);
        y(2:2:n) = 4*y(2:2:n);
        y(3:2:n-1) = 2*y(3:2:n-1);
        s = s_n;
        s_n = h*sum(y)/3;
        n = n+2;
    end
    N(i) = n;
    B(i) = b;
    S(i) = s_n;
    err(i) = abs(s_n-erf(b));
    b = b+0.1;
end
%输出
B
S
N
err
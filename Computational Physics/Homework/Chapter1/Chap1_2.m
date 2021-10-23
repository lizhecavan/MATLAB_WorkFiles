%第二题
clear
x = 10:10:100;
y = x.^2 + sin(x) + log10(x);
figure
p = plot(x,y,'r-..','DisplayName','function');
p.MarkerSize = 20;
p.LineWidth = 2;
title('Plot')
xlabel('x')
ylabel('y')
legend('function')
t = text(40,8000,'$y=x^{2}+\sin x+\log_{10} x$','FontSize',16);
t.Interpreter = "latex";
y
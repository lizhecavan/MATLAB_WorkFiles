function myInt1 = Rec(N,a,b)
n = b;
for i = 1:N
    n = (a+n)/2;
    h = (b-a)/2^(i-1);
end
myInt1 = h*f(n)*N;
end

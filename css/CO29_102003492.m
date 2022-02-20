%Q3(i)
clc
clear all
format long;
a = 0;
b = 0;
count = 0;
f1 = @(x)x - sqrt(29);
N = 10;
h = 1;
for i = -N:h:N
    if f1(i)*f1(i+h)<0
        a = i;
        b = i+h;
        disp(a);
        disp(b);
    end
end
c = (a + b) / 2;
tolerance = 0.001;
n = (log(b-a)-log(tolerance)/log(2));
%error = abs(f1(c));
%error = (b-a)/2;
while n > ((log(b-a)-log(tolerance))/log(2))
    if f1(a)*f1(c)<0
        b = c;
    else
        a =c ;
    end
    c = (a + b)/2;
    %error = abs(f1(c));
    %error = (b-a)/2;
    n = (log(b-a)-log(tolerance)/log(2));
    %count = count + 1;
end
count = ceil(n);
fprintf('Root is = %f \n ' ,c);
fprintf('Number of iterations = %f ' ,count);
    

%Q3(ii)
clc
clear all
format long;
a = 1;
b = 2;
count = 0;
f1 = @(x)(x^3+4*x^2-10);
c = (a + b) / 2;
tolerance = 0.001;
error = (b-a)/2;
while error > tolerance
    if f1(a)*f1(c)<0
        b = c;
    else
        a =c ;
    end
    c = (a + b)/2;
    error = (b-a)/2;
    count = count + 1;
end
fprintf('Root is = %f \n ' ,c);
fprintf('Number of iterations = %f ' ,count);
    
%Q4
clc
clear all
format long;
a = 0;
b = 0;
T = 273.15 + 18.99;
count = 0;
N = input('Value of N ');
h = input('Value of h ');
f1 = @(R)(1.129241*10^(-3) + 2.341077*10^(-4)*log(R) + 8.775468*10^(-8)*(log(R))^(3) - T^(-1));
for i = -N:h:N
    if f1(i)*f1(i+h)<0
        a = i;
        b = i+h;
        disp(a);
        disp(b);
    end
end
c = (a + b) / 2;
tolerance = 0.000000001;
error =abs(f1(c));
while error > tolerance
    if f1(a)*f1(c)<0
        b = c;
    else
        a =c ;
    end
    c = (a + b)/2;
    error =abs(f1(c));
    count = count + 1;
end
fprintf('Root is = %f \n ' ,c);
fprintf('Number of iterations = %f ' ,count);
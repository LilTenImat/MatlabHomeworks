%% 1
clear
syms x
f = x^5 + 4*x^4 - 2*x^3 - 14*x^2 - 3*x - 18;
disp(factor(f))
%% 2
clear
syms x
syms a
f_1 = x*exp(-x);
f_2 = tan(x)^(tan(2*x));
f_3 = atan(1/(1-x));
disp(limit(f_1, inf));
disp(limit(f_2, pi/4));
a = 1;
disp(limit(f_3, x, a, 'Right'));
%% 3
clear
syms x
f_1 = atan(x)/2 - x/(2^(1+x^2)^2);
f_2 = 3*x^4 - 14*x^3 + 12*x^2 + 24*x + 6;
f_3 = (sin(3*x) - cos(3*x))^2;
disp(simplify(diff(f_1)));
disp(simplify(diff(f_2)));
disp(simplify(diff(f_3)));
%% 4
clear
syms x
f_1 = sqrt(1-x^2)/x^2;
f_2 = 1/sin(x)^3;
f_3 = (sin(2*x) + 1)^(1/7) * cos(2*x);
f_5 = 1/(1+x^2);
disp(int(f_1,x));
disp(int(f_2,x));
disp(int(f_3,x));
disp(int(f_5,x, 0, inf));
%% 5
clear
syms x k n;
f = symsum(1/(k^2), k, 1, n);
disp(limit(f, n, inf));
%% 6
clear
syms x;
f = exp(x);
a = 0;
n = 5;
disp(taylor(f, x, a, 'Order', n));
%% 6.2
clear
syms x;
f = log(2*x - 1);
a = -1;
n = 3;
disp(taylor(f, x, a, 'Order', n));
%% 7
clear
syms x;
y = exp(1/(1 - x^2))/(1 + x^2);
ezplot(y, -7, 7);
hold on
stem(-1, 100);
stem(1, 100);
%% 8
clear 
syms x;
a = sin(x)/(x^2+1);
func = matlabFunction(a);
xt = -5:0.01:5;
y = func(xt);
xm = fminbnd(func, -5, 5);
plot(xt, y)
hold on
plot(xm, func(xm), 'rO')
hold on
tfunc = matlabFunction(-a);
xM = fminbnd(tfunc, -5, 5);
plot(xM, func(xM), 'rO')
%% 9
clear
syms t u;
x = t * cos(u) * cos(u);
y = t^2 * cos(u) * sin(u);
z = t^3 * sin(u);

xd = diff(x);
yd = diff(y);
zd = diff(z);

xd2 = diff(x,2);
yd2 = diff(y,2);
zd2 = diff(z,2);

xd3 = diff(x,3);
yd3 = diff(y,3);
zd3 = diff(z,3);

k = sqrt(det([xd2 yd2; xd yd])^2 + det([yd2 zd2; yd zd])^2 + det([zd2 xd2; zd xd])^2)/sqrt(xd^2 + yd^2 + zd^2);
kappa = (zd3 * (xd * yd2 - xd2 * yd) + zd2 * (xd3 * yd - yd3 * xd) + zd * (xd2 * yd3 - xd3 * yd2)) / ((xd^2 + yd^2 + zd^2) * (xd2^2 + yd2^2 + zd2^2));

disp(simplify(k));
disp(simplify(kappa));
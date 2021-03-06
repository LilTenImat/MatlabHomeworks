%% 3 a
clear
x = -3:0.01:3;
f = sin(exp(x));
xlim([-3,3]);
plot(x,f);
grid on
hold on
% z = ginput(1);
nears = [1 2 2.2 2.5 2.7 3];
for i = nears
    r = fzero('sin(exp(x))', i);
    plot(i, sin(exp(i)), 'g*');
    plot(r, sin(exp(r)), 'r*');
end
%% 3b
clear
x = 0:0.01:2*pi;
f = sin(x.*(x-1));
xlim([-3,3]);
plot(x,f);
grid on
hold on
% z = ginput(1);
nears = [1 2 3 3.5 4 4.5 5 5.2 5.5 5.9 6.1];
for i = nears
    r = fzero('sin(x*(x-1))', i);
    plot(i, sin(i*(i-1)), 'g*')
    plot(r, sin(r*(r-1)), 'r*');
end
%% 3e
clear
x = -2*pi:0.01:6*pi;
f = 5*exp(-x./10).*sin(x)-x./10;
xlim([-3,3]);
plot(x,f);
grid on
hold on
% z = ginput(1);
nears = [-4.8 0 3 6 8];
for i = nears
    r = fzero('5*exp(-0.1*x)*sin(x)-0.1*x', i);
    plot(i, 5*exp(-0.1*i)*sin(i)-0.1*i, 'g*')
    plot(r, 5*exp(-0.1*r)*sin(r)-0.1*r, 'r*');
end

%% 4
clear
syms x;
f = x^2 + 1 == 0;
disp(fzero('x^2+1',0));
disp(solve(f));
%% 5
syms x;
f = cos(x) - exp(0.001-x^2);
r = -3:0.01:3;
y = cos(r) - exp(0.001-r.^2);
plot(r,y)
grid on
disp(solve(f));
disp(fzero('cos(x)-exp(0.001-x^2)',1));
%% Задача 1 b деление отрезков пополам
clear
syms x
a = 1; % f(a) > 0
b = 2; % f(b) < 0
f = -4*x^3+3*x+7;
ezplot(f, -3, 3);
grid on
hold on
h = (a + b) / 2;
while(abs(subs(f, x, h)) > 1e-5)
   h = (a + b) / 2;
   if subs(f, x, h) > 0
      a = h; 
   else
      b = h;
   end
end
plot(h, subs(f, x, h), 'rO');
%% Задача 1 а
clear
syms x
a = 1; % f(a) > 0
b = 2; % f(b) < 0
f = -4*x^3+3*x+7;
ezplot(f, -3, 3);
grid on
hold on

df = diff(f); 
e = 1e-5; % 
xk = (a + b) / 2; 
yk = subs(f, x, xk);
k = 0; % счетчик итераций
while abs(yk) > e 
    xnk = xk - subs(f, x, xk) / subs(df, x, xk);
    xk = xnk;
    yk = subs(f, x, xnk);
    k = k + 1;
end
plot(xk, subs(f, x, xk), 'rO');
text(xk + 0.2, subs(f, x, xk) + 5, string(k) + ' iterations');
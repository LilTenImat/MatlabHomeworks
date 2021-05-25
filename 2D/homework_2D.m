%% 1
clear
x = linspace(-15,15,100);
y = x+1./(x.^2);
plot(x, y)
%% 2
clear
x = linspace(-15,15,100);
y = (2*x)./(1+x.^2);
plot(x, y)
%% 3
clear
x = linspace(-15,15,100);
y = (x-2).*sqrt((1+x)./(1-x));
plot(x, y)
%% 4
clear
x = linspace(-15,15,100);
y = log(x.^2 - 4);
plot(x, y)
%% 5
clear
x = linspace(-1,1,100);
y = sqrt(abs(sin(pi*sqrt(x))));
plot(x, y)
%% 6
clear
x = linspace(-2,2,100);
y = (x+abs(x)).*sqrt(x.*(sin(pi.*x).^2));
plot(x ,y)
%% 7
clear
x = linspace(-15,15,100);
y = x.*sin(pi.*x);
plot(x, y)
%% 8
clear
a = 100;
b = 2;
n = 4;
m = 1;
k = 14;
phi = linspace(-pi/2,3*pi/2, 1000);
r = a./(a+(phi-pi/2).^n).*(b - sin(k.*phi) - cos(m.*phi));
polarplot(r, phi)
%% 9
clear
a = 100;
b = 2;
n = 4;
m = 2;
k = 14;
phi = linspace(0,2*m*pi, 1000);
x = (1+n/m).*cos(phi.*(n/m))-a*n/m.*cos(1+n/m).*phi;
y = (1+n/m).*sin(phi.*(n/m))-a*n/m.*sin(1+n/m).*phi;
plot(x, y)
%% 10
clear
a = 100;
b = 2;
n = 4;
m = 2;
k = 14;
phi0 = pi;
phi = linspace(-pi/2,3*pi/2, 1000);
x = a.*sin(n.*phi + phi0);
y = b.*sin(m.*phi);
plot(x, y)
%% 11
clear 
t = linspace(-5, 5, 1000);
a = 1/2; b = 1/3; m = 7; n = 17;
x = cos(t) + a*cos(m*t) + b*sin(n*t);
y = sin(t) + a*sin(m*t) + b*cos(n*t);
plot(x, y)
%% 12
t = linspace(-5, 5, 1000);
s = 10;
a = 1/2; b = 1/3; m = 7; n = 17;
x = cos(t) + a*cos(m*t) + b*sin(n*t);
y = sin(t) + a*sin(m*t) + b*cos(n*t);
for i = 1:s
    plot(x./i,y./i);
    hold on
end
%% 13
clear 
syms x
f = 1/x - 1/(x-1) + 1/(x-2);
ezplot(f)
%% 13.2
clear
syms x
f = 2*x/(1+x^2);
ezplot(f);
%% 13.3
clear
syms x
f = sqrt(cos(pi*x^2));
ezplot(f);
%%  14 лемниската Бернулли
t = -100:0.1:100;
a = 3;
x = a*(t+t.^3)./(t.^4 + 1);
y = a*(t-t.^3)./(t.^4 + 1); 
plot(x,y);
%% Розы Гранди 
clear
phi = -2*pi:0.02:2*pi;
a=1;
k = 5;
rho = a*sin(k*phi);
polar(phi, rho);
%% нефроида
clear
phi = -2*pi:0.02:2*pi;
r = 1;
x = 3*r*cos(phi) - r* cos(3*phi);
y = 3*r*sin(phi) - r* sin(3*phi);
plot(x,y);

%% касатальная к пространственной кривой в точке t = 10 
clear
t = 0:0.2:20;
x = cos(t);
y = sin(t);
z = t;
plot3(x, y, z);
hold on
xd = -sin(10);
yd = cos(10);
zd = 1;
d1 = [cos(10) - xd cos(10) + xd];
d2 = [sin(10) - yd sin(10) + yd];
d3 = [9 11];
line(d1, d2, d3, 'Color', 'red');
plot3(cos(10), sin(10), 10,'rO');
%% нормаль к поверхности (в точках от параметров r=pi,b=pi)
clear
r=linspace(-2*pi, 2*pi, 100);
betta = linspace(-2*pi, 2*pi, 100);
[R, B] = meshgrid(r, betta);
p = 1;
X = R.*cos(B);
Y = R.*sin(B);
Z = R.^2 / (2*p);
mesh(X, Y, Z);
hold on
t = -1:0.02:1;
xd = (t*(pi*pi))+pi;
yd = t*0;
zd = pi*pi/2 + t*pi;
plot3(xd, yd, zd);
%% 1
clear
a=1;
b=2;
c=2;
d=1;
x = linspace(-1,1,100);
y = linspace(-1,1,100);
[X,Y] = meshgrid(x, y);
Z = (a*X + b*Y + d)/c;
mesh(X, Y, Z);
%% 2a
clear
a = 1;
y= -10:0.5:10;
x= -10:0.5:10;
[X, Y] = meshgrid(x, y);
Z = a*sin(sqrt(X.^2+Y.^2))./sqrt(X.^2+Y.^2);
plot3(X,Y,Z);
% mesh(X, Y, Z);
%% 2b
clear
y= -10:0.5:10;
x= -10:0.5:10;
[X, Y] = meshgrid(x, y);
Z = -X .* sin(X) - X.* cos(Y); 
% plot3(X,Y,Z);
mesh(X, Y, Z);
%% 3a
clear
a = 1;
y= -10:0.5:10;
x= -10:0.5:10;
[X, Y] = meshgrid(x, y);
Z = a.* X * exp(-X.^2-Y.^2);
% surf(X, Y, Z);
% surfc(X, Y, Z);
mesh(X, Y, Z);
%% 3b
clear
v = linspace(-2*pi, 2*pi, 100);
u = linspace(-2*pi, 2*pi, 100);
[V, U] = meshgrid(v, u);
a = 1;
c = 1;
X = a.*cosh(U).*cos(V);
Y = a.*cosh(U).*sin(V);
Z = c*sinh(U);
% surf(X, Y, Z);
% surfc(X, Y, Z);
mesh(X, Y, Z);
%% 3c
clear
r=linspace(-2*pi, 2*pi, 100);
betta = linspace(-2*pi, 2*pi, 100);
[R, B] = meshgrid(r, betta);
p = 1;
X = R.*cos(B);
Y = R.*sin(B);
Z = R.^2 / (2*p);
% surf(X, Y, Z);
% surfc(X, Y, Z);
mesh(X, Y, Z);
%% 3d
clear
v = linspace(-2*pi, 2*pi, 100);
u = linspace(-2*pi, 2*pi, 100);
[V, U] = meshgrid(v, u);
a = 1;
c = 1;
X = a.*sinh(U).*cos(V);
Y = a.*sinh(U).*sin(V);
Z = c*cosh(U);
% surf(X, Y, Z);
% surfc(X, Y, Z);
mesh(X, Y, Z);
hold on
mesh(X, Y, -Z);
%% 3e
clear
a=1;
b=1;
u = (-pi:0.05:pi)';
v = -2:0.05*pi:2;
X = a*u*cosh(v);
Y = b*u*sinh(v);
Z = u.^2*ones(size(v));
mesh(X,Y,Z);
% surf(X, Y, Z);
% surfc(X, Y, Z);
mesh(X, Y, Z);
%% 3f
clear
a=1;
u = linspace(-2, 2, 100);
v = linspace(-2, 2, 100);
[U, V] = meshgrid(u, v);
X = a*U.^2;
Y = 2*a*U;
Z = V;
mesh(X,Y,Z);
%%  3n
clear
a=1;
u = linspace(0, 2*pi, 100);
v = linspace(-0.5, 0.5, 100);
[U, V] = meshgrid(u, v);
X = (1.+V.*cos(0.5*U)).*cos(U);
Y = (1.+V.*cos(0.5*U)).*sin(U);
Z = V.*sin(0.5*U);
plot3(X, Y, Z);
% mesh(X,Y,Z);
%% 4
a = 2*pi;
[X, Y] = meshgrid(-1:0.01:1,-1:0.01:1);
R =sqrt(X.^2+Y.^2);
f = (2*besselj(1,a*R(:))./R(:)).^2;
mesh(X,Y,reshape(f,size(X)));
%% 5
t=0:0.1:9*pi;
x=sin(0.3*t);
y=cos(0.3*t);
plot3(x,y,t)
hold on
x1=sin(0.3*t);
y1=cos(0.3*t);
plot3(-x1,-y1,t)
for i = 1:28
    X = [sin(0.3*i), -sin(0.3*i)];
    Y = [cos(0.3*i), -cos(0.3*i)];
    Z = [i+0.1, i+0.1];
    line(X,Y,Z);
end
%% 6
clear
v = linspace(-pi, pi, 100);
u = linspace(-pi, pi, 100);
[V, U] = meshgrid(v, u);
a = 1;
b = 1;
c = 1;
X = a*cosh(V).*cos(U);
Y = b*cosh(V).*sin(U);
Z = c*sinh(V);
mesh(X, Y, Z);
%% 1 
clear
P = [1 -3.55 5.1 -3.1];
x = linspace(-10,10,1000);
F = polyval(P,x);
plot(x,F)
grid on;
hold on;
a = roots(P);

plot(a(1),0., 'r.','LineWidth',400)
%% 2 
clear
P = [1, 0.1, 0.2, -0.2, -2, 1];
r = roots(P);
x = linspace(-max(abs(r)), max(abs(r)), 100);
plot(x, polyval(P, x))
grid on
hold on

x_0 = 0.5*max(abs(r));

Pdx = polyder(P);
k = polyval(Pdx, x_0);
b = polyval(P, x_0) - k * x_0;
T = [k, b];
plot(x, polyval(T, x), 'r');
hold on

x_1 = -0.5*max(abs(r));
y_1 = polyval(P,x_1);
x_2 = x_1 - 1;
y_2 = y_1 - 1/polyval(Pdx, x_1) * (x_2-x_1);
line([x_1, x_2], [y_1, y_2], 'Color','green')
hold on

%% 3
clear
P1 = [2, -3, 4, -5, 6];
P2 = [1, -3, 1];

[q, r] = deconv(P1, P2);
disp(q);
%% 4.1
clear
P = [1, -2, 6, -10, 16];
x0 = 4;
Px = 1;
for i = 1:length(P)
    Px = Px * x0 + P(i); 
end
disp(Px);
%% 4.2
clear
P = [1, (1+2i), -(1+3i), 0, 7];
x0 = -(2-i);
Px = 1;
for i = 1:length(P)
    Px = Px * x0 + P(i); 
end
disp(Px);
%% 5
clear
n = 4;
P = zeros(2*n + 1, 1);
P(1) = 1;
P(n) = -n;
P(n+2) = n;
P(2*n + 1) = -1;
disp(P.');
r = roots(P.');
x = linspace(min(r), max(r), 100);
plot(x, polyval(P.',x));
%% 6a
clear
F1 = [1 0 0];
F2 = [1 4 1 -6];
[r, p, K] = residue(F1, F2);
for i = 1:size(r)
    fprintf('%1.3f/(x-(%1.2f))\n', r(i), p(i));
end
%% 6b
clear
F1 = [1 3];
F2 = [1 -1 1 6];
[r, p, K] = residue(F1, F2);
for i = 1:size(r)
    fprintf('%1.3f/(x-(%1.2f))\n', r(i), p(i));
end
%% 6c
clear
F1 = [1 0 0];
F2 = [1 0 0 0 -1];
[r, p, K] = residue(F1, F2);
for i = 1:size(r)
    fprintf('%1.3f/(x-(%1.2f))\n', r(i), p(i));
end
%% 8a
clear
P = [1 -6 15 -14];
r = roots(P);
x = linspace(min(r)-1, max(r)+1, 1000);
plot(x, polyval(P,x));
%% 8b
clear
P = [1 -2 -8 13 -24];
r = roots(P);
x = linspace(min(r)-1, max(r)+1, 1000);
plot(x, polyval(P,x));
%% 8...
clear
P = [1 -6 11 -1 - 18 20 -8];
r = roots(P);
x = linspace(min(r)-1, max(r)+1, 1000);
plot(x, polyval(P,x));
%% 9
clear
n = 4;
A = rand(n, n);
P = charpoly(A);
r = roots(P);
x = linspace(min(r)-1, max(r)+1, 1000);
plot(x, polyval(P,x));
%% 10a
P = [1 2 -1 -4 -2];
Q = [1 1 -1 -2 -2];
[G, S, T] = gcd(P, Q);
poly2sym(S), ...
poly2sym(P), ...
poly2sym(T), ...
poly2sym(Q), ...
poly2sym(G));
%% 10b
P = [1 3 1 1 3 1];
Q = [0 1 2 0 1 2];
[G, S, T] = gcd(P, Q);
fprintf('(%s)(%s) + (%s)(%s) = %s\n', ...
poly2sym(S), ...
poly2sym(P), ...
poly2sym(T), ...
poly2sym(Q), ...
poly2sym(G));
%% 11
clear
a = ones(100);
P = poly(a');
r = roots(P);
x = linspace(-2, 2, 10000);
plot(x, polyval(P,x));
hold on
% for i = r
%     plot(i, polyval(i), 'r');
% end
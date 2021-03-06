%% 1
x = -2:0.1:2;
y = exp(-0.1*x.^2).*cos(x.^2);
plot(x, y);
hold on
lm = fminbnd('exp(-0.1*x^2)*cos(x^2)', 0, 2);
plot(0, exp(-0.1*0^2)*cos(0^2), 'go');
plot(2, exp(-0.1*2^2)*cos(2^2), 'go');
plot(lm, exp(-0.1*lm^2)*cos(lm^2), 'r*');
%% b 
x = 0:0.1:2.5;
y = (1./(cos(x) + 2*sin(x))).^2;
plot(x, y);
hold on
lm = fminbnd('(1/(cos(x)+2*sin(x)))^2', 0, 2);
plot(0, (1./(cos(0) + 2*sin(0))).^2, 'go');
plot(2, (1./(cos(2) + 2*sin(2))).^2, 'go');
plot(lm, (1./(cos(lm) + 2*sin(lm))).^2, 'r*');
%% 2
x = 0:0.005:1;
a = [2 4 6 8 12 18];
for i = a
   plot(x, x.^i.*log(x));
   hold on
   lm = fminbnd('x^'+string(i)+'*log(x)', 0, 1);
   text(lm,min(x.^i.*log(x)) + 0.007,num2str(i));
   plot(lm, lm.^i.*log(lm), 'r*');
end
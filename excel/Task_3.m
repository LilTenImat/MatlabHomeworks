%% 1
clear
%%
filename = 'excel/Data_18032020.xlsx';

T = readtable(filename);

% ------------
c = datetime(fix(clock));
dates = T.x____________;
ages = [];

cc = datevec(c);

for i = dates
    dd = datevec(i);
    et = etime(cc, dd)/60/60/24;
    ages = [ages, fix(et/365)];
end

T.ages = ages;
% ------------

id1 = T.id1;
id2 = T.id2;

ids = (strlength(string(id1)) + strlength(string(id1)) == 22);
T.some3task = ids;
% ------------
NinA = T.x_______________________;
NallA = T.x__________________;

k = NinA ./ NallA;
T.K = k;
% ------------
v = ones(length(k), 1);
v((k<=0.5)) = 0.8;
v((k<=0.4)) = 0.6;
v((k<=0.3)) = 0.4;
v((k<=0.2)) = 0.2;
v((k<=0.1)) = 0.1;
T.V = v;
writetable(T, 'excel/outfile3.xlsx');
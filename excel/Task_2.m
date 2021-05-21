%% 1
clear
filename = input('Enter some filename \n>> ', 's');
sheetname = input('Enter some sheet name \n>> ', 's');
roles = [];

s = input('Enter some role name(type 0 to stop) \n>> ', 's');
while s ~= "0"
    roles = [roles, string(s)];
    s = input('\n>> ', 's');
end

T = readtable("excel/"+filename, "Sheet", sheetname);

people = [];

for i = roles
    t = [string(T.x___(T.x____== string(i)))];
    people = [people, sprintf("%s; ", t)];
end

Roles = roles';

People = people';

res = table(Roles, People);
% disp(res);

writetable(res, 'excel/outfile2.xlsx');
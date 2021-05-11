%% 1
clear
filename = 'fileExcel.xlsx';
% [ndata, text, alldata] = xlsread(filename);
tt = readtable(filename);
s = size(alldata, 2);
k = size(alldata, 1);
A = alldata(1,:);
for i = 2:s
    t = alldata(i,:);
    if strcmpi(t(2), 'Руководитель')
        A = [A; t];
    end
end
for i = 2:s
    t = alldata(i,:);
    if strcmpi(t(2), 'Исполнитель')
        A = [A; t];
    end
end
disp(A)

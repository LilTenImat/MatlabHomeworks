%% 1
clear
filename = 'excel/fileExcel.xlsx';
T = readtable(filename);

leads = [string(T.x___(T.x____=="Руководитель"))];
workers = [string(T.x___(T.x____=="Исполнитель"))];

disp(leads);
disp(workers);
Roles = ["Leads"; "Workers"];
People = [sprintf("%s; ",leads); sprintf("%s; ",workers)];

res = table(Roles, People);

writetable(res, 'excel/outfile.xlsx');
function Out = two_rows(x)
    if ((size(x, 1) == 2) && (ismatrix(x)))
        Out = x;
    else
        fprintf('%s\n', 'Массив должен быть двумерным и иметь 2 строки.');   
        Out = x*0;
    end

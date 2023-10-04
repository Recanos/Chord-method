clc,clear
func = check_func('Функция: ');
f = @(x) eval(func);
[a, b] = check_lr();

E = check('Введите точность  E: ');
[l, r, t] = draw_gr(a,b,E,f,func);

if t == true
    pr_2 = proizv(f,l,E);%функция вычисляет производную
    
    answ = hord_method(f,l,r,pr_2,E);%функция, реализующая метод хорд
    close;
    fprintf('Корень: %.6f\n',answ)
    fprintf(strcat(" 0 = ",func,"\n"))
    m = fzero(f,[l,r]);
    fprintf('Вычисление через встроенную функцию: %.6f\n',m);
end

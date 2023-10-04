clc,clear

func = "6*x^3+6*x^2+8*x-0.3";
f = @(x) eval(func);

E = 0.001;
l = -5;
r = 5;

[l, r, t] = draw_gr(l,r,E,f,func);

if t == true
    pr_2 = proizv(f,l,E);%функция вычисляет производную
    
    answ = hord_method(f,l,r,pr_2,E);%функция, реализующая метод хорд
    plot(answ,f(answ), "o", 'MarkerEdgeColor','black',   'MarkerFaceColor', "red")
    text(answ,f(answ), "root")
    fprintf('Корень: %.6f\n',answ)
    fprintf(strcat(" Функция: 0 = ",func,"\n"))
    m = fzero(f,[l,r]);
    fprintf('Вычисление через встроенную функцию: %.6f\n',m);
end

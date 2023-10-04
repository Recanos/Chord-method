function x = hord_method(f,l,r, pr_2, E)
if f(l) * f(r) > 0
    x = "На данном отрезке нет корня!";
else
    if f(l) == 0
        x = l;
    elseif f(r) == 0
        x = r;
    elseif f(l) * pr_2 > 0
        x = l - (f(l)*(l-r)) / (f(l) - f(r));
        x1 = r;
        while abs(x - x1) > E
            x1 = x;
            x = l - (f(l)*(x1-l)) / (f(x1) - f(l));         
        end
    elseif f(l) * pr_2 < 0
        x = r - (f(r)*(r-l)) / (f(r) - f(l));
        x1 = l;
        while abs(x - x1) > E
            x1 = x;
            x = r - (f(r)*(x1-r)) / (f(x1) - f(r)); 
        end
    end
    if isinf(x) || isnan(x)
        x = "Не соотвестсвуют условия ввода - невозможно найти корень";
    else
        return       
    end
end

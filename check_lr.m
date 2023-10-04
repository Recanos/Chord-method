function [a, b] = check_lr()

while true
    l = check("Левая граница: ");
    r = check("правая граница: ");
    if r <= l
        disp("Введите корректные границы!")
        continue
    else
        a = l;
        b = r;
        break
    end
end
end

function y = check_func(str)

while true
    f = input(str,"s");
    try
        g = str2func(['@(x)' f]);
        g(0);
        y = f;
        break;
    catch
        disp("Введите правильно функцию!");
    end
end
end

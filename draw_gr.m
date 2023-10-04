function [l, r, t] = draw_gr(a,b,E,f,func)

    x = [];
    y = [];
    n = 1;
    for i = a :E: b
        x(n) = i;
        y(n) = f(x(n));
        n = n + 1;
    end
    plot(x,y,'LineWidth' ,2, color="b");
    hold on
    ax = gca;
    ax.XAxisLocation = 'origin';
    ax.YAxisLocation = 'origin';
    title(func);
    xlabel('x')
    ylabel('y')
    grid on
    drawnow;
    
    if func == "6*x^3+6*x^2+8*x-0.3"
        l = -2;
        r = 1;
    else
        disp("Границы для нахождения корня: ");
        [l, r] = check_lr();
    end
    
    if amount(l,r,f,E)
        t = true;
    else
        t = false;
        disp("Неверно введены границы, либо корней нет, либо их > 1!");
    end

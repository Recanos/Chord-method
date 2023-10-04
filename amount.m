function y = amount(l, r, f, E)
temp = f(l);
count = 0;

for i = l:E:r
    if temp * f(i) < 0
        count = count + 1;
        temp = f(i);
    end
    if count > 1
        break;
    end
end
if count == 1
    y = true;
else
    y = false;
end
end

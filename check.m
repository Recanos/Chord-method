function y = check(str)
while true
    num = input(str,"s"); 
    x = str2double(num); 
    if isnan(x) 
        disp('Ошибка! Введенное вами число содержит символы или пробелы.');
        continue;
    elseif length(strfind(num, ','))>=1
        disp('Ошибка! Введенное вами число содержит запятые.');
        disp('Для разделения целой и дробной части используйте точку.');
        continue;
    else 
        y = x;
        break;
    end
end
end

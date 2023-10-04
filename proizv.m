function y = proizv(f,x, E)
y = (f(x+E)-2*f(x)+f(x-E))/(E.^2);
end

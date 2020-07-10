function p = lagrange(x,y,v)
    n  = length(x);
    p = 0;
    for i = 1:n
        Li = 1;
        for j = 1:n
            if j ~= i then
                Li = Li*((v-x(j))/(x(i)-x(j)));
            end
        end
        p = p + (y(i)*Li);
    end
endfunction

cont = 1;
for i = x(1):0.1:x(length(x))
    s(cont) = lagrange(x,y,i);
    cont = cont + 1;
end

plot(x,y,'.r')
plot(x(1):0.1:x(length(x)),s','b')


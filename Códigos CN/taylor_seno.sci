function y = taylorSeno(x,x0,n)
    y = sin(x0);
    for i = 2:n
        if modulo(i,4) == 2 then
                y = y + cos(x0)*(x-x0)^(i-1)/factorial(i-1);
        elseif modulo(i,4) == 3 then
                y = y - sin(x0)*(x-x0)^(i-1)/factorial(i-1);
        elseif modulo(i,4) == 0 then
                y = y - cos(x0)*(x-x0)^(i-1)/factorial(i-1);
        else
                y = y + sin(x0)*(x-x0)^(i-1)/factorial(i-1);
        end
    end
endfunction

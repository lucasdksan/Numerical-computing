function [x,y] = euler(a,b,h,y0)
    x = a:h:b;
    n = length(x);
    y(1) = y0;
    for i = 2 : n
        y(i) = y(i-1) + h*df(x(i-1),y(i-1))
    end
endfunction

function z = df(x,y)
    z = 12-y;
endfunction

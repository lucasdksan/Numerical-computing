function [x,y] = RK4(a,b,h,y0)
    x = a:h:b;
    n = length(x);
    y(1) = y0;
    for i = 2:n
        k1 = df(x(i-1),y(i-1));
        k2 = df(x(i-1) + h/2, y(i-1) + h/2*k1);
        k3 = df(x(i-1) + h/2, y(i-1) + h/2*k2);
        k4 = df(x(i),y(i-1) + h*k3);
        y(i) = y(i-1) + h/6*(k1 + 2*k2 + 2*k3 + k4);
    end
endfunction

function z = df(x,y)
    z = 12-y;
endfunction

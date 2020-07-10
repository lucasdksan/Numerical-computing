function y = f(t)
    y = 3*sin(t-1) + 5*t;
endfunction

function y = df(t)
    y = 3*cos(t-1) + 5;
endfunction

function [x,iter]= newton(x0,p,ni)
    erro = 1;
    iter = 0;
    x = x0;
    while erro > p & iter < ni 
        xa = x;
        x = x - (f(x)/df(x));
        erro = abs((x-xa)/x);
        iter = iter + 1;
    end
endfunction

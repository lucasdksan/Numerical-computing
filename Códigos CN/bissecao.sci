function [x,iter] = bissecao(a,b,e,n)
    iter = 0;
    x = a;
    erro = 1;
    while erro > e & iter < n
        xant = x;
        x = (a+b)/2;
            if h(a)*h(x) < 0 then
                b = x;
            else 
                a = x;
            end
        iter = iter + 1;
        erro = abs((x-xant)/x);
     end
endfunction
function y = h(v)
    y= exp(v) - (v+5);
endfunction

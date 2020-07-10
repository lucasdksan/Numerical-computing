function [x,iter] = secante(x0,x1,er,nt)
    erro = 1;
    iter = 0;
    x = x0;
    while erro > er & iter < nt
        x = x1-(h(x1)*(x0-x1)/(h(x0)-h(x1)));
        erro = abs((x-x1)/x);
        iter = iter + 1;
        x0 = x1;
        x1 = x; 
    end
endfunction

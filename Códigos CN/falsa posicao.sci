function [x,iter] = falsapo(a,b,e,n)
    iter = 0;
    x = a;
    erro = 1;
    while erro > e & iter < n
        xant = x;
        x = a-(b-a)*h(a)/(h(b)-h(a));
            if h(a)*h(x) < 0
                b = x;
            else 
                a = x;
            end
        iter = iter + 1;
        erro = abs((x-xant)/x);
     end
endfunction

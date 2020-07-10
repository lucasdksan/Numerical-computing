function [x,iter]  = gseidel(A,b,x0,e,it)
    [l,c] = size(A);
    erro = 1;
    x = x0, iter = 0;
    while erro > e & iter < it
        xa = x;
        iter = iter + 1;
        for i = 1:l
            soma= 0;
            for j = 1:l
                if j ~= i then
                    soma = soma + A(i,j)*x(j);
                end
            end
            x(i) = (b(i)-soma)/A(i,i);
        end
        erro = max(abs(x-xa))/max(abs(x));
    end
endfunction

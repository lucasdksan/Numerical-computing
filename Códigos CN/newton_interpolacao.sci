function tdd = ctdd(x,y)
    n = length(x);
    tdd(:,1) = y';
    for i = 1:n-1
        for j = 1:n-i
            tdd(j,i+1) = (tdd(j+1,i)-tdd(j,i))/(x(j+i)-x(j));
        end
    end
endfunction

function s = newtonInter(x,y,p)
    n = length(x);
    tdd = ctdd(x,y);
    s = y(1);
    for i = 2:n
        m = 1;
        for j = 1:i-1
            m = m*(p-x(j));
        end
        s = s + tdd(1,i)*m;
    end
endfunction

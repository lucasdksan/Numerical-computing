function y = pontomedio(x0, y0, h)
    x(1) = x0
    for j = 2:145
        x(j) = x(j-1) + h
    end
    y(1) = y0
    for i = 1:length(x)
        k1 = f(x(i), y(i))
        k2 = f(x(i) + h*1/2, y(i) + k1*h*1/2)
        y(i+1) = y(i) + k2*h
    end
endfunction

function y = f(x, y)
    y = x*cos(x)
endfunction

function a=df1(x,y,z)
    a=z;
endfunction
function b=df2(x,y,z)
    b=sin(y)
endfunction
function [x,y,z]=EulerM(xo, yo, zo, h)
    x(1) = xo
    for j = 2:136
        x(j) = x(j-1) + h
    end
    n=length(x)
    y(1)=yo
    z(1)=zo
    for i=2:n
        y(i)=y(i-1)+df1(x(i-1),y(i-1),z(i-1))*h
        z(i)=z(i-1)+df2(x(i-1),y(i-1),z(i-1))*h
    end
endfunction

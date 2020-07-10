function [x,y,z] = RK4(a,b,h,y0,z0)
    x = a:h:b;
    n = length(x);
    y(1) = y0;
    z(1) = z0;
    for i = 2:n
        k1y = dfy(x(i-1),y(i-1),z(i-1));
        k1z = dfz(x(i-1),y(i-1),z(i-1));
        k2y = dfy(x(i-1) + h/2, y(i-1) + h/2*k1y, z(i-1) + h/2*k1z );
        k2z = dfz(x(i-1) + h/2, y(i-1) + h/2*k1y, z(i-1) + h/2*k1z );
        k3y = dfy(x(i-1) + h/2, y(i-1) + h/2*k2y, z(i-1) + h/2*k2z);
        k3z = dfz(x(i-1) + h/2, y(i-1) + h/2*k2y, z(i-1) + h/2*k2z);
        k4y = dfy(x(i),y(i-1) + h*k3y, z(i-1) + h*k3z);
        k4z = dfz(x(i),y(i-1) + h*k3y, z(i-1) + h*k3z);
        y(i) = y(i-1) + h/6*(k1y + 2*k2y + 2*k3y + k4y);
        z(i) = z(i-1) + h/6*(k1z + 2*k2z + 2*k3z + k4z);
    end
endfunction

function dy = dfy(x,y,z)
    
endfunction

function dz = dfz(x,y,z)
    
endfunction

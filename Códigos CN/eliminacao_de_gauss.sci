function [x, At] = gauss(A,b)
    [l, c] = size(A);
    At = [A b]
    for i = 1:l-1 //linha e coluna do pivo
        pivo = At(i,i);
        for j = i + 1: l //linha do elemento que vamos zerar
            m = At(j,i)/pivo;
            At(j,:) = At(j,:) - m*At(i,:);
        end
    end
    x = resoRetro(At(:,1:c), At(:,c+1));
endfunction
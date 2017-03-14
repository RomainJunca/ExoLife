//Contraste Image

function[y]=contraste(x)
    tab=histogramme(x)
    t=find(tab==0)
    for i=1 (lenght(T)-1)
        if t(i+1)-t(i)<>1 then
            Lmin=t(i)
            break
            end
    end
    for j=length (t):-1:2
        if t(j)-t(j-1)<>1 then
            Lmax=t(j)
            break
            end
    end
    y=min(max((256/(Lmax-Lmin))*x-(256/(Lmax-Lmin))*Lmin,0),255)
    imshow(y)
    endfunction

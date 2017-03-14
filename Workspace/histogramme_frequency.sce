//Histogramme_Frequency

function [tab]=histogramme(x)
    nb=prod(size(x))
    data=matrix(x,1,nb)
    tab=zeros(1,256)
    for i=0:255
        tab(i+1)=length(find(data==i))
     
    end
    histplot(256,sort(matrix(x,1,nb)))
endfunction

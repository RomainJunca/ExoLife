
//Renvoie la première valeur en nuance de gris où l'histogramme est différent de 0

function indexHisto=debutHistogramme(histogram)
    for indexHisto = 1:256
        if(histogram(indexHisto) >0)
            return indexHisto-1;
        end,
    end
endfunction

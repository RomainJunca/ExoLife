//Renvoie la première valeur en nuance de où l'histogramme est différent de 0 en partant de la fin

function indexHisto=endHistoJG(histogram)
    for indexHisto = 1:256
        if(histogram(257-indexHisto) >0)
            break;
        end,
    end
    indexHisto =  257-indexHisto;
endfunction

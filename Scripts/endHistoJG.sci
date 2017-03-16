//Renvoie la première valeur en nuance de où l'histogramme est différent de 0 en partant de la fin
//Pour le futur, inclure des pourcentage de perte pour l'image, par exemple, des valeurs qui n'influe que très peu seront ignorées

function indexHisto=endHistoJG(histogram)
    for indexHisto = 1:256
        if(histogram(257-indexHisto) >0)
            break;
        end,
    end
    indexHisto =  256-indexHisto;
endfunction


// Histogramme cumulé, prends en paramètre l'histogramme cumule

function histoCumul=histogrammeCumuleJG(histo)
    histoCumul = zeros(1, 256); //On crée une matrice nulle qui va contenir l'image modifiée (ici une matrice ligne).
    
    for histoX = 1:256 //De l'intensité de pixel 1 à 256 (on rajoute 1 parce le tableau commence à 1 et non 0).
        for cumul = 1: histoX //On calculera le nombre de pixels inférieurs à l'intensité.
            histoCumul(histoX) = histoCumul(histoX) + histo(cumul); //Même calcul que pour l'histogramme en additionnant les pixels.
        end 
    end
    
endfunction


// Amélioration de l'algo
// histoCumul = zeros(1, 256);
// 
// histoCumul(1) = histo(1);
//
// for histoX = 2 : 256
//     histoCumul(histoX) = histoCumul(histoX-1)+histo(histoX);
// end

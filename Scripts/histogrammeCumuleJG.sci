
// Histogramme cumulé, prends en paramètre l'histogramme cumule

function histoCumul=histogrammeCumuleJG(histo)
    histoCumul = zeros(1, 256);
    
    for histoX = 1:256
        for cumul = 1: histoX
            histoCumul(histoX) = histoCumul(histoX) + histo(cumul);
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

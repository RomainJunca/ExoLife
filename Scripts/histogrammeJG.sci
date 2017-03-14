// Fonction pour faire l'histogramme

function histo=histogrammeJG(image)
    SizeX = size(image, 1);
    SizeY = size(image, 2);
    histo = zeros(1, 256);
    
    for Y = 1:SizeY,
        for X = 1:SizeX,
            histo(image(X, Y)+1) = histo(image(X, Y)+1)+1;
        end
    end
endfunction

// Fonction pour faire l'histogramme

function histo=histogrammeJG(image)
    SizeX = size(image, 1); //On récupère la longueur de l'image à modifier.
    SizeY = size(image, 2); //On récupère la largeur de l'image à modifier.
    histo = zeros(1, 256);  //On crée une matrice nulle qui va contenir l'image modifiée (ici une matrice ligne).
    
    for Y = 1:SizeY, //On parcourt la matrice.
        for X = 1:SizeX,
            histo(image(X, Y)+1) = histo(image(X, Y)+1)+1;
        end
    end
endfunction

// Filtre Médian

function image_out=filtreMedian(image)
    SizeX = size(image, 1); //On récupère la longueur de l'image à modifier.
    SizeY = size(image, 2); //On récupère la largeur de l'image à modifier.
    image_out = zeros(SizeX, SizeY); //On crée une matrice nulle qui va contenir l'image modifiée (ici une matrice ligne).
    
    //calqueMedian = zeros(3, 3);
    
    for X = 2 : SizeX-1, //On parcourt la matrice (l'image), sans prendre en compte les bords de l'image.
        for Y = 2 : SizeY-1,
            calqueMedian = [image(X-1, Y-1), image(X, Y-1), image(X+1, Y-1), image(X-1, Y), image(X, Y), image(X+1, Y), image(X-1, Y+1), image(X, Y+1), image(X+1, Y+1)]; //Le calque se basant sur un pixel.
            calqueMedTri = gsort(calqueMedian, 'g', 'i'); //On tri le tableau précédent par ordre croissant.
            filtre = calqueMedTri(5); //On récupère la valeur "médian" du tableau.
            
            image_out(X, Y) = filtre; //La valeur du pixel sera remplacé par la valeur médian.
        end
    end
    
endfunction

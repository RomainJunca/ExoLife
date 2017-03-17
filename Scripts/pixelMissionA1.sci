function coord = pixelMissionA1(img, pixelValue)
    size_X = size(img, 1);  //On récupère la longueur de l'image à modifier.
    size_Y = size(img, 2);  //On récupère la largeur de l'image à modifier.
    img_out = zeros(size_X, size_Y);    //On crée une matrice nulle qui va contenir l'image modifiée (ici une matrice ligne).
    
    coord = [0, 0];
    
    for Y = 1:size_Y,   //On parcourt la matrice.
        for X = 1:size_X,
            if img(X, Y) == pixelValue then  //
                coord(1) = X;
                coord(2) = Y;
            end,
        end
        
    end
endfunction

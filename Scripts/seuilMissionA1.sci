function img_out = seuilMissionA1(img, seuil)
    size_X = size(img, 1);  //On récupère la longueur de l'image à modifier.
    size_Y = size(img, 2);  //On récupère la largeur de l'image à modifier.
    img_out = zeros(size_X, size_Y);    //On crée une matrice nulle qui va contenir l'image modifiée (ici une matrice ligne).
    
    for Y = 1:size_Y,   //On parcourt la matrice.
        for X = 1:size_X,
            if img(X, Y) <= seuil then  //SI la valeur du pixel est inférieure à la valeur du seuil affectée.
                img_out(X,Y) = img(X,Y);  //ALORS on la laisse telle quelle (on ne modifie pas l'image).
            else img_out(X,Y) = 0;  //SINON on met le pixel en noir.
            end,
        end
        
            
    end
endfunction

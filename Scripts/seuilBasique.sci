// Fonction pour faire un seuil

function image_out=seuilBasique(image, seuil)
    SizeX = size(image, 1); //On récupère la longueur de l'image à modifier.
    SizeY = size(image, 2); //On récupère la largeur de l'image à modifier.
    image_out = zeros(SizeX, SizeY); //On crée une matrice nulle qui va contenir l'image modifiée (ici une matrice ligne).
    
    for Y = 1:SizeY,    //On parcourt la matrice.
        for X = 1:SizeX,
            if image(X, Y) <= seuil then   //SI la valeur du pixel est inférieure à la valeur du seuil affectée.
                image_out(X, Y) = 0;    //ALORS on change le pixel en pixel noir.
            else image_out(X, Y) = 255; //SINON on met le pixel en blanc.
            end,
        end
    end
endfunction

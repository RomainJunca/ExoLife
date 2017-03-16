// Convolution spatiale : Filtre Moyenneur 3*3

function image_out = filtreMoyenneur(image)
    SizeX = size(image, 1); //On récupère la longueur de l'image à modifier.
    SizeY = size(image, 2); //On récupère la largeur de l'image à modifier.
    image_out = zeros(SizeX, SizeY); //On crée une matrice nulle qui va contenir l'image modifiée.
    
    for X = 2 : SizeX-1 //On parcourt la matrice en évitant les extrémités.
        for Y = 2 : SizeY-1
            image_out(X, Y) = round((image(X-1, Y-1)+image(X, Y-1)+image(X+1, Y-1)+image(X-1, Y)+image(X, Y)+image(X+1, Y)+image(X-1, Y+1)+image(X, Y+1)+image(X+1, Y+1))/9); //On arrondit les coefficients.
        end
    end
    
endfunction

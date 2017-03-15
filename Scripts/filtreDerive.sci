// Convolution spatiale avec le filtre gradient
function image_out = filtreDerive(image)
    SizeX = size(image, 1);
    SizeY = size(image, 2);
    image_out = zeros(SizeX, SizeY);
    
    for X = 2 : SizeX-1,
        for Y = 2 : SizeY-1,
            // Utilisation de la formule sqrt(Ix²+Iy²) et avec les pixels Ix et Iy obtenus à l'aide de la matrice de dérivé.
            image_out(X, Y) = round(sqrt( round(.5*(-image(X-1, Y)+image(X+1, Y)))*round(.5*(-image(X-1, Y)+image(X+1, Y))) + round(.5*(-image(X, Y-1)+image(X, Y+1)))*round(.5*(-image(X, Y-1)+image(X, Y+1)))));
        end
    end
    
endfunction

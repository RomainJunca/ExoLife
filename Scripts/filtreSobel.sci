// Convolution spatiale avec le filtre Sobel

function image_out = filtreSobel(image)
    SizeX = size(image, 1);
    SizeY = size(image, 2);
    image_out = zeros(SizeX, SizeY);
    
    for X = 2 : SizeX-1,
        for Y = 2 : SizeY-1,
            // Utilisation de la formule sqrt(Ix²+Iy²) et avec les pixels Ix et Iy obtenus à l'aide de la matrice de Sobel.
            
            //Application du filtre de Sobel pour le pixel en X
            newPX = round((-image(X-1, Y-1)+image(X+1, Y-1)-2*image(X-1, Y)+2*image(X+1, Y)-image(X-1, Y+1)+image(X+1, Y+1))/6);
            // Application du filtre de Sobel pour le pixel en Y
            newPY = round((-image(X-1, Y-1)+image(X+1, Y-1)-2*image(X, Y-1)+2*image(X, Y+1)-image(X+1, Y-1)+image(X+1, Y+1))/6);
            
            calc = round(sqrt( newPX*newPX + newPY*newPY ));
            
            if calc > 255 then
                calc = 255;
            end,
            image_out(X, Y) = calc;
        end
    end
    
endfunction

// X = (-image(X-1, Y-1)+image(X+1, Y-1)-2*image(X-1, Y)+2*image(X+1, Y)-image(X-1, Y+1)+image(X+1, Y+1))
// Y = (-image(X-1, Y-1)+image(X+1, Y-1)-2*image(X, Y-1)+2*image(X, Y+1)-image(X+1, Y-1)+image(X+1, Y+1))

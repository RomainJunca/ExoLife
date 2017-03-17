// Inversion des couleurs binaire

function image_out=inversionCouleurs(image)
    
    SizeX = size(image, 1);
    SizeY = size(image, 2);
    image_out = zeros(SizeX, SizeY);
    
    for X=1:SizeX,
        for Y=1:SizeY,
            image_out(X, Y) = 255 - image(X, Y); //Remplace chaque pixel par 255-(la valeur du pixel)
        end
    end
    
endfunction

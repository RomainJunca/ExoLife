// Fonction pour faire un seuil

function image_out=seuilJG(image, seuil)
    SizeX = size(image, 1);
    SizeY = size(image, 2);
    image_out = zeros(SizeX, SizeY);
    
    for Y = 1:SizeY,
        for X = 1:SizeX,
            if image(X, Y) <= seuil then 
                image_out(X, Y) = 0;
            else image_out(X, Y) = 255;
            end,
        end
    end
endfunction

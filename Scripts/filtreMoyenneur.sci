// Convolution spatiale : Filtre Moyenneur 3*3

function image_out = filtreMoyenneur(image)
    SizeX = size(image, 1);
    SizeY = size(image, 2);
    image_out = zeros(SizeX, SizeY);
    
    for X = 2 : SizeX-1
        for Y = 2 : SizeY-1
            image_out(X, Y) = round((image(X-1, Y-1)+image(X, Y-1)+image(X+1, Y-1)+image(X-1, Y)+image(X, Y)+image(X+1, Y)+image(X-1, Y+1)+image(X, Y+1)+image(X+1, Y+1))/9);
        end
    end
    
endfunction

// Filtrage Spatial: Filtre Gaussien

function image_out=filtreGaussien(image)
    
    SizeX = size(image, 1);
    SizeY = size(image, 2);
    image_out = zeros(SizeX, SizeY);
    
    //calqueMedian = zeros(3, 3);
    
    for X = 3 : SizeX-2,
        for Y = 3 : SizeY-2,
            image_out(X, Y) = round((image(X-2, Y-2)+2*image(X-1, Y-2)+3*image(X, Y-2)+2*image(X+1, Y-2)+image(X+2, Y-2)+2*image(X-2, Y-1)+6*image(X-1, Y-1)+8*image(X, Y-1)+6*image(X+1, Y-1)+2*image(X+2, Y-1)+3*image(X-2, Y)+8*image(X-1, Y)+10*image(X, Y)+8*image(X+1, Y)+3*image(X+2, Y)+2*image(X-2, Y+1)+6*image(X-1, Y+1)+8*image(X, Y+1)+6*image(X+1, Y+1)+2*image(X+2, Y+1)+image(X-2, Y+2)+2*image(X-1, Y+2)+3*image(X, Y+2)+2*image(X+1, Y+2)+image(X+2, Y+2))/98);
            
        end
    end
endfunction

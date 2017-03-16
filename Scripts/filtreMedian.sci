// Filtre Médian

function image_out=filtreMedian(image)
    SizeX = size(image, 1);
    SizeY = size(image, 2);
    image_out = zeros(SizeX, SizeY);
    
    //calqueMedian = zeros(3, 3);
    
    for X = 2 : SizeX-1,
        for Y = 2 : SizeY-1,
            calqueMedian = [image(X-1, Y-1), image(X, Y-1), image(X+1, Y-1), image(X-1, Y), image(X, Y), image(X+1, Y), image(X-1, Y+1), image(X, Y+1), image(X+1, Y+1)];
            calqueMedTri = gsort(calqueMedian, 'g', 'i');
            filtre = calqueMedTri(5);
            
            image_out(X, Y) = filtre;
        end
    end
    
endfunction

function img_out = seuilRJ(img, seuil)
    size_X = size(img, 1);
    size_Y = size(img, 2);
    img_out = zeros(size_X, size_Y);
    
    for Y = 1:size_Y,
        for X = 1:size_X,
            if img(X, Y) <= seuil then
                img_out(X,Y) = 0;
            else img_out(X,Y) = 255;
            end,
        end
        
            
    end
endfunction

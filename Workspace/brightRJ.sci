
function img_out = brightRJ(img)
    size_X = size(img, 1);
    size_Y = size(img, 2);
    img_out = zeros(size_X, size_Y);
    
    for Y = 1:size_Y,
        for X = 1:size_X,
            if img(X,Y) <= 12 then 
                img_out(X,Y) = img(X,Y)*15;
            end,
        end
    end
endfunction

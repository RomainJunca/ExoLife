
function img_out = medianRJ(img)
    size_X = size(img, 1);
    size_Y = size(img, 2);
    img_out = zeros(size_X, size_Y);
    
    for Y = 2:size_Y-1,
        for X = 2:size_X-1,
            tab = [img(X-1,Y-1),img(X,Y-1),img(X+1,Y-1);img(X-1,Y),img(X+1,Y),img(X-1,Y+1);img(X,Y+1),img(X+1,Y-1),img(X,Y)];
            sortab = gsort(tab,'g', 'i');
            img_out(X,Y) = sortab(5);
        end
    end
    
    
endfunction

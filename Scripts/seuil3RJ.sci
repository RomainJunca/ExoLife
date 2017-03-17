function img_out = seuil3RJ(img, tab)
    size_X = size(img, 1);
    size_Y = size(img, 2);
    img_out = zeros(size_X, size_Y);
    
    
    sz_Tab = size(tab, 2);
    seuil_nb = round(255/sz_Tab)

while sz_Tab < 256
    for Y = 1:size_Y,
        for X = 1:size_X,
            for i = 2:sz_Tab
                //if i == 1 then
                    //img_out(X, Y) = 0;
                //end,
                if img(X, Y) <= tab(1,i) & i > 1 then
                    img_out(X, Y) = round((tab(1,i)+seuil_nb)/2);
                else img_out(X, Y) = 255;
                end,
              end
             end
            end
           end
    
    
endfunction

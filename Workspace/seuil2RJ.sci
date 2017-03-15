function img_out = seuil2RJ(img, seuil1, seuil2, seuil3)
    size_X = size(img, 1);
    size_Y = size(img, 2);
    img_out = zeros(size_X, size_Y);
    
    //tab = [seuil1 seuil2 seuil3 seuil4]
    
    for Y = 1:size_Y,
        for X = 1:size_X,
            //if img(X, Y) <= seuil1 then
                //img_out(X,Y) = 0;
            //elseif img(X,Y) <= seuil2 & img(X,Y) > seuil1 then
                //img_out(X,Y) = 64;
            //elseif img(X,Y) <= seuil3 & img(X,Y) > seuil2 then
              //  img_out(X,Y) = 128;
          //  elseif img(X,Y) <= seuil4 & img(X,Y) > seuil3 then
            //    img_out(X,Y) = 192;
            //else img_out(X,Y) = 255;
            //end,
            
            if img(X, Y) <= seuil1 then
                img_out(X, Y) = 0;
            elseif (img(X,Y) <= seuil2) & (img(X,Y) > seuil1) then
                img_out(X, Y) = 100;
            elseif (img(X,Y) <= seuil3) & (img(X,Y) > seuil2) then
                img_out(X, Y) = 175;
            else img_out(X, Y) = 255;
            end,
        end
        
            
    end
endfunction

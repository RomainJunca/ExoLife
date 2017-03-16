
function img_out = greyRJ(img)
    size_X = size(img, 1);
    size_Y = size(img, 2);
    img_out = zeros(size_X, size_Y);
    comp = 0;
    
        for Y = 2:size_Y-1,
            for X = 2:size_X-1,
                if img(X,Y) > comp then
                    tab = [img(X-1,Y-1),img(X,Y-1),img(X+1,Y-1),img(X-1,Y),img(X+1,Y),img(X-1,Y+1),img(X,Y+1),img(X+1,Y-1),img(X,Y)];
                    moy = round(sum(tab)/size(tab, 'c'));
                    if moy == img(X,Y) then
                        img_out(X-1,Y-1) = 255;
                        img_out(X,Y-1) = 255;
                        img_out(X+1,Y-1) = 255;
                        img_out(X-1,Y) = 255;
                        img_out(X+1,Y) = 255;
                        img_out(X-1,Y+1) = 255;
                        img_out(X,Y+1) = 255;
                        img_out(X+1,Y-1) = 255;
                        img_out(X,Y) = 255;
                        
                        
                     end,
                    
                    else img_out(X,Y) = img(X,Y);
                    
                
            end, 
            comp = img(X,Y);
                
            end
        end
    
    
endfunction

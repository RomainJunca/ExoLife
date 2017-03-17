//Dilatation

function image_out = dilatationBinaire(img,calc,centerX,centerY)
    
    image=img
    imgSizeX = size (img, 1);
    imgSizeY = size (img, 2);
    calcSizeX = size (calc,1);
    calcSizeY = size (calc,2);
    
    
    image_out= zeros ( imgSizeX, imgSizeY);
    
    //On parcour chaque pixel de l'image et on lui applique l'élement structurant
    for x = 1:imgSizeX,
        for y = 1:imgSizeY,
            if calc(centerX,centerY) == img(x,y) then //On verifie le centre de l'élement structurant
                for xc = 1:calcSizeX,
                    for yc =1:calcSizeY,
                        if calc(xc,yc)==255 then //On applique la condition pour que le pixel sur lequel on applique l'élement structurant soit blanc.
                            coY=(y-centerY)+yc;
                            if ~(coX <= 0 | coY <= 0 | coX >= imgSizeX | coY >= imgSizeY) then //On applique les changement pour chaque pixel
                                image(coX,coY)=255;
                            end,
                        end
                    end
                end
            end
        end
    end
    image_out = image
   
          
               

    
    
    
endfunction

//Dilatation

function image_out = dilimage(img,calc,centerX,centerY)
    
    image=img
    imgSizeX = size (img, 1);
    imgSizeY = size (img, 2);
    calcSizeX = size (calc,1);
    calcSizeY = size (calc,2);
    
    
    image_out= zeros ( imgSizeX, imgSizeY);
    
    for x = 1:imgSizeX,
        for y = 1:imgSizeY,
            if calc(centerX,centerY) == img(x,y) then
                for xc = 1:calcSizeX,
                    for yc =1:calcSizeY,
                        if calc(xc,yc)==255 then 
                            coX=(x-centerX)+xc;
                            coY=(y-centerY)+yc;
                            if ~(coX <= 0 | coY <= 0 | coX >= imgSizeX | coY >= imgSizeY) then
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

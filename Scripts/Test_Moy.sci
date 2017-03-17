//mission 2


function pourcent=pourcentage(img,hist)
    
    sizeX = size(img, 1);
    sizeY = size(img, 2);
    total = sizeX * sizeY;
    
    addition = 0;
    
    for x = 1 : 256
        addition = addition + (x*hist(x))-1;
    end
    
    pourcent = (addition/(total*256))*100;

    disp("Pourcentage de gaz =" + string(pourcent) + "%");

    
    
   
endfunction


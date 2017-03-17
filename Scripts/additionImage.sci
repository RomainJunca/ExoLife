//Fonction addtionnant deux images


function image_out=additionImage(img1,img2)

    img1SizeX = size(img1,1);
    img1SizeY = size(img1,2);
    img2SizeX = size(img2,1);
    img2SizeY = size(img2,2);
    
    image_out = zeros(img1SizeX,img1SizeY);//On met la matrice à zéro
    
    for x = 1: img1SizeX;//On parcour la matrice
        for y = 1: img1SizeY;
            if x > img2SizeX | y > img2SizeY then //Si x est inférieur 
                image_out(x, y) = img1(x, y);//Alors
            elseif (img1(x, y)+img2(x,y))>255 then//Sinon
                image_out(x,y)=255;//Alors
            else image_out(x,y)= img1(x,y)+img2(x,y);//Sinon
                
            end,
        end
    end
    
                       
endfunction




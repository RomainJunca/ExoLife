//Fonction addtionnant deux images


function image_out=additionImage(img1,img2)

    img1SizeX = size(img1,1);
    img1SizeY = size(img1,2);
    img2SizeX = size(img2,1);
    img2SizeY = size(img2,2);
    
    image_out = zeros(img1SizeX,img1SizeY);//On crée une matrice nulle de même dimension que la première image.
    
    
    
    
    for x = 1: img1SizeX;
        for y = 1: img1SizeY;
            if x > img2SizeX | y > img2SizeY then //SI l'intensité du pixel est inférieur à celle du même pixel sur la deuxième image.
                image_out(x, y) = img1(x, y);//On garde la valeur du pixel de la première image.
            elseif (img1(x, y)+img2(x,y))>255 then //On dis que si la somme est supérieur à 255 alors c'est égal a 255 pour rester dans la 
                image_out(x,y)=255;// SINON SI la valeur du pixel de la première image PLUS celle du pixel de la deuxième image est Positif
            else image_out(x,y)= img1(x,y)+img2(x,y);//SINON on garde la valeur de la somme 
                
            end,
        end
    end
    
                       
endfunction




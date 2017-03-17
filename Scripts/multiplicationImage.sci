//Multiplication Image

function image_out=multiplicationImage(img1,img2)

    img1SizeX = size(img1,1);
    img1SizeY = size(img1,2);
    img2SizeX = size(img2,1);
    img2SizeY = size(img2,2);
    
    image_out = zeros(img1SizeX,img1SizeY); //On crée une matrice nulle de même dimension que la première image.
    
    
    for x = 1: img1SizeX;//On parcours la première image.
        for y = 1: img1SizeY;
            if x > img2SizeX | y > img2SizeY then//SI l'intensité du pixel est supérieure à celle du même pixel sur la deuxième image.
                image_out(x, y) = img1(x, y);//On garde la valeur du pixel de la première image.
            elseif (img1(x, y)-img2(x,y))>255 then// SINON SI la valeur du pixel de la première image FOIS celle du pixel de la deuxième image est positif.
                image_out(x,y)=255;//On met le pixel au noir.
            else image_out(x,y)= img1(x,y)*img2(x,y);//SINON on garde la valeur de la soustraction.
                
            end,
        end
    end
    
                       
endfunction




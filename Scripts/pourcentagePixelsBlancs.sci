//Mission 2

//On determine la fonction avec une image et un histogramme
function pourcent=pourcentage(img,hist)
    
    //On parcourt chaque pixel de l'image 
    sizeX = size(img, 1);
    sizeY = size(img, 2);
    total = sizeX * sizeY;//On determine le nombre de pixel
    
    addition = 0;//On definie la variable addition
    
    for x = 1 : 256
        addition = addition + (x*hist(x))-1;//Formule qui permet d'avoir le total des valeurs de chaque pixel de l'image
    end
    
    pourcent = (addition/(total*256))*100;// Calcule le pourcentage de blanc dans l'image

    disp("Pourcentage de gaz =" + string(pourcent) + "%");//Affiche le pourcentage

    
    
   
endfunction


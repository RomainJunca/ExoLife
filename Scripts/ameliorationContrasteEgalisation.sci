// Amélioration des contrastes de l'image à l'aide d'une droite linéaire. Egalisation de l'image

function image_out=ameliorationContrasteEgalisation(image, histoCumul)
    // Calcul des informations nécessaires pour avoir la droite linéaire qui contient une répartition parfaite des pixels pour l'histogramme cumulé
    minLineaire = 0;
    maxLineaire = size(image, 1)*size(image, 2);
    coefdir = maxLineaire/255;
    
    // Obtention des données de taille de l'image ainsi que création de l'image de sortie
    SizeX = size(image, 1);
    SizeY = size(image, 2);
    image_out = zeros(SizeX, SizeY);
    
    // Création d'une table de correspondance afin de modifier les pixels par la suite
    tabCorrespondance = zeros(1, 256);
    for indexCorrespondance = 1:256
        tabCorrespondance(indexCorrespondance) = (histoCumul(indexCorrespondance)/coefdir);
    end
    
    // Application de la table de correspondance
    for X = 1:SizeX
        for Y = 1:SizeY
           image_out(X, Y) = tabCorrespondance(image(X, Y)+1);
        end
    end
    
    
endfunction

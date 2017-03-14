// Amélioration des contrastes de l'image à l'aide d'une droite linéaire. Normalisation de l'image
// Voir les commentaires pour startHisto et endHisto
// Pour la suite, voir si possibilité d'ajouter différentes façon d'obtenir la courbe afin de mieux lisser

function image_out=ameliorationCLJG(image, minHisto, maxHisto)
    // Calcul de l'équation de la droite sous la forme y=ax+b avec a le coeficient directeur et b l'ordonnée à l'origine
    coefdir = 255/(maxHisto-minHisto);
    ordonneOrigine=-(-minHisto*coefdir);
    
    // Obtention des données de taille de l'image ainsi que création de l'image de sortie
    SizeX = size(image, 1);
    SizeY = size(image, 2);
    image_out = zeros(SizeX, SizeY);
    
    
    for X = 1: SizeX
        for Y = 1: SizeY
            image_out(X, Y) = round(coefdir*(image(X, Y)-1)+ordonneOrigine);
        end
    end
    
endfunction

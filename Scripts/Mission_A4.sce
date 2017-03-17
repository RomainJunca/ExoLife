
pathname = "C:\Users\Romain\Desktop\PROJET EXOLIFE\ExoLife\Images\Mission_A\Jupiter1.pbm"; //Chemin de la première image.
pathname2 = "C:\Users\Romain\Desktop\PROJET EXOLIFE\ExoLife\Images\Mission_A\Jupiter2.pbm"; //Chemin de la deuxième image.
jupiter1 = readpbm(pathname); //On récupère la première image.
jupiter2 = readpbm(pathname2); //On récupère la deuxième image.

bruitJupiter  = minusimg(jupiter1, jupiter2); //On "extrait" le bruit des images.

jupiterFinal1 = minusimg(jupiter1, bruitJupiter); //On soustrait le bruit obtenu précédemment de l'image de Jupiter.

jupiterFinal2 = filtreMedian(jupiterFinal1); //On "affine" l'image avec le filtre médian, faisant ainsi disparaître le bruit.


// Affichage
figure;
display_gray(bruitJupiter);

figure;
display_gray(jupiterFinal1);

figure;
display_gray(jupiterFinal2);

//Mission A4

<<<<<<< Updated upstream
pathname = "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Images\Mission_A\Jupiter1.pbm"; //Chemin de la première image.
pathname2 = "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Images\Mission_A\Jupiter2.pbm"; //Chemin de la deuxième image.
jupiter1 = readpbm(pathname); //On récupère la première image.
jupiter2 = readpbm(pathname2); //On récupère la deuxième image.
=======
//On récupère les deux images.
pathname = "C:\Users\Romain\Desktop\PROJET EXOLIFE\ExoLife\Images\Mission_A\Jupiter1.pbm"; 
pathname2 = "C:\Users\Romain\Desktop\PROJET EXOLIFE\ExoLife\Images\Mission_A\Jupiter2.pbm"; 
jupiter1 = readpbm(pathname); 
jupiter2 = readpbm(pathname2); 
>>>>>>> Stashed changes

//On "extrait" le bruit des images.
bruitJupiter  = soustractionImage(jupiter1, jupiter2); 

 //On soustrait le bruit obtenu précédemment de l'image de Jupiter.
jupiterFinal1 = soustractionImage(jupiter1, bruitJupiter);


 //On "affine" l'image avec le filtre médian, faisant ainsi disparaître le bruit.
jupiterFinal2 = filtreMedian(jupiterFinal1);


// Affichage
figure;
display_gray(bruitJupiter);

figure;
display_gray(jupiterFinal1);

figure;
display_gray(jupiterFinal2);

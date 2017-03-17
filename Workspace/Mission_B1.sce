<<<<<<< Updated upstream
pathname = "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Images\Mission_B\Gliese 667Cc_surface.pbm"; //Chemin de l'image.
img_in = readpbm(pathname); //On récupère l'image.
=======
//Mission B1

//On récupère l'image.
pathname = "C:\Users\Romain\Desktop\PROJET EXOLIFE\ExoLife\Images\Mission_B\Gliese 667Cc_surface.pbm"; 
img_in = readpbm(pathname); 

 //Histogramme de l'image.
histogramme = histogrammeFct(img_in); 

>>>>>>> Stashed changes


// Normalisation
minHisto = debutHistogramme(histogramme);
maxHisto = finHistogramme(histogramme);

img_normalise = ameliorationContrasteNormalisation(img_in, minHisto, maxHisto);



// Egalisation
<<<<<<< Updated upstream
histogrammeCumule = histogrammeCumuleFct(histogramme);

=======
histogrammeCumule = histogrammeCumuleJG(histogramme);
>>>>>>> Stashed changes
img_egalise = ameliorationContrasteEgalisation(img_in, histogrammeCumule);



// Affichage

figure;
plot(histogramme);

figure;
display_gray(img_normalise);

figure;
display_gray(img_egalise);


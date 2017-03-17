pathname = "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Images\Mission_B\GD61.pbm"; //Chemin de l'image.
img_in = readpbm(pathname); //On récupère l'image.

histogramme = histogrammeFct(img_in); //Histogramme de l'image.


// Normalisation
minHisto = debutHistogramme(histogramme);
maxHisto = finHistogramme(histogramme);

img_normalise = ameliorationContrasteNormalisation(img_in, minHisto, maxHisto);

// Affichage

figure;
plot(histogramme);

figure;
display_gray(img_normalise);

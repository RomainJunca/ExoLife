pathname = "C:\Users\Romain\Desktop\PROJET EXOLIFE\ExoLife\Images\Mission_B\Gliese 667Cc_surface.pbm"; //Chemin de l'image.
img_in = readpbm(pathname); //On récupère l'image.

histogramme = histogrammeJG(img_in); //Histogramme de l'image.

// Normalisation
minHisto = startHistoJG(histogramme);
maxHisto = endHistoJG(histogramme);

img_normalise = ameliorationCLJG(img_in, minHisto, maxHisto);

// Egalisation
histogrammeCumule = histogrammeCumuleJG(histogramme);

img_egalise = ameliorationContrasteEgalisation(img_in, histogrammeCumule);

// Affichage

figure;
plot(histogramme);

figure;
display_gray(img_normalise);

figure;
display_gray(img_egalise);


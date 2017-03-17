pathname = "C:\Users\Romain\Desktop\PROJET EXOLIFE\ExoLife\Images\Mission_B\GD61.pbm"; //Chemin de l'image.
img_in = readpbm(pathname); //On récupère l'image.

histogramme = histogrammeJG(img_in); //Histogramme de l'image.


// Normalisation
minHisto = startHistoJG(histogramme);
maxHisto = endHistoJG(histogramme);

img_normalise = ameliorationCLJG(img_in, minHisto, maxHisto);

// Affichage

figure;
plot(histogramme);

figure;
display_gray(img_normalise);

pathname = "C:\Users\Romain\Desktop\PROJET EXOLIFE\ExoLife\Images\Mission_B\GD61.pbm";
img_in = readpbm(pathname);

histogramme = histogrammeJG(img_in);

// Normalisation
minHisto = startHistoJG(histogramme);
maxHisto = endHistoJG(histogramme);

img_normalise = ameliorationCLJG(img_in, minHisto, maxHisto);

// Affichage

figure;
plot(histogramme);

figure;
display_gray(img_normalise);

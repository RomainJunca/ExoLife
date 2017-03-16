pathname = "C:\Users\Romain\Desktop\PROJET EXOLIFE\ExoLife\Images\Mission_B\Gliese 667Cc_surface.pbm";
img_in = readpbm(pathname);

histogramme = histogrammeJG(img_in);

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


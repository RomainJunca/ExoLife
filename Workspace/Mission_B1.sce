//Mission B1

//On récupère l'image.
pathname = "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Images\Mission_B\Gliese 667Cc_surface.pbm";
img_in = readpbm(pathname);

 //Histogramme de l'image.
histogramme = histogrammeFct(img_in);


// Normalisation
minHisto = debutHistogramme(histogramme);
maxHisto = finHistogramme(histogramme);

img_normalise = ameliorationContrasteNormalisation(img_in, minHisto, maxHisto);



// Egalisation

histogrammeCumule = histogrammeCumuleFct(histogramme);

img_egalise = ameliorationContrasteEgalisation(img_in, histogrammeCumule);



// Affichage

figure;
plot(histogramme);

figure;
display_gray(img_normalise);

figure;
display_gray(img_egalise);


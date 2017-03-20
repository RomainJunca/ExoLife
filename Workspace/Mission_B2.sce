//Mission B2

//On récupère l'image.
pathname = "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Images\Mission_B\GD61.pbm";
img_in = readpbm(pathname); 


 //Histogramme de l'image.
histogramme = histogrammeFct(img_in); 


// Normalisation
minHisto = debutHistogramme(histogramme);
maxHisto = finHistogramme(histogramme);

img_normalise = ameliorationContrasteNormalisation(img_in, minHisto, maxHisto);

// Affichage

figure;
plot(histogramme);

figure;
display_gray(img_normalise);


// Sauvegarde de l'image
writepbm(img_normalise, "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Rendus\MissionB2.pbm");

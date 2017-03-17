// Obtention de l'image
pathname = "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Images\Mission_U\U1_surface.pbm";
img_in = readpbm(pathname);

// Application de la normalisation afin d'avoir un meilleur contraste lors de l'application d'un filtre des contours
histogramme = histogrammeFct(img_in);
minHisto = debutHistogramme(histogramme);
maxHisto = finHistogramme(histogramme);
img_norma = ameliorationContrasteNormalisation(img_in, minHisto, maxHisto);

// Application du filtre de Sobel afin de ne garder que les contours
img_out = filtreSobel(img_norma);


// Affichage
figure;
display_gray(img_in);


figure;
display_gray(img_out);


// Sauvegarde de l'image
writepbm(img_out, "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Rendus\MissionU1.pbm");

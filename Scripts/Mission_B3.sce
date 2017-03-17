
pathname = "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Images\Mission_B\HD215497.pbm";
img_in = readpbm(pathname);

histogramme = histogrammeJG(img_in);

// Seuil Multiple
img_out = seuil2RJ(img_in, 64, 128, 192);

// Affichage

figure;
plot(histogramme);

figure;
display_gray(img_out);
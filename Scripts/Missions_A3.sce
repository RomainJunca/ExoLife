
pathname = "C:\Users\Romain\Desktop\PROJET EXOLIFE\ExoLife\Images\Mission_A\Europa_surface.pbm";
img_in = readpbm(pathname);

histogramme = histogrammeJG(img_in);
histogrammeCumule = histogrammeCumuleJG(histogramme);

image_out = seuilJG(img_in, 250);

// Affichage

figure;
plot(histogramme);
figure;
plot(histogrammeCumule);
figure;
display_gray(image_out);

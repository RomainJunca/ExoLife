

pathname = "C:\Users\Romain\Desktop\PROJET EXOLIFE\ExoLife\Images\Mission_A\Encelade_surface.pbm";
img_in = readpbm(pathname);

histogramme = histogrammeJG(img_in);


img_out = seuilRJ(img_in,215);



// Affichage

figure;
plot(histogramme);
figure;
display_gray(img_out);

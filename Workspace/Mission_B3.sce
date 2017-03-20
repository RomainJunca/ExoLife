//Mission B3


//On récupère l'image
pathname = "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Images\Mission_B\HD215497.pbm";
img_in = readpbm(pathname);

//On affiche l'histogramme
histogramme = histogrammeFct(img_in);


// Seuil Multiple
img_out = seuilMultiple(img_in, 64, 128, 192);

// Affichage

figure;
plot(histogramme);

figure;
display_gray(img_out);


// Sauvegarde de l'image
writepbm(img_out, "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Rendus\MissionB3.pbm");

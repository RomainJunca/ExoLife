
pathname = "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Images\Mission_U\U1_surface.pbm";
img_in = readpbm(pathname);


img_out = filtreSobel(img_in);


// Affichage
figure;
display_gray(img_in);


figure;
display_gray(img_out);

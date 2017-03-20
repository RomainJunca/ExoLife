// Mission U2

// Obtention de l'image
pathname = "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Images\Mission_U\U2_surface.pbm";
img_in = readpbm(pathname);

// Application du filtre de sobel afin de ne garder que les contours
img_out = filtreSobel(img_in);

// Affichage
figure;
display_gray(img_out);


// Sauvegarde de l'image
writepbm(img_out, "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Rendus\MissionU2.pbm");

//Mission A2

//On prend l'image donnée
path = "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Images\Mission_A\Mars_surface.pbm"
img_in = readpbm(path);


//On utilise l'histogramme de cette image
histo = histogrammeFct(img_in);


//On utilise la fonction pourcentage qui calcule la moyenne de chaque valeur de chaque pixel de l'image et le remet en poucentage.
pourcent = pourcentagePixelsBlancs(img_in, histo);


//Affiche 
figure;
plot(histo);

figure;
display_gray(img_in);

// Sauvegarde de l'image
writepbm(img_in, "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Rendus\MissionA2.pbm");

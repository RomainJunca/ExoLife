

pathname = "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Images\Mission_A\Encelade_surface.pbm"; //Chemin de l'image.
img_in = readpbm(pathname); //On récupère l'image.

histogramme = histogrammeFct(img_in); //On affiche l'histogramme par le biais de la méthode histogramme.


img_out = seuilMissionA1(img_in,215); //On utilise une méthode de seuillage afin de délimiter la zone d'aterrissage (le seuil a été affecté par rapport à l'histogramme).



// Affichage

figure;
plot(histogramme);
figure;
display_gray(img_out);

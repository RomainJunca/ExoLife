//Mission A3

<<<<<<< Updated upstream
pathname = "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Images\Mission_A\Europa_surface.pbm"; //Chemin de l'image.
img_in = readpbm(pathname); //On récupère l'image.
=======
//On récupère l'image.
pathname = "C:\Users\Romain\Desktop\PROJET EXOLIFE\ExoLife\Images\Mission_A\Europa_surface.pbm"; //Chemin de l'image.
img_in = readpbm(pathname); 
>>>>>>> Stashed changes

//On affiche l'histogramme par le biais de la méthode histogramme.
histogramme = histogrammeFct(img_in);    


//On affiche l'histogramme cumulé par le biais de la méthode histogramme cumulé.
histogrammeCumule = histogrammeCumuleFct(histogramme); 


//On utilise une méthode de seuillage afin de délimiter la zone d'aterrissage.
image_out = seuilBasique(img_in, 250); 

// Affichage

figure;
plot(histogramme);
figure;
plot(histogrammeCumule);
figure;
display_gray(image_out);

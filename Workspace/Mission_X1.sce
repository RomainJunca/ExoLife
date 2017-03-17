// Mission X1

// Chargement de l'image au format .dat dans la mémoire
load("C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Images\Mission_X\Asellus Secundus.dat");

// Utilisation de l'inverse de la transformée de Fourrier
img_out = ifft(imgT);

// Affichage
figure;
display_gray(img_out);


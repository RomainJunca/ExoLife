// Fonctionnel, il ne reste qu'à voir si on ne peut pas prendre un meilleur masque

pathname = "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Images\Mission_Complementaire\Formes.pbm";
img_in = readpbm(pathname);

eStruct = [0, 0, 0;255, 255, 255;0, 0, 0];

img_erosion = erosionImage(img_in, eStruct, 2, 2);
img_out = dilimage(img_erosion, eStruct, 2, 2);

// Affichage
figure;
display_gray(img_in);

figure;
display_gray(img_out);

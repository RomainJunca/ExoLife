
pathname = "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Images\Mission_Complementaire\Contours.pbm";
img_in = readpbm(pathname);

img_out = filtreSobel(img_in);

// Affichage
figure;
display_gray(img_out);

// On a 4 carrés différents, ils correspondent à la nuance de gris différente, si le contour est doux alors le contour affiché sera également doux, lorsqu'il y a beaucoup de changements, le filtre aura tendance à également s'appliquer sur les divers pixels, comme pour la 4e image, ...

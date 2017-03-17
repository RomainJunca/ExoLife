//Mission 2

//On prend l'image donnée
path = "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Images\Mission_A\Mars_surface.pbm"
img_in = readpbm(path);

//On utilise l'histogramme de cette image
histo = histogrammeFct(img_in);
figure;
plot(histo);

//On utilise la fonction pourcentage qui calcule la moyenne de chaque valeur de chaque pixel de l'image et le remet en poucentage.
pourcent = pourcentagePixelsBlancs(img_in, histo);

//Affiche l'image
figure;
display_gray(img_in);

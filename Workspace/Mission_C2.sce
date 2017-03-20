//Mission C2

//On récupère l'image
pathname = "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Images\Mission_Complementaire\Formes.pbm";
img_in = readpbm(pathname);

//On crée l'élement structurant
eStruct = [0, 0, 0;255, 255, 255;0, 0, 0];

//Erosion
img_erosion = erosionBinaire(img_in, eStruct, 2, 2);

//Dilatation
img_out = dilatationBinaire(img_erosion, eStruct, 2, 2);

// Affichage
figure;
display_gray(img_in);

figure;
display_gray(img_out);

// Sauvegarde de l'image
writepbm(img_out, "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Rendus\MissionC2.pbm");

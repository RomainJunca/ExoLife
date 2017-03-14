// 1 - Load Image

path = "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Images\Mission_U\U1_surface.pbm"

image_in = readpbm(path);


// 2 - Display Image
//display_gray(image_in);


// 3 - Test de seuillage, fail probable

//image_out = seuilJG(image_in, 150);

histo = histogrammeJG(image_in);

disp(histo);

plot(histo);


// 3 - Save Image
writepbm(image_out, "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Workspace\testJGSeuil.pbm");

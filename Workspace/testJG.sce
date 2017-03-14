// 1 - Load Image

path = "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Images\Mission_B\Gliese 667Cc_surface.pbm"

image_in = readpbm(path);


// 2 - Display Image
//display_gray(image_in);


// 3 - Test de seuillage, fail probable

//image_out = seuilJG(image_in, 150);

histo = histogrammeJG(image_in);

minHisto = startHistoJG(histo);
maxHisto = endHistoJG(histo);

image_out = ameliorationCLJG(image_in, minHisto, maxHisto);

display_gray(image_out);
//disp(minHisto, maxHisto);

//plot(histo);


// 3 - Save Image
writepbm(image_out, "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Workspace\testJGSeuil.pbm");

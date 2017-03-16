// 1 - Load Image

path = "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Images\Mission_A\Jupiter1.pbm"

image_in = readpbm(path);


// 2 - Display Image
//display_gray(image_in);


// 3 - Test de seuillage, fail probable

//image_out = seuilJG(image_in, 150);

histo = histogrammeJG(image_in);

histoCumul = histogrammeCumuleJG(histo);
// DEBUT AMELIORATION CONTRASTES
minHisto = startHistoJG(histo);
maxHisto = endHistoJG(histo);
image_out = ameliorationCLJG(image_in, minHisto, maxHisto);
image_out2 = ameliorationContrasteEgalisation(image_in, histoCumul);
// FIN AMELIORATION CONTRASTES

//image_out3 = filtreMedian(image_in);

image_out2 = filtreGaussien(image_in);

figure;
plot(histo);

figure;
display_gray(image_in);

figure;
display_gray(image_out);

figure;
display_gray(image_out2);
//disp(minHisto, maxHisto, histo, histoCumul);


//plot(histo2);


// 3 - Save Image
//writepbm(image_out, "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Workspace\testJGSeuil.pbm");

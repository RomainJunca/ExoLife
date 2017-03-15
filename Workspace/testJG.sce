// 1 - Load Image

path = "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Images\Mission_B\Gliese 667Cc_surface.pbm"

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
histoI1 = histogrammeJG(image_out);
histoCumul1 = histogrammeCumuleJG(histoI1);

histoI2 = histogrammeJG(image_out2);
histoCumul2 = histogrammeCumuleJG(histoI2);
//display_gray(image_out);
disp(minHisto, maxHisto, histo, histoCumul);

figure;
display_gray(image_in);

figure;
plot(histoCumul);

figure;
display_gray(image_out);

figure;
display_gray(image_out2);

figure;
plot(histoCumul1);

figure;
plot(histoCumul2);

//plot(histo2);


// 3 - Save Image
writepbm(image_out, "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Workspace\testJGSeuil.pbm");

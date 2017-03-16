// 1 - Load Image

path = "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Images\Mission_B\Gliese 667Cc_surface.pbm"

image_in = readpbm(path);


// 2 - Display Image
//display_gray(image_in);


// 3 - Test de seuillage

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

image_out3 = filtreMedian(image_in);

image_out4 = filtreMedian(image_out3);

histo2 = histogrammeJG(image_out4);
histoCumul2 = histogrammeCumuleJG(histo2);
image_out5 = ameliorationContrasteEgalisation(image_out3, histoCumul2);
image_out7 = filtreMedian(image_out5);

histo3 = histogrammeJG(image_in);
histoCumul3 = histogrammeCumuleJG(histo3);
image_out99 = ameliorationContrasteEgalisation(image_in, histoCumul3);

//minHisto2 = startHistoJG(histo2);
//maxHisto2 = endHistoJG(histo2);
//image_out6 = ameliorationCLJG(image_out4, minHisto2, maxHisto2);
//image_out8 = filtreMedian(image_out6);

figure;
plot(histo);

figure;
display_gray(image_in);

figure;
display_gray(image_out);

figure;
display_gray(image_out7);

figure;
display_gray(image_out5);
//disp(minHisto, maxHisto, histo, histoCumul);

figure;
display_gray(image_out99);


//plot(histo2);


// 3 - Save Image
//writepbm(image_out, "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Workspace\testJGSeuil.pbm");

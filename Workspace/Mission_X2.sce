// Débruitage Image

pathname = "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Images\Mission_X\Gliese 581d V2.pbm";
img_in = readpbm(pathname);

// Application du filtre médian
image_median = filtreMedian(img_in);

// Application de l'égalisation
histogramme = histogrammeFct(img_in);
histoCumul = histogrammeCumuleFct(histogramme);
image_m_egalise = ameliorationContrasteEgalisation(image_median, histoCumul);

// Ré application du filtre médian
image_m_e_m = filtreMedian(image_m_egalise);


// Affichage
figure;
display_gray(image_median);

figure;
display_gray(image_m_egalise);

figure;
display_gray(image_m_e_m);

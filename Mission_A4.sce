
pathname = "C:\Users\Romain\Desktop\PROJET EXOLIFE\ExoLife\Images\Mission_A\Jupiter1.pbm";
pathname2 = "C:\Users\Romain\Desktop\PROJET EXOLIFE\ExoLife\Images\Mission_A\Jupiter2.pbm";
jupiter1 = readpbm(pathname);
jupiter2 = readpbm(pathname2);

bruitJupiter  = minusimg(jupiter1, jupiter2);

jupiterFinal1 = minusimg(jupiter1, bruitJupiter);

jupiterFinal2 = filtreMedian(jupiterFinal1);


// Affichage
figure;
display_gray(bruitJupiter);

figure;
display_gray(jupiterFinal1);

figure;
display_gray(jupiterFinal2);

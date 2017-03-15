//Load Image


pathname = "C:\Users\Romain\Desktop\PROJET EXOLIFE\ExoLife\Images\Mission_B\HD215497.pbm";
img_in = readpbm(pathname);

//Display Image

//display_gray(img_in);

//Seuillage 2.0
img_out = seuil2RJ(img_in,20,50,100);

histo = histogrammeJG(img_out);

figure;
display_gray(img_out);

figure;
plot(histo);

disp(img_out);
//Write Image

//writepbm(img_in,"C:\Users\Romain\Desktop\PROJET EXOLIFE\ExoLife\Workspace\JupiterTestRJ.pbm");

//Filtre Artistique
//img_out = gsort(img_in, 'g', 'i');
//display_gray(img_out);


pathname = "C:\Users\Romain\Desktop\PROJET EXOLIFE\ExoLife\Images\Mission_U\U2_surface.pbm";
img_in = readpbm(pathname);

img_out = filtreSobel(img_in);

display_gray(img_out);

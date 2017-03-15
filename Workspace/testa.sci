//Load Image

path1= "/Users/Antoine/Documents/Exolife/Images/Mission_A/Europa_surface.pbm";
image1 = readpbm(path1);

path2="/Users/Antoine/Documents/Exolife/Images/Mission_A/Mars_surface.pbm"
image2= readpbm(path2);

img = zeros(8, 8);
img(5, 5) = 255;
img(5, 6) = 255;
img(6, 5) = 255;
writepbm(img, "/Users/Antoine/Documents/Exolife/Images/Mission_A/TestDilatation.pbm");

calc=[0,255,0];

figure;
display_gray(img);

image_out = dilimage(img,calc,1,1); 

figure;
display_gray(image_out);







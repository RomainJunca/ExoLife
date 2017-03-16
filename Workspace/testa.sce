//Load Image

//path1= "/Users/Antoine/Documents/Exolife/Images/Mission_A/Europa_surface.pbm";
//image1 = readpbm(path1);

//path2="/Users/Antoine/Documents/Exolife/Images/Mission_A/Mars_surface.pbm"
//image2= readpbm(path2);

//path3="/Users/Antoine/Downloads/Formes.pbm"
//image3=readpbm(path3);

//img = zeros(8, 8);
//img(5, 5) = 255;
//img(5, 6) = 255;
//img(6, 6) = 255;
//img(8, 8) = 255;
//writepbm(img, "/Users/Antoine/Documents/Exolife/Images/Mission_A/TestDilatation.pbm");

//calc = [0,0,0;0,255,255;0,255,0];

//figure;
//display_gray(img);

//image_out = dilimage(img,calc,2,2); 
//image_out3 = reverseColor(image_out);
//image_out2 = erosionImage(image_out,calc,2,2);

//figure;
//display_gray(image_out);

//figure;
//display_gray(image_out2);
path = "/Users/Antoine/Documents/ExoLife/Images/Mission_A/Mars_surface.pbm";
imgm2=readpbm(path);

disp pourcent(imgm2);

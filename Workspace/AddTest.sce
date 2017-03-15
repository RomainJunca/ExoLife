//Load Image

path1= "/Users/Antoine/Documents/Exolife/Images/Mission_A/Jupiter1.pbm";
image1 = readpbm(path1);

path2="/Users/Antoine/Documents/Exolife/Images/Mission_A/Jupiter2.pbm"
image2= readpbm(path2);

img_out = addimg(image1, image2);

figure;
display_gray(img_out);






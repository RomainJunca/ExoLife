//Load Image

path = "/Users/Antoine/Documents/Exolife/Images/Mission_A/Jupiter1.pbm";
image_in = readpbm(path);


//Display Image

display_gray(image_in);


//Save Image
writepbm(image_in,"/Users/Antoine/Documents/Exolife/Images/Mission_A/Jupitera.pbm");

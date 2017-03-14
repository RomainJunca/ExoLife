// 1 - Load Image

path = "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Images\Mission_A\Jupiter1.pbm"

image_in = readpbm(path);


// 2 - Display Image
display_gray(image_in);


// 3 - Save Image
writepbm(image_in, "C:\Users\Jean-Guillaume P\Documents\Exia\A2\Projets\Imagerie\ExoLife\Workspace\testJGSeuil.pbm");

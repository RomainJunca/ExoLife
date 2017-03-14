//Load Image

path = "/Users/Antoine/Documents/Exolife/Images/Mission_A/Jupiter1.pbm";
image_in = readpbm(path);


//Display Image

display_gray(image_in);


//Seuil Image

def seuil(x):)
    if x<100 retrun 0 then return 255
end


image1 = image_in
impix = image1.load()
for i in range (image1.size[0]):
    for j in range(image1.size[1]):
        impix[i,j] = seuil(impix[i,j])
end
image1.save('image_in')
image1.show()


// Contraste test


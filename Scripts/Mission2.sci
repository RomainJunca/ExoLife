//Mission 2


path = "/Users/Antoine/Documents/ExoLife/Images/Mission_A/Mars_surface.pbm";
imgm2=readpbm(path);

histo=histogrammeJG(imgm2);

plot(histo);

function pourcent=moyenne (image)
    
    
    SizeX = size(image, 1);
    SizeY = size(image, 2);
    comp = 0;
    add = 0;
    
      for X = 1:SizeX,
        for Y= 1:SizeY,
            image(X,Y) = image(X,Y) + add;
            add = image(X,Y);
            comp=comp+1;
            
        end
    end
    
    moy = add/comp;
    
    
endfunction

pourcent = moyenne(imgm2);

disp (pourcent);

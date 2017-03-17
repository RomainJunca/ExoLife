//Dilatation

function image_out=erosionBinaire(image, calque, centerX, centerY)
    
    image1 = inversionCouleurs(image);
    
    SizeCalcX = size(calque, 1);
    SizeCalcY = size(calque, 2);
    
    calque2 = zeros(SizeCalcX, SizeCalcY);
    
    for X = 1 : SizeCalcX
        for Y = 1 : SizeCalcY
            if calque(X, Y) == 255 then
                calque2(SizeCalcX+1-X, Y) = 255;
            end,
        end
    end
    calque3 = zeros(SizeCalcX, SizeCalcY);
    for X = 1 : SizeCalcX
        for Y = 1 : SizeCalcY
            if calque2(X, Y) == 255 then
                calque3(X, SizeCalcY+1-Y) = 255;
            end,
        end
    end
    
    disp(calque3, calque);
    
    
    image2 = dilatationBinaire(image1, calque3, centerX, centerY);
    image_out = inversionCouleurs(image2);   
    
endfunction


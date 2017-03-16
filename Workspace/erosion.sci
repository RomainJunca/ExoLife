//Dilatation

function image_out=erosionImage(image, calque, centerX, centerY)
    
    image1 = reverseColor(image);
    
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
    calque3 = calque2;
    for X = 1 : SizeCalcX
        for Y = 1 : SizeCalcY
            if calque2(X, Y) == 255 then
                calque3(X, SizeCalcY+1-Y) = 255;
            end,
        end
    end
    
    disp(calque3, calque);
    
    
    image2 = dilimage(image1, calque3, centerX, centerY);
    image_out = reverseColor(image2);   
    
endfunction


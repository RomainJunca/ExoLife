//Addition Image

function image_out=addimg(img1,img2)

    img1SizeX = size(img1,1);
    img1SizeY = size(img1,2);
    img2SizeX = size(img2,1);
    img2SizeY = size(img2,2);
    
    img_out = zeros(img1SizeX,img1SizeY);
    for x1 = 1: img1SizeX;
        for y1= 1: img1SizeY;
            for x2=1: img2SizeX;
                for y2=1:img2SizeY;
                    for img2SizeX <= img1SizeX
                        for img2SizeY <= img1SizeX
                            if (x1+x2>255,y1+y2>255) then
                                img_out(x,y)= 255
                            end
                        end
                    end
                end
            end
        end
    end
    
    img_out = img1(x,y)+img2(x,y)
                       
endfunction




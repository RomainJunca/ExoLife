//Addition Image

function image_out=additionImage(img1,img2)

    img1SizeX = size(img1,1);
    img1SizeY = size(img1,2);
    img2SizeX = size(img2,1);
    img2SizeY = size(img2,2);
    
    image_out = zeros(img1SizeX,img1SizeY);
    
    for x = 1: img1SizeX;
        for y = 1: img1SizeY;
            if x > img2SizeX | y > img2SizeY then
                image_out(x, y) = img1(x, y);
            elseif (img1(x, y)+img2(x,y))>255 then
                image_out(x,y)=255;
            else image_out(x,y)= img1(x,y)+img2(x,y);
                
            end,
        end
    end
    
                       
endfunction




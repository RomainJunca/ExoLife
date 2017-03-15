//Addition Image

function image_out=addimg(img1,img2)

    img1SizeX = size(img1,1);
    img1SizeY = size(img1,2);
    img2SizeX = size(img2,1);
    img2SizeY = size(img2,2);
    
    img_out = zeros(img1SizeX,img1SizeY);
    for x = 1: img1SizeX,
        for y= 1: img1SizeY;
        
            if img2SizeX > img1SizeX then
                break
                
            if img2SizeY > img1SizeY then 
                break
                
                
        img_out(x,y)=img1(x,y)+img2(x,y);
            end,
        end
     end
     
endfunction




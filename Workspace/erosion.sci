//Dilatation

function img_out=eroimage(img)
    
   
    
    img = Ineverse(img)

    calc = Mirror(calc, centerX, centerY)
    
    img = dilimage(img, calc, centerX, centerY)
    
    img = Inverse(img)
    
    img_out = img;
endfunction
          
               

    
    
    
endfunction

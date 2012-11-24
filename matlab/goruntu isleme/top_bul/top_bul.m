function top_bul(resim)
   
   I = imread(resim);
    bw = im2bw(I);
    [a,b] = bwlabel(bw);
 
    c = (a==2);
    s = regionprops(c, 'centroid')
    sz = size(c)
    
    merkez = s.Centroid

    if merkez(1) < sz(2)/2
        yon1 = 'sol';
    else
        yon1 = 'sa�';
    end
    
    if merkez(2) < sz(1)/2
        yon2 = '�st';
    else
        yon2 = 'alt';
    end
    
    sonuc = ['futbol topu ',yon1,' ',yon2, ' tarafta'];
    fprintf('%s\n', sonuc);

end 
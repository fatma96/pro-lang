function net_hesaplama(cevap_anahtari,ogrenci_kagidi)

    cevap_anahtari=imread(cevap_anahtari);  
    ogrenci_kagidi=imread(ogrenci_kagidi);

    maske1=cevap_anahtari<100;                                 %100 de�erinin alt�ndaki pikseller s�f�rlan�yor
    maske2=ogrenci_kagidi<100;

    [etiket, toplam_soru_sayisi] = bwlabel(maske1);
    
    I=maske1.*maske2;                                          %cevap_anahtari ve �grenci_kagidini birle�tirdik

    [etiket, dogru_sayisi] = bwlabel(I);

    yanlis_sayisi= toplam_soru_sayisi - dogru_sayisi;          %yanlis sayisini bulduk

    fprintf('Toplam Soru say�s�: %d \nDo�ru say�s� %d \nYanl�� say�s�: %d \n',toplam_soru_sayisi, dogru_sayisi, yanlis_sayisi );
    
    
end
% net_hesaplama('cevap_anahtari.gif','ogrenci_kagidi.gif')
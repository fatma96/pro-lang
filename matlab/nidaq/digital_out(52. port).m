dio = digitalio('nidaq','Dev1'); 
addline(dio, 0, 'out');
% out: digital ��kt�
% buradaki s�f�r degeri tabloda hangi DIO ya kars�l�k gelece�ini g�sterir
% DIO0 = 52. port

% DIO0'a yani 52. porta ��kt�(out) g�nderece�iz. 

putvalue(dio, 1)
% 52. porta 5V g�nder

pause(1) % 1 sn bekle

putvalue(dio, 0)
% 52. porta 0 g�nder

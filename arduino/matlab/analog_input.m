% a = arduino('COM5');
sayac = 0;
while (1)
    sayac = sayac + 1;
t = a.analogRead(8)
pause(0.1);
liste(sayac) = t;
plot(liste);
end



% D�KKAT 
% matlab arduino etkile�iminde analog okumak biraz farkl� 
% A0 pinini okumak i�in a.analogRead(8)
% A1 pinini okumak i�in a.analogRead(9)
% ...
% bu �ekilde analog veri okuyoruz.
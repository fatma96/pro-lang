% a = arduino('COM5');
while (1)
a.analogRead(8)
pause(0.5);
end

% D�KKAT 
% matlab arduino etkile�iminde analog okumak biraz farkl� 
% A0 pinini okumak i�in a.analogRead(8)
% A1 pinini okumak i�in a.analogRead(9)
% ...
% bu �ekilde analog veri okuyoruz.
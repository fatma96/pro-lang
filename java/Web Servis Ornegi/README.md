Bo� zamanda bu yaz� d�zenlenip blog haline �evirilecek.

Eclipste Web servis olu�turma s�ras�nda olu�an ve ��z�m�n�n� bulamad���m hatalar y�z�nden Web servisini netbeansta web istemcisinide eclipste haz�rlad�m.

Tabi bu karar� verirken ��yle bir sorun oldu. Eclipse �ntan�ml� olarak tomcat sunucusunu neetbeans ise glassfish sunucusunu kullan�yordu.

Ayn� anda ikisini �al��t�rmak port �ak��mas�na sebeb veriyor ve bu iki sunucudan birisini kald�rmam�z gerekiyordu.

Netbeansta tomcat kullanmaya karar verdim. Netbeans kurulumu s�ras�nda glassfish de�ilde tomcati se�tim ve netbeansi tomcat ile kullanmaya ba�lad�m.

Netbeansta k���k bir web servis haz�rlad�m deploy edip test ettikten sonra 

http://localhost:8084/Web_Servisi1/Yeni_Web_Servis_Adi?wsdl

bu linki ettim. Xml dilinden olu�an bir sayfa. Bu linki eclipse farkl� platformlarda haberle�mek i�in kullanaca��z.

Eclipste haz�rlad���m web_servis istemcisinde ise bu linki kulland�m. 

Tabi o linki kullanarak web servis linki olu�turduktan sonra gelen projede test i�in test.java dosyas�n� yazmadan �nce k���k bir eksi�imiz kal�yor. 

O da netbeanstan projenin java dosyas�n� eclipse eklemek. Web servis istemci projesini olu�tururken bunu eklemiyor

Yeni_Web_Servis_Adi.java dosyas�n�da ekledikten sonra test.java dosyas�n�n i�eri�ini haz�rlay�p servisi test etmek kal�yor. 

Web servisi �al��t�r�rken netbeans a��k olmal� yoksa web servis kapal� olaca�� i�in eclips �zerinde �al��an istemci web servisimize ula�amaz.


![](http://j1307.hizliresim.com/1c/3/pv5ss.png)

netbeans->services->databases

buradan mysql'deki veritaban�m� ekledim. Ekledikten sonra olu�an linki kod'da veritaban�n� ba�lamak i�in kulland�m.

link bu �ekilde geliyor. jdbc:mysql://localhost:3306/otel?zeroDateTimeBehavior=convertToNull [root on Default schema]

ama kodda kullan�rken 

jdbc:mysql://localhost:3306/otel?zeroDateTimeBehavior=convertToNull

bu �ekilde al�n�yor.

Tabi projeye mysql-connector-java-5.1.6.jar dosyas�n� eklemezsek �al��maz.
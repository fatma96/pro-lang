<?php
@mysql_connect("localhost", "root", "cehars") or die ("Veritabanina baglan�rken bir hata olu�tu!");
@mysql_select_db ("forum") or die ("�ye Veritabanina Baglanilamadi");

$ad = $_POST["ad"];
$soyad = $_POST["soyad"];
$yas = $_POST["yas"];

$sql = "insert into defter (ad, soyad, yas)
values ('$ad', '$soyad', '$yas')";
$kayit = mysql_query($sql);

echo "Veri basariyla eklendi...!";

?>
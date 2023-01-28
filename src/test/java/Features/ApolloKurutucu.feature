@TumSenaryolar
Feature: ApolloKurutucu
  Author: Hayri Odabas
  Date: 2021
  NOT: Bu test scriptlerini calistirmadan once uzaktan kontrolun acik olduguna emin olun
  @ApolloKurutucu
  Scenario:001 Apollo Kurutucu cihaz ekranindaki bilgilerin kontrolu
    Given Uygulama resetlenir
    Given Logout yapilir
    Given Uygulamaya "hayri.odabas@arcelik.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    Given Uygulama resetlenir
    When "Apollo Pro D7S" detayina gidilir
    Then "Açık" elementini bekle
    Then "Oturma Odası" yazisi kontrol edilir
    Then "Kurutma Makinesi" yazisi kontrol edilir
  @ApolloKurutucu
  Scenario:002 Apollo Kurutucu urunu on off etme kontrolleri
    Given Uygulama resetlenir
    When "Apollo Pro D7S" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    Then Favoriler bolumunun var oldugunu kontrol et
    Then Program secimi bolumnun var oldugunu kontrol et
    Then Sihirbaz bolumnun var oldugunu kontrol et
    Then Program secenekleri bolumunun olmadigi kontrol edilir
    And Cihaz off konumuna getirilir
  @ApolloKurutucu
  Scenario:003 Apollo Kurutucu uygulamayi arkaplana atip acma kontrolleri
    Given Uygulama resetlenir
    When "Apollo Pro D7S" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Uygulamayi 30 saniye arka planda tut sonra aktive et
    Then "Açık" elementini bekle
    Then Favoriler bolumunun var oldugunu kontrol et
    Then Program secimi bolumnun var oldugunu kontrol et
    Then Sihirbaz bolumnun var oldugunu kontrol et
    Then Program secenekleri bolumunun olmadigi kontrol edilir
    And Cihaz off konumuna getirilir
  @ApolloKurutucu
  Scenario:004 Apollo Kurutucu uygulamayi kill edip actiktan sonra urun detay ekraninin kontrolleri
    Given Uygulama resetlenir
    When "Apollo Pro D7S" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Uygulama kill edilip 30 sn sonra acilir
    When "Apollo Pro D7S" detayina gidilir
    Then "Açık" elementini bekle
    Then Favoriler bolumunun var oldugunu kontrol et
    Then Program secimi bolumnun var oldugunu kontrol et
    Then Sihirbaz bolumnun var oldugunu kontrol et
    Then Program secenekleri bolumunun olmadigi kontrol edilir
    And Cihaz off konumuna getirilir
  @ApolloKurutucu
  Scenario:005 Apollo Kurutucu program secim ekranina girme ve secim ekrani bilgilerinin kontrolleri
    Given Uygulama resetlenir
    When "Apollo Pro D7S" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Program secimine basilir
    And Program secimi "Pamuklu Ekonomik" olarak ayarlanir
    And Kirisik onleme "120" olarak ayarlanir
    Then "Pamuklu Ekonomik" program adi kontrol edilir
    Then "Kırışık Önleme" yazisi kontrol edilir
    Then Program toplam suresi "03:17" kontrol edilir
    Then Zaman erteleme butonu kontrol edilir
    And navigasyondan geri tusuna basilir
    And Cihaz off konumuna getirilir
  @ApolloKurutucu
  Scenario:006 Apollo Kurutucu program calisma ekranina ekranina girme ve calisma ekrani kontrolleri
    Given Uygulama resetlenir
    When "Apollo Pro D7S" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Program secimine basilir
    And Program secimi "Pamuklu" olarak ayarlanir
    And Kurutma seviyesi "Ütü Kuruluğu" secilir
    Then Programi baslat butonuna basilir
    Then Uzaktan kontrol "Açık" texti kontrolu
    Then "Pamuklu" program adi kontrol edilir
    Then Program asamasi "Kurutuyor" texti kontrol edilir
    Then Pause butonu kontrol edilir
    Then El ikonu kontrol edilir
    Then Program kalan sure "02:25" kontrol edilir
    And Program bekleme moduna alinir
    And Stop butonuna basilir
    And "Tamam" textine basilir
  @ApolloKurutucu
  Scenario:007 Apollo Kurutucu program pause ekranina girme ve pause ekrani kontrolleri
    Given Uygulama resetlenir
    When "Apollo Pro D7S" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Program secimine basilir
    And Program secimi "Pamuklu" olarak ayarlanir
    And Kurutma seviyesi "Ütü Kuruluğu" secilir
    Then Programi baslat butonuna basilir
    And Program bekleme moduna alinir
    Then Uzaktan kontrol "Açık" texti kontrolu
    Then "Pamuklu" program adi kontrol edilir
    Then Program asamasi "Program duraklatıldı" texti kontrol edilir
    Then Stop ikonu kontrol edilir
    Then Play ikonu kontrol edilir
    Then El ikonu kontrol edilir
    And Stop butonuna basilir
    And "Tamam" textine basilir
  @ApolloKurutucu
  Scenario:008 Apollo Kurutucu program pause ekraninda degisikliklik yapma kontrolleri
    Given Uygulama resetlenir
    When "Apollo Pro D7S" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Program secimine basilir
    And Program secimi "Pamuklu" olarak ayarlanir
    And Kurutma seviyesi "Ütü Kuruluğu" secilir
    Then Programi baslat butonuna basilir
    And Program bekleme moduna alinir
    Then El ikonuna basilir
    And Program secimi "Karma" olarak ayarlanir
    Then Programi devam ettir butonuna basilir
    Then Uzaktan kontrol "Açık" texti kontrolu
    Then "Karma" program adi kontrol edilir
    Then Pause butonu kontrol edilir
    Then El ikonu kontrol edilir
    Then Program kalan sure "01:55" kontrol edilir
    And Program bekleme moduna alinir
    And Stop butonuna basilir
    And "Tamam" textine basilir
  @ApolloKurutucu
  Scenario:009 Apollo Kurutucu program iptali kontrolleri
    Given Uygulama resetlenir
    When "Apollo Pro D7S" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Program secimine basilir
    And Program secimi "Pamuklu" olarak ayarlanir
    And Kurutma seviyesi "Ütü Kuruluğu" secilir
    Then Programi baslat butonuna basilir
    And Program bekleme moduna alinir
    And Stop butonuna basilir
    And "Tamam" textine basilir
  @ApolloKurutucu
  Scenario:010 Apollo Kurutucu cihaz bilgilerinin kontrolleri
    Given Uygulama resetlenir
    When "Apollo Pro D7S" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    Then Cihaz bilgilerine tiklanir
    Then "CİHAZ KİMLİĞİ" yazisi kontrol edilir
    Then "Cylinda" markasi kontrol edilir
    Then "7188235060" Model numarasi kontrol edilir
    Then "F999930620489357431624" Digital kimlik no kontrol edilir
    Then "VERSİYON" yazisi kontrol edilir
    Then "0.1.8 / 0.2.16 / 3.6.39 / - / -" versiyon numarasi kontrol edilir
    Then navigasyondan geri tusuna basilir
    And Cihaz off konumuna getirilir
  @ApolloKurutucu
  Scenario:011 Apollo Kurutucu havlu programi indirme kontrolleri
    Given Uygulama resetlenir
    When "Apollo Pro D7S" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    Then Ayarlar menusune tiklanir
    Then Indirilen program yonetimine tiklanir
    Then Havlu programi secilir
    Then Program indir butonuna basilir
    Then Program indirildikten sonra tamam butonuna basilir
    And navigasyondan geri tusuna basilir
    And navigasyondan geri tusuna basilir
    Then Ayarlar menusune tiklanir
    Then Indirilen program yonetimine tiklanir
    Then Yorgan programi secilir
    Then Program indir butonuna basilir
    Then Program indirildikten sonra tamam butonuna basilir
    And navigasyondan geri tusuna basilir
    And navigasyondan geri tusuna basilir
    And Cihaz off konumuna getirilir
  @ApolloKurutucu
  Scenario:012 Apollo Kurutucu wizard kontrolleri
    Given Uygulama resetlenir
    When "Apollo Pro D7S" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    Then Sihirbaz secimine tiklanir
    Then Sentetik secimi yapilir
    Then Yuk secin butonuna basilir
    Then Orta secimine basilir
    Then Kurutma seviyesi secin butonuna basilir
    Then Utu kurulugu secimi yapilir
    Then Size uygun programlar secimi yapilir
    Then "Size Uygun Programlar" yazisi kontrol edilir
    Then "Önerilen Program" yazisi kontrol edilir
    Then "Sentetik| Kurutma Seviyesi: Ütü Kuruluğu" yazisi kontrol edilir
    Then 10 saniye bekle
    Then Programi baslat butonuna basilir
    Then "Sentetik" program adi kontrol edilir
    Then Program asamasi "Kurutuyor" texti kontrol edilir
    Then El ikonu kontrol edilir
    And Program bekleme moduna alinir
    And Stop butonuna basilir
    And "Tamam" textine basilir
  @ApolloKurutucu
  Scenario:013 Apollo Kurutucu sihirbaz uzerinden program baslatilarak pause ekraninda degisikliklik yapma kontrolleri
    Given Uygulama resetlenir
    When "Apollo Pro D7S" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    Then Sihirbaz secimine tiklanir
    Then Sentetik secimi yapilir
    Then Yuk secin butonuna basilir
    Then Orta secimine basilir
    Then Kurutma seviyesi secin butonuna basilir
    And Ek kuruluk seviyesi secilir
    Then Size uygun programlar secimi yapilir
    Then "Size Uygun Programlar" yazisi kontrol edilir
    Then "Önerilen Program" yazisi kontrol edilir
    Then "Sentetik| Kurutma Seviyesi: Ek kuruluk" yazisi kontrol edilir
    Then 10 saniye bekle
    Then Programi baslat butonuna basilir
    Then "Sentetik" program adi kontrol edilir
    Then Program kalan sure "01:20" kontrol edilir
    And Program bekleme moduna alinir
    Then 10 saniye bekle
    And El ikonuna basilir
    And Program secimi "Karma" olarak ayarlanir
    Then Programi devam ettir butonuna basilir
    Then Uzaktan kontrol "Açık" texti kontrolu
    Then "Karma" program adi kontrol edilir
    Then Pause butonu kontrol edilir
    Then El ikonu kontrol edilir
    Then Program kalan sure "01:55" kontrol edilir
    And Program bekleme moduna alinir
    And Stop butonuna basilir
    And "Tamam" textine basilir
  @ApolloKurutucu
  Scenario:014 Apollo kurutucu calisma esnasinda uygulama arka plana alinip acildiginda calisma program ekrani kontrol edilmesi
    Given Uygulama resetlenir
    When "Apollo Pro D7S" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Program secimine basilir
    And Program secimi "Yünlü Kurutma" olarak ayarlanir
    Then Programi baslat butonuna basilir
    Then "Yünlü Kurutma" program adi kontrol edilir
    Then Program kalan sure "02:55" kontrol edilir
    And Uygulamayi 30 saniye arka planda tut sonra aktive et
    Then "Yünlü Kurutma" program adi kontrol edilir
    Then Program kalan sure "02:54" kontrol edilir
    And Program bekleme moduna alinir
    And Stop butonuna basilir
    And "Tamam" textine basilir
  @ApolloKurutucu
  Scenario:015 Apollo kurutucu calisma esnasinda uygulama kill edilip acildiginda calisma program ekrani kontrol edilmesi
    Given Uygulama resetlenir
    When "Apollo Pro D7S" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Program secimine basilir
    And Program secimi "Yünlü Kurutma" olarak ayarlanir
    Then Programi baslat butonuna basilir
    Then "Yünlü Kurutma" program adi kontrol edilir
    Then Program kalan sure "02:55" kontrol edilir
    And Uygulama kill edilip 30 sn sonra acilir
    When "Apollo Pro D7S" detayina gidilir
    Then "Açık" elementini bekle
    Then "Yünlü Kurutma" program adi kontrol edilir
    Then Program kalan sure "02:54" kontrol edilir
    And Program bekleme moduna alinir
    And Stop butonuna basilir
    And "Tamam" textine basilir
  @ApolloKurutucu
  Scenario:016 Apollo kurutucu son calistirilan programin cihaz gecmisine eklenmesinin kontrol edilmesi
    Given Uygulama resetlenir
    When "Apollo Pro D7S" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Program secimine basilir
    And Program secimi "Hijyenik Havalandırma" olarak ayarlanir
    And Programi baslat butonuna basilir
    Then "Hijyenik Havalandırma" program adi kontrol edilir
    Then Program kalan sure "02:00" kontrol edilir
    And 30 saniye bekle
    And Program bekleme moduna alinir
    And Stop butonuna basilir
    And "Tamam" textine basilir
    Given Uygulama resetlenir
    When "Apollo Pro D7S" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Ekrani "up" kaydir
    Then "Hijyenik Havalandırma" icerigi konrol edilir
    And Ekrani "up" kaydir
    And Cihaz off konumuna getirilir
  @ApolloKurutucu
  Scenario:017 Apollo kurutucu favori olusturma favori program baslatma ve favori silme kontrol edilmesi
    Given Uygulama resetlenir
    When "Apollo Pro D7S" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Program secimine basilir
    And Program secimi "Sentetik" olarak ayarlanir
    And Kalp ikonuna basilir
    And Favori ekle ekraninda program adi "Kurutma Pr" yazilir
    And "OK" butonuna basilir
    And navigasyondan geri tusuna basilir
    And Cihaz on konumuna getirilir
    And Favoriler butonuna basilir
    Then "Kurutma Pr" yazisi kontrol edilir
    Then Favori program "Sentetik | Kurutma Seviyesi: Dolap Kuruluğu, Kırışık Önleme: 120 Süre: 01:10" adi kontrol edilir
    And Favori ekraninda Play butonuna basilir
    Then "Sentetik" yazisi kontrol edilir
    Then "Dolap Kuruluğu" yazisi kontrol edilir
    Then Program toplam suresi "01:10" kontrol edilir
    Then Programi baslat butonuna basilir
    Then "Sentetik" program adi kontrol edilir
    Then Program kalan sure "01:10" kontrol edilir
    And Program bekleme moduna alinir
    And Stop butonuna basilir
    And "Tamam" textine basilir
    And Uygulama resetlenir
    When "Apollo Pro D7S" detayina gidilir
    Then "Açık" elementini bekle
    And Favoriler butonuna basilir
    And Arti butonuna basilir
    And Cop kovasi ikonuna basilir
    And Favori silme tamam butonuna basilir
    And navigasyondan geri tusuna basilir
    And Cihaz off konumuna getirilir

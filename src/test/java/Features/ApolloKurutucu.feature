@TumSenaryolar
Feature: ApolloKurutucu
  Author: Hayri Odabas
  Date: 2021
  NOT: Bu test scriptlerini calistirmadan once uzaktan kontrolun acik olduguna emin olun
  @ApolloKurutucu
  Scenario:001 Apollo Kurutucu cihaz ekranindaki bilgilerin kontrolu
    * Uygulama resetlenir
    * Logout yapilir
    * Uygulamaya "hayri.odabas@arcelik.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    * Uygulama resetlenir
    * "Apollo Pro D7S" detayina gidilir
    * "Açık" elementini bekle
    * "Oturma Odası" yazisi kontrol edilir
    * "Kurutma Makinesi" yazisi kontrol edilir
  @ApolloKurutucu
  Scenario:002 Apollo Kurutucu urunu on off etme kontrolleri
    * Uygulama resetlenir
    * "Apollo Pro D7S" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Favoriler bolumunun var oldugunu kontrol et
    * Program secimi bolumnun var oldugunu kontrol et
    * Sihirbaz bolumnun var oldugunu kontrol et
    * Program secenekleri bolumunun olmadigi kontrol edilir
    * Cihaz off konumuna getirilir
  @ApolloKurutucu
  Scenario:003 Apollo Kurutucu uygulamayi arkaplana atip acma kontrolleri
    * Uygulama resetlenir
    * "Apollo Pro D7S" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * "Açık" elementini bekle
    * Favoriler bolumunun var oldugunu kontrol et
    * Program secimi bolumnun var oldugunu kontrol et
    * Sihirbaz bolumnun var oldugunu kontrol et
    * Program secenekleri bolumunun olmadigi kontrol edilir
    * Cihaz off konumuna getirilir
  @ApolloKurutucu
  Scenario:004 Apollo Kurutucu uygulamayi kill edip actiktan sonra urun detay ekraninin kontrolleri
    * Uygulama resetlenir
    * "Apollo Pro D7S" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Uygulama kill edilip 30 sn sonra acilir
    * "Apollo Pro D7S" detayina gidilir
    * "Açık" elementini bekle
    * Favoriler bolumunun var oldugunu kontrol et
    * Program secimi bolumnun var oldugunu kontrol et
    * Sihirbaz bolumnun var oldugunu kontrol et
    * Program secenekleri bolumunun olmadigi kontrol edilir
    * Cihaz off konumuna getirilir
  @ApolloKurutucu
  Scenario:005 Apollo Kurutucu program secim ekranina girme ve secim ekrani bilgilerinin kontrolleri
    * Uygulama resetlenir
    * "Apollo Pro D7S" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Program secimine basilir
    * Program secimi "Pamuklu Ekonomik" olarak ayarlanir
    * Kirisik onleme "120" olarak ayarlanir
    * "Pamuklu Ekonomik" program adi kontrol edilir
    * "Kırışık Önleme" yazisi kontrol edilir
    * Program toplam suresi "03:17" kontrol edilir
    * Zaman erteleme butonu kontrol edilir
    * navigasyondan geri tusuna basilir
    * Cihaz off konumuna getirilir
  @ApolloKurutucu
  Scenario:006 Apollo Kurutucu program calisma ekranina ekranina girme ve calisma ekrani kontrolleri
    * Uygulama resetlenir
    * "Apollo Pro D7S" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Program secimine basilir
    * Program secimi "Pamuklu" olarak ayarlanir
    * Kurutma seviyesi "Ütü Kuruluğu" secilir
    * Programi baslat butonuna basilir
    * Uzaktan kontrol "Açık" texti kontrolu
    * "Pamuklu" program adi kontrol edilir
    * Program asamasi "Kurutuyor" texti kontrol edilir
    * Pause butonu kontrol edilir
    * El ikonu kontrol edilir
    * Program kalan sure "02:25" kontrol edilir
    * Program bekleme moduna alinir
    * Stop butonuna basilir
    * "Tamam" textine basilir
  @ApolloKurutucu
  Scenario:007 Apollo Kurutucu program pause ekranina girme ve pause ekrani kontrolleri
    * Uygulama resetlenir
    * "Apollo Pro D7S" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Program secimine basilir
    * Program secimi "Pamuklu" olarak ayarlanir
    * Kurutma seviyesi "Ütü Kuruluğu" secilir
    * Programi baslat butonuna basilir
    * Program bekleme moduna alinir
    * Uzaktan kontrol "Açık" texti kontrolu
    * "Pamuklu" program adi kontrol edilir
    * Program asamasi "Program duraklatıldı" texti kontrol edilir
    * Stop ikonu kontrol edilir
    * Play ikonu kontrol edilir
    * El ikonu kontrol edilir
    * Stop butonuna basilir
    * "Tamam" textine basilir
  @ApolloKurutucu
  Scenario:008 Apollo Kurutucu program pause ekraninda degisikliklik yapma kontrolleri
    * Uygulama resetlenir
    * "Apollo Pro D7S" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Program secimine basilir
    * Program secimi "Pamuklu" olarak ayarlanir
    * Kurutma seviyesi "Ütü Kuruluğu" secilir
    * Programi baslat butonuna basilir
    * Program bekleme moduna alinir
    * El ikonuna basilir
    * Program secimi "Karma" olarak ayarlanir
    * Programi devam ettir butonuna basilir
    * Uzaktan kontrol "Açık" texti kontrolu
    * "Karma" program adi kontrol edilir
    * Pause butonu kontrol edilir
    * El ikonu kontrol edilir
    * Program kalan sure "01:55" kontrol edilir
    * Program bekleme moduna alinir
    * Stop butonuna basilir
    * "Tamam" textine basilir
  @ApolloKurutucu
  Scenario:009 Apollo Kurutucu program iptali kontrolleri
    * Uygulama resetlenir
    * "Apollo Pro D7S" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Program secimine basilir
    * Program secimi "Pamuklu" olarak ayarlanir
    * Kurutma seviyesi "Ütü Kuruluğu" secilir
    * Programi baslat butonuna basilir
    * Program bekleme moduna alinir
    * Stop butonuna basilir
    * "Tamam" textine basilir
  @ApolloKurutucu
  Scenario:010 Apollo Kurutucu cihaz bilgilerinin kontrolleri
    * Uygulama resetlenir
    * "Apollo Pro D7S" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Cihaz bilgilerine tiklanir
    * "CİHAZ KİMLİĞİ" yazisi kontrol edilir
    * "Cylinda" markasi kontrol edilir
    * "7188235060" Model numarasi kontrol edilir
    * "F999930620489357431624" Digital kimlik no kontrol edilir
    * "VERSİYON" yazisi kontrol edilir
    * "0.1.8 / 0.2.16 / 3.6.39 / - / -" versiyon numarasi kontrol edilir
    * navigasyondan geri tusuna basilir
    * Cihaz off konumuna getirilir
  @ApolloKurutucu
  Scenario:011 Apollo Kurutucu havlu programi indirme kontrolleri
    * Uygulama resetlenir
    * "Apollo Pro D7S" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Ayarlar menusune tiklanir
    * Indirilen program yonetimine tiklanir
    * Havlu programi secilir
    * Program indir butonuna basilir
    * Program indirildikten sonra tamam butonuna basilir
    * navigasyondan geri tusuna basilir
    * navigasyondan geri tusuna basilir
    * Ayarlar menusune tiklanir
    * Indirilen program yonetimine tiklanir
    * Yorgan programi secilir
    * Program indir butonuna basilir
    * Program indirildikten sonra tamam butonuna basilir
    * navigasyondan geri tusuna basilir
    * navigasyondan geri tusuna basilir
    * Cihaz off konumuna getirilir
  @ApolloKurutucu
  Scenario:012 Apollo Kurutucu wizard kontrolleri
    * Uygulama resetlenir
    * "Apollo Pro D7S" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Sihirbaz secimine tiklanir
    * Sentetik secimi yapilir
    * Yuk secin butonuna basilir
    * Orta secimine basilir
    * Kurutma seviyesi secin butonuna basilir
    * Utu kurulugu secimi yapilir
    * Size uygun programlar secimi yapilir
    * "Size Uygun Programlar" yazisi kontrol edilir
    * "Önerilen Program" yazisi kontrol edilir
    * "Sentetik| Kurutma Seviyesi: Ütü Kuruluğu" yazisi kontrol edilir
    * 10 saniye bekle
    * Programi baslat butonuna basilir
    * "Sentetik" program adi kontrol edilir
    * Program asamasi "Kurutuyor" texti kontrol edilir
    * El ikonu kontrol edilir
    * Program bekleme moduna alinir
    * Stop butonuna basilir
    * "Tamam" textine basilir
  @ApolloKurutucu
  Scenario:013 Apollo Kurutucu sihirbaz uzerinden program baslatilarak pause ekraninda degisikliklik yapma kontrolleri
    * Uygulama resetlenir
    * "Apollo Pro D7S" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Sihirbaz secimine tiklanir
    * Sentetik secimi yapilir
    * Yuk secin butonuna basilir
    * Orta secimine basilir
    * Kurutma seviyesi secin butonuna basilir
    * Ek kuruluk seviyesi secilir
    * Size uygun programlar secimi yapilir
    * "Size Uygun Programlar" yazisi kontrol edilir
    * "Önerilen Program" yazisi kontrol edilir
    * "Sentetik| Kurutma Seviyesi: Ek kuruluk" yazisi kontrol edilir
    * 10 saniye bekle
    * Programi baslat butonuna basilir
    * "Sentetik" program adi kontrol edilir
    * Program kalan sure "01:20" kontrol edilir
    * Program bekleme moduna alinir
    * 10 saniye bekle
    * El ikonuna basilir
    * Program secimi "Karma" olarak ayarlanir
    * Programi devam ettir butonuna basilir
    * Uzaktan kontrol "Açık" texti kontrolu
    * "Karma" program adi kontrol edilir
    * Pause butonu kontrol edilir
    * El ikonu kontrol edilir
    * Program kalan sure "01:55" kontrol edilir
    * Program bekleme moduna alinir
    * Stop butonuna basilir
    * "Tamam" textine basilir
  @ApolloKurutucu
  Scenario:014 Apollo kurutucu calisma esnasinda uygulama arka plana alinip acildiginda calisma program ekrani kontrol edilmesi
    * Uygulama resetlenir
    * "Apollo Pro D7S" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Program secimine basilir
    * Program secimi "Yünlü Kurutma" olarak ayarlanir
    * Programi baslat butonuna basilir
    * "Yünlü Kurutma" program adi kontrol edilir
    * Program kalan sure "02:55" kontrol edilir
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * "Yünlü Kurutma" program adi kontrol edilir
    * Program kalan sure "02:54" kontrol edilir
    * Program bekleme moduna alinir
    * Stop butonuna basilir
    * "Tamam" textine basilir
  @ApolloKurutucu
  Scenario:015 Apollo kurutucu calisma esnasinda uygulama kill edilip acildiginda calisma program ekrani kontrol edilmesi
    * Uygulama resetlenir
    * "Apollo Pro D7S" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Program secimine basilir
    * Program secimi "Yünlü Kurutma" olarak ayarlanir
    * Programi baslat butonuna basilir
    * "Yünlü Kurutma" program adi kontrol edilir
    * Program kalan sure "02:55" kontrol edilir
    * Uygulama kill edilip 30 sn sonra acilir
    * "Apollo Pro D7S" detayina gidilir
    * "Açık" elementini bekle
    * "Yünlü Kurutma" program adi kontrol edilir
    * Program kalan sure "02:54" kontrol edilir
    * Program bekleme moduna alinir
    * Stop butonuna basilir
    * "Tamam" textine basilir
  @ApolloKurutucu
  Scenario:016 Apollo kurutucu son calistirilan programin cihaz gecmisine eklenmesinin kontrol edilmesi
    * Uygulama resetlenir
    * "Apollo Pro D7S" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Program secimine basilir
    * Program secimi "Hijyenik Havalandırma" olarak ayarlanir
    * Programi baslat butonuna basilir
    * "Hijyenik Havalandırma" program adi kontrol edilir
    * Program kalan sure "02:00" kontrol edilir
    * 30 saniye bekle
    * Program bekleme moduna alinir
    * Stop butonuna basilir
    * "Tamam" textine basilir
    * Uygulama resetlenir
    * "Apollo Pro D7S" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Ekrani "up" kaydir
    * "Hijyenik Havalandırma" icerigi konrol edilir
    * Ekrani "up" kaydir
    * Cihaz off konumuna getirilir
  @ApolloKurutucu
  Scenario:017 Apollo kurutucu favori olusturma favori program baslatma ve favori silme kontrol edilmesi
    * Uygulama resetlenir
    * "Apollo Pro D7S" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Program secimine basilir
    * Program secimi "Sentetik" olarak ayarlanir
    * Kalp ikonuna basilir
    * Favori ekle ekraninda program adi "Kurutma Pr" yazilir
    * "OK" butonuna basilir
    * navigasyondan geri tusuna basilir
    * Cihaz on konumuna getirilir
    * Favoriler butonuna basilir
    * "Kurutma Pr" yazisi kontrol edilir
    * Favori program "Sentetik | Kurutma Seviyesi: Dolap Kuruluğu, Kırışık Önleme: 120 Süre: 01:10" adi kontrol edilir
    * Favori ekraninda Play butonuna basilir
    * "Sentetik" yazisi kontrol edilir
    * "Dolap Kuruluğu" yazisi kontrol edilir
    * Program toplam suresi "01:10" kontrol edilir
    * Programi baslat butonuna basilir
    * "Sentetik" program adi kontrol edilir
    * Program kalan sure "01:10" kontrol edilir
    * Program bekleme moduna alinir
    * Stop butonuna basilir
    * "Tamam" textine basilir
    * Uygulama resetlenir
    * "Apollo Pro D7S" detayina gidilir
    * "Açık" elementini bekle
    * Favoriler butonuna basilir
    * Arti butonuna basilir
    * Cop kovasi ikonuna basilir
    * Favori silme tamam butonuna basilir
    * navigasyondan geri tusuna basilir
    * Cihaz off konumuna getirilir

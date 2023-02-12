@TumSenaryolar
Feature: RappleFirin
  Author: Hayri Odabas
  Date: 2021
  NOT: Bu test scriptlerini calistirmadan once uzaktan kontrolun acik olduguna emin olun
  @RappleFirin
  Scenario:001 Cihazlarim menusunden Rapple Firin cihaz ekraninin kontrolu
    * Uygulama resetlenir
    * Logout yapilir
    * Uygulamaya "hayri.odabas@arcelik.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    * Uygulama resetlenir
    * "Rapple Firin" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * "Rapple Firin" yazisi kontrol edilir
    * "Oturma Odası" elementini bekle
    * "Oturma Odası" yazisi kontrol edilir
    * Uzaktan kontrol "Açık" texti kontrolu
    * "Fırın" urun adi kontrol edilir
    * Cihaz off konumuna getirilir
    * 3 saniye bekle
  @RappleFirin
  Scenario:002 Rapple firin cihazlar ekraninda standby tusu ile uzaktan acma komutu gonder kontrolu
    * Uygulama resetlenir
    * "Rapple Firin" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Favoriler bolumunun var oldugunu kontrol et
    * Program secimi bolumnun var oldugunu kontrol et
    * Hazir Tarifler bolumun var oldugunu kontrol et
    * Cihaz off konumuna getirilir
    * 3 saniye bekle
  @RappleFirin
  Scenario:003 Rapple firin ekraninda uygulamayi arka plana atip geri cagirma kontrolleri
    * Uygulama resetlenir
    * "Rapple Firin" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Uygulamayi 10 saniye arka planda tut sonra aktive et
    * Favoriler bolumunun var oldugunu kontrol et
    * Program secimi bolumnun var oldugunu kontrol et
    * Hazir Tarifler bolumun var oldugunu kontrol et
    * Cihaz off konumuna getirilir
    * 3 saniye bekle
  @RappleFirin
  Scenario:004 Rapple firin ekraninda telefon ekranini kill edilip tekrar acma kontrolleri
    * Uygulama resetlenir
    * "Rapple Firin" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Uygulama kill edilip 30 sn sonra acilir
    * "Rapple Firin" detayina gidilir
    * "Açık" elementini bekle
    * Favoriler bolumunun var oldugunu kontrol et
    * Program secimi bolumnun var oldugunu kontrol et
    * Hazir Tarifler bolumun var oldugunu kontrol et
    * Cihaz off konumuna getirilir
    * 3 saniye bekle
  @RappleFirin
  Scenario:005 Rapple firin ekraninda calisma modu secim ekranina girildiginin kontrolleri
    * Uygulama resetlenir
    * "Rapple Firin" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Program secimine basilir
    * 3 saniye bekle
    * "Program" yazisi kontrol edilir
    * "Statik" yazisi kontrol edilir
    * "Sıcaklık" yazisi kontrol edilir
    * "200 °C" yazisi kontrol edilir
    * Program kalan sure "00:00" kontrol edilir
    * "PROGRAMI BAŞLAT" yazisi kontrol edilir
    * navigasyondan geri tusuna basilir
    * Cihaz off konumuna getirilir
    * 3 saniye bekle
  @RappleFirin
  Scenario:006 Rapple firin program baslatma secim kontrolleri
    * Uygulama resetlenir
    * "Rapple Firin" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Program secimine basilir
    * Program secimi "Izgara+Fan" olarak ayarlanir
    * 15 saniye bekle
    * Sicaklik "70  santigrat derece" olarak ayarlanir
    * 15 saniye bekle
    * Sure "01" olarak setlenir
    * 15 saniye bekle
    * Programi baslat butonuna basilir
    * 20 saniye bekle
    * Uzaktan kontrol "Açık" texti kontrolu
    * "Izgara+Fan" program adi kontrol edilir
    * Program asamasi "Pişiriliyor" texti kontrol edilir
    * Pause butonu kontrol edilir
    * El ikonu kontrol edilir
    * Program kalan sure "01:00" kontrol edilir
    * Program bekleme moduna alinir
    * 10 saniye bekle
    * Stop butonuna basilir
    * "Tamam" butonuna basilir
  @RappleFirin
  Scenario:007 Rapple firin baslatilan programin bekletildigi durum kontrolleri
    * Uygulama resetlenir
    * "Rapple Firin" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Program secimine basilir
    * 10 saniye bekle
    * Sure "01" olarak setlenir
    * 15 saniye bekle
    * Programi baslat butonuna basilir
    * 20 saniye bekle
    * Program bekleme moduna alinir
    * 10 saniye bekle
    * Program play butonuna basilir
    * 10 saniye bekle
    * Program bekleme moduna alinir
    * Uzaktan kontrol "Açık" texti kontrolu
    * Program asamasi "Durduruldu" texti kontrol edilir
    * El ikonu kontrol edilir
    * Stop butonuna basilir
    * "Tamam" butonuna basilir
  @RappleFirin
  Scenario:008 Rapple firin program bekletidigi durumlarda degisiklik kontrolleri
    * Uygulama resetlenir
    * "Rapple Firin" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Program secimine basilir
    * 10 saniye bekle
    * Sure "01" olarak setlenir
    * 15 saniye bekle
    * Programi baslat butonuna basilir
    * 20 saniye bekle
    * Program bekleme moduna alinir
    * 10 saniye bekle
    * El ikonuna basilir
    * 10 saniye bekle
    * Program secimi "Izgara+Fan" olarak ayarlanir
    * 30 saniye bekle
    * Sicaklik "70  santigrat derece" olarak ayarlanir
    * 10 saniye bekle
    * Program devam butonuna basilir
    * 10 saniye bekle
    * Uzaktan kontrol "Açık" texti kontrolu
    * "Izgara+Fan" program adi kontrol edilir
    * Program asamasi "Pişiriliyor" texti kontrol edilir
    * Pause butonu kontrol edilir
    * El ikonu kontrol edilir
    * Program kalan sure "01:00" kontrol edilir
    * Program bekleme moduna alinir
    * 10 saniye bekle
    * Stop butonuna basilir
    * "Tamam" butonuna basilir
  @RappleFirin
  Scenario:009 Rapple firin program durdurma degisiklik kontrolleri
    * Uygulama resetlenir
    * "Rapple Firin" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Program secimine basilir
    * 10 saniye bekle
    * Sure "01" olarak setlenir
    * 15 saniye bekle
    * Programi baslat butonuna basilir
    * 20 saniye bekle
    * Program bekleme moduna alinir
    * 10 saniye bekle
    * Program asamasi "Durduruldu" texti kontrol edilir
    * Stop butonuna basilir
    * "Tamam" butonuna basilir
  @RappleFirin
  Scenario:010 Rapple firin cihaz bilgileri kontrolleri
    * Uygulama resetlenir
    * "Rapple Firin" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz bilgilerine tiklanir
    * 10 saniye bekle
    * "CİHAZ KİMLİĞİ" yazisi kontrol edilir
    * "Arçelik" markasi kontrol edilir
    * "7757782987" Model numarasi kontrol edilir
    * "F999975815155213373546" Digital kimlik no kontrol edilir
    * "VERSİYON" yazisi kontrol edilir
    * 25 saniye bekle
    * "6.58.0 / 0.5.17 / 3.6.31 / - / -" versiyon numarasi kontrol edilir
  @RappleFirin
  Scenario:011 Rapple firin kapi acik bildirimi on yapiplip kill etme kontrolleri
    * Uygulama resetlenir
    * "Rapple Firin" detayina gidilir
    * "Açık" elementini bekle
    * Ayarlar alanina tiklanir
    * Bildirim tercihlerine gidilir
    * Firin kapak acik bildirimi aktif edilir
    * "Kaydet" butonuna basilir
    * "TAMAM" butonuna basilir
    * Uygulama kill edilip 30 sn sonra acilir
    * 5 saniye bekle
    * "Rapple Firin" detayina gidilir
    * "Açık" elementini bekle
    * 10 saniye bekle
    * Ayarlar alanina tiklanir
    * Bildirim tercihlerine gidilir
    * Firin kapak acik bildirimi aktif kontrolu
    * Firin kapak acik bildirimi off yapilir
    * 3 saniye bekle
    * "Kaydet" butonuna basilir
    * "TAMAM" butonuna basilir
    * Firin kapak acik bildirimi kapali kontrolu
  @RappleFirin
  Scenario:012 Rapple Firin calisma ekraninda uygulamanin arka plana atilip tekrar acilmasi kontrolleri
    * Uygulama resetlenir
    * "Rapple Firin" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Program secimine basilir
    * Program secimi "Izgara" olarak ayarlanir
    * 15 saniye bekle
    * Sicaklik "70  santigrat derece" olarak ayarlanir
    * 15 saniye bekle
    * Sure "01" olarak setlenir
    * 15 saniye bekle
    * Programi baslat butonuna basilir
    * 30 saniye bekle
    * "01:00" yazisi kontrol edilir
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * 10 saniye bekle
    * "00:59" yazisi kontrol edilir
    * "Izgara" yazisi kontrol edilir
    * Program bekleme moduna alinir
    * 10 saniye bekle
    * Stop butonuna basilir
    * "Tamam" butonuna basilir
  @RappleFirin
  Scenario:013 Rapple firin oturma odasina tasinip geri alinmasi kontrolleri
    * Uygulama resetlenir
    * "Rapple Firin" detayina gidilir
    * "Açık" elementini bekle
    * Firini mutfak odasina tasi
    * 3 saniye bekle
    * Uygulama resetlenir
    * Mutfak odasina gidilir
    * "Rapple Firin" detayina gidilir
    * "Açık" elementini bekle
    * Firini oturma odasina geri tasi
    * 3 saniye bekle
    * Uygulama resetlenir
    * "Rapple Firin" icerigi konrol edilir
  @RappleFirin
  Scenario:014 Rapple firin calisma esnasinda kill etme kontrolleri
    * Uygulama resetlenir
    * "Rapple Firin" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Program secimine basilir
    * Program secimi "Izgara" olarak ayarlanir
    * 15 saniye bekle
    * Sicaklik "70  santigrat derece" olarak ayarlanir
    * 15 saniye bekle
    * Sure "01" olarak setlenir
    * 15 saniye bekle
    * Programi baslat butonuna basilir
    * 30 saniye bekle
    * "01:00" yazisi kontrol edilir
    * Uygulama kill edilip 30 sn sonra acilir
    * 10 saniye bekle
    * "Rapple Firin" detayina gidilir
    * "Açık" elementini bekle
    #* 40 saniye bekle
    * "00:59" yazisi kontrol edilir
    * "Izgara" yazisi kontrol edilir
    * Program bekleme moduna alinir
    * 10 saniye bekle
    * Stop butonuna basilir
    * "Tamam" butonuna basilir
  @RappleFirin
  Scenario:015 Rapple firin favori secimi yapilmasi navigasyondan geri tusuna basilir
    * Uygulama resetlenir
    * "Rapple Firin" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Program secimine basilir
    * 15 saniye bekle
    * Program secimi "Pizza" olarak ayarlanir
    * 15 saniye bekle
    * Sicaklik "70  santigrat derece" olarak ayarlanir
    * 15 saniye bekle
    * Sure "01" olarak setlenir
    * 15 saniye bekle
    * Kalp ikonuna basilir
    * 3 saniye bekle
    * Favori ekle ekraninda program adi "My Pizza" yazilir
    * "OK" butonuna basilir
    * 3 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * Cihaz on konumuna getirilir
    * Favoriler butonuna basilir
    * "My Pizza" yazisi kontrol edilir
    * Favori ekraninda Play butonuna basilir
    * 20 saniye bekle
    * Sure "01" olarak setlenir
    * Programi baslat butonuna basilir
    * 10 saniye bekle
    * "Pizza" yazisi kontrol edilir
    * "01:00" yazisi kontrol edilir
    * 40 saniye bekle
    * Program asamasi "Pişiriliyor" texti kontrol edilir
    * 3 saniye bekle
    * Program bekleme moduna alinir
    * 10 saniye bekle
    * Stop butonuna basilir
    * 10 saniye bekle
    * "Tamam" butonuna basilir
    * 10 saniye bekle
    * Uygulama resetlenir
    * "Rapple Firin" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Favoriler butonuna basilir
    * 3 saniye bekle
    * Arti butonuna basilir
    * 3 saniye bekle
    * Cop kovasi ikonuna basilir
    * 3 saniye bekle
    * Favori silme tamam butonuna basilir
    * 10 saniye bekle
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
    * Cihaz off konumuna getirilir
  @RappleFirin
  Scenario:016 Rapple Firin son calistirilan programin cihaz gecmisinde gosterilmesi
    * Uygulama resetlenir
    * "Rapple Firin" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Program secimine basilir
    * 10 saniye bekle
    * Program secimi "Küçük Izgara" olarak ayarlanir
    * 15 saniye bekle
    * Sicaklik "70  santigrat derece" olarak ayarlanir
    * 15 saniye bekle
    * Sure "01" olarak setlenir
    * 15 saniye bekle
    * Programi baslat butonuna basilir
    * 10 saniye bekle
    * Program bekleme moduna alinir
    * 10 saniye bekle
    * Stop butonuna basilir
    * 10 saniye bekle
    * "Tamam" butonuna basilir
    * 5 saniye bekle
    * Uygulama resetlenir
    * "Rapple Firin" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Ekrani "down" kaydir
    * "Küçük Izgara" icerigi konrol edilir
  @RappleFirin
  Scenario:017 Rapple firin cihaz ayarlarinda Parlaklik ve Tus sesi ayarlarinin degistirilmesi
    * Uygulama resetlenir
    * "Rapple Firin" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Ayarlar alanina tiklanir
    * "Cihaz Ayarları" butonuna basilir
    * 5 saniye bekle
    * Parlaklik degeri full yapilir
    * 5 saniye bekle
    * "Düşük" butonuna basilir
    * 5 saniye bekle
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
    * Uygulama kill edilip 30 sn sonra acilir
    * 10 saniye bekle
    * "Rapple Firin" detayina gidilir
    * "Açık" elementini bekle
    * Ayarlar alanina tiklanir
    * 10 saniye bekle
    * "Cihaz Ayarları" butonuna basilir
    * 10 saniye bekle
    * Parlaklik degerinin bir oldugu kontrol edilir
    * Tus sesinin dusuk oldugu kontrol edilir
    * 10 saniye bekle
    * Parlaklik degeri sifir yapilir
    * 10 saniye bekle
    * "Yüksek" butonuna basilir
    * 5 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * navigasyondan geri tusuna basilir
  @RappleFirin
  Scenario:018 Rapple firin süre girilmeden program baslatması durumunda uyarı mesajı çıkması kontrolu
    * Uygulama resetlenir
    * "Rapple Firin" detayina gidilir
    * "Açık" elementini bekle
    * Uzaktan kontrol "Açık" texti kontrolu
    * Cihaz off ise standby tusuna basarak on konumuna getirilir
    * 5 saniye bekle
    * Program secimine basilir
    * 5 saniye bekle
    * Programi baslat butonuna basilir
    * 3 saniye bekle
    * "Pişirme süresi pişirme sırasında uygulamadan 00:00 olarak ayarlanamaz." yazisi kontrol edilir
    * "TAMAM" butonuna basilir
    * 3 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
    * 5 saniye bekle
  @RappleFirin
  Scenario:019 Rapple firin cihaz ekranından ok tuşu ile yemek tarifleri menüsüne erisim
    * Uygulama resetlenir
    * "Rapple Firin" detayina gidilir
    * "Açık" elementini bekle
    * Uzaktan kontrol "Açık" texti kontrolu
    * Cihaz off ise standby tusuna basarak on konumuna getirilir
    * 3 saniye bekle
    * Ekrani "up" kaydir
    * "YEMEK TARİFLERİ" yazisi kontrol edilir
    * 3 saniye bekle
    * Cihaz Ekraninda Yemek tarifleri ok butonuna basilir
    * 3 saniye bekle
    * "Damak Tadınıza Özel Tarifler" yazisi kontrol edilir
    * Tum tarifler butonuna basilir
    * 10 saniye bekle
#    * "Fırında Kumpir" texti bulunup kontrol edilir
#    * "Fırında Kumpir" elementi sayfada bulunur
    * "Fırında Kumpir" texti sayfa kaydirmadan bulunur
    * "Fırında Kumpir" butonuna basilir
    * 3 saniye bekle
    * "Fırında Kumpir" yazisi kontrol edilir
    * "Bundan daha kolayı yok. Bu lezzetli tarif zaman ve emekten tasarruf etmenizi sağlayacak!" yazisi kontrol edilir
    * "Malzemeler (4)" yazisi kontrol edilir
    * 5 saniye bekle
  @RappleFirin
  Scenario:020 Rapple firin cihaz ekranından ilk tarifin üzerine basarak tarife erişim
    * Uygulama resetlenir
    * "Rapple Firin" detayina gidilir
    * "Açık" elementini bekle
    * Uzaktan kontrol "Açık" texti kontrolu
    * Cihaz off ise standby tusuna basarak on konumuna getirilir
    * 3 saniye bekle
    * Ekrani "up" kaydir
    * "YEMEK TARİFLERİ" yazisi kontrol edilir
    * 3 saniye bekle
    * Cihaz Ekraninda Yemek tarifleri ok butonuna basilir
    * 3 saniye bekle
    * "Damak Tadınıza Özel Tarifler" yazisi kontrol edilir
    * Tum tarifler butonuna basilir
    * 3 saniye bekle
    * Cihaz Ekranında İlk Yemek tarifine basilir
    * 3 saniye bekle
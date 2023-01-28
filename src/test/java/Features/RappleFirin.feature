@TumSenaryolar
Feature: RappleFirin
  Author: Hayri Odabas
  Date: 2021
  NOT: Bu test scriptlerini calistirmadan once uzaktan kontrolun acik olduguna emin olun
  @RappleFirin
  Scenario:001 Cihazlarim menusunden Rapple Firin cihaz ekraninin kontrolu
    Given Uygulama resetlenir
    Given Logout yapilir
    Given Uygulamaya "hayri.odabas@arcelik.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    Given Uygulama resetlenir
    When "Rapple Firin" detayina gidilir
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    Then "Rapple Firin" yazisi kontrol edilir
    When "Oturma Odası" elementini bekle
    Then "Oturma Odası" yazisi kontrol edilir
    Then Uzaktan kontrol "Açık" texti kontrolu
    Then "Fırın" urun adi kontrol edilir
    And Cihaz off konumuna getirilir
    And 3 saniye bekle
  @RappleFirin
  Scenario:002 Rapple firin cihazlar ekraninda standby tusu ile uzaktan acma komutu gonder kontrolu
    Given Uygulama resetlenir
    When "Rapple Firin" detayina gidilir
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    Then Favoriler bolumunun var oldugunu kontrol et
    Then Program secimi bolumnun var oldugunu kontrol et
    Then Hazir Tarifler bolumun var oldugunu kontrol et
    And Cihaz off konumuna getirilir
    And 3 saniye bekle
  @RappleFirin
  Scenario:003 Rapple firin ekraninda uygulamayi arka plana atip geri cagirma kontrolleri
    Given Uygulama resetlenir
    When "Rapple Firin" detayina gidilir
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Uygulamayi 10 saniye arka planda tut sonra aktive et
    Then Favoriler bolumunun var oldugunu kontrol et
    Then Program secimi bolumnun var oldugunu kontrol et
    Then Hazir Tarifler bolumun var oldugunu kontrol et
    And Cihaz off konumuna getirilir
    And 3 saniye bekle
  @RappleFirin
  Scenario:004 Rapple firin ekraninda telefon ekranini kill edilip tekrar acma kontrolleri
    Given Uygulama resetlenir
    When "Rapple Firin" detayina gidilir
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Uygulama kill edilip 30 sn sonra acilir
    When "Rapple Firin" detayina gidilir
    When "Açık" elementini bekle
    Then Favoriler bolumunun var oldugunu kontrol et
    Then Program secimi bolumnun var oldugunu kontrol et
    Then Hazir Tarifler bolumun var oldugunu kontrol et
    And Cihaz off konumuna getirilir
    And 3 saniye bekle
  @RappleFirin
  Scenario:005 Rapple firin ekraninda calisma modu secim ekranina girildiginin kontrolleri
    Given Uygulama resetlenir
    When "Rapple Firin" detayina gidilir
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Program secimine basilir
    And 3 saniye bekle
    Then "Program" yazisi kontrol edilir
    Then "Statik" yazisi kontrol edilir
    Then "Sıcaklık" yazisi kontrol edilir
    Then "200 °C" yazisi kontrol edilir
    Then Program kalan sure "00:00" kontrol edilir
    Then "PROGRAMI BAŞLAT" yazisi kontrol edilir
    And navigasyondan geri tusuna basilir
    And Cihaz off konumuna getirilir
    And 3 saniye bekle
  @RappleFirin
  Scenario:006 Rapple firin program baslatma secim kontrolleri
    Given Uygulama resetlenir
    When "Rapple Firin" detayina gidilir
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Program secimine basilir
    And Program secimi "Izgara+Fan" olarak ayarlanir
    And 15 saniye bekle
    And Sicaklik "70  santigrat derece" olarak ayarlanir
    And 15 saniye bekle
    And Sure "01" olarak setlenir
    And 15 saniye bekle
    And Programi baslat butonuna basilir
    And 20 saniye bekle
    Then Uzaktan kontrol "Açık" texti kontrolu
    Then "Izgara+Fan" program adi kontrol edilir
    Then Program asamasi "Pişiriliyor" texti kontrol edilir
    Then Pause butonu kontrol edilir
    Then El ikonu kontrol edilir
    Then Program kalan sure "01:00" kontrol edilir
    And Program bekleme moduna alinir
    When 10 saniye bekle
    And Stop butonuna basilir
    And "Tamam" butonuna basilir
  @RappleFirin
  Scenario:007 Rapple firin baslatilan programin bekletildigi durum kontrolleri
    Given Uygulama resetlenir
    When "Rapple Firin" detayina gidilir
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Program secimine basilir
    And 10 saniye bekle
    And Sure "01" olarak setlenir
    And 15 saniye bekle
    And Programi baslat butonuna basilir
    And 20 saniye bekle
    And Program bekleme moduna alinir
    When 10 saniye bekle
    And Program play butonuna basilir
    And 10 saniye bekle
    And Program bekleme moduna alinir
    Then Uzaktan kontrol "Açık" texti kontrolu
    Then Program asamasi "Durduruldu" texti kontrol edilir
    Then El ikonu kontrol edilir
    And Stop butonuna basilir
    And "Tamam" butonuna basilir
  @RappleFirin
  Scenario:008 Rapple firin program bekletidigi durumlarda degisiklik kontrolleri
    Given Uygulama resetlenir
    When "Rapple Firin" detayina gidilir
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Program secimine basilir
    And 10 saniye bekle
    And Sure "01" olarak setlenir
    And 15 saniye bekle
    And Programi baslat butonuna basilir
    And 20 saniye bekle
    And Program bekleme moduna alinir
    When 10 saniye bekle
    Then El ikonuna basilir
    And 10 saniye bekle
    And Program secimi "Izgara+Fan" olarak ayarlanir
    And 30 saniye bekle
    And Sicaklik "70  santigrat derece" olarak ayarlanir
    And 10 saniye bekle
    And Program devam butonuna basilir
    And 10 saniye bekle
    Then Uzaktan kontrol "Açık" texti kontrolu
    Then "Izgara+Fan" program adi kontrol edilir
    Then Program asamasi "Pişiriliyor" texti kontrol edilir
    Then Pause butonu kontrol edilir
    Then El ikonu kontrol edilir
    Then Program kalan sure "01:00" kontrol edilir
    And Program bekleme moduna alinir
    When 10 saniye bekle
    And Stop butonuna basilir
    And "Tamam" butonuna basilir
  @RappleFirin
  Scenario:009 Rapple firin program durdurma degisiklik kontrolleri
    Given Uygulama resetlenir
    When "Rapple Firin" detayina gidilir
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Program secimine basilir
    And 10 saniye bekle
    And Sure "01" olarak setlenir
    And 15 saniye bekle
    And Programi baslat butonuna basilir
    And 20 saniye bekle
    And Program bekleme moduna alinir
    When 10 saniye bekle
    Then Program asamasi "Durduruldu" texti kontrol edilir
    And Stop butonuna basilir
    And "Tamam" butonuna basilir
  @RappleFirin
  Scenario:010 Rapple firin cihaz bilgileri kontrolleri
    Given Uygulama resetlenir
    When "Rapple Firin" detayina gidilir
    When "Açık" elementini bekle
    And Cihaz bilgilerine tiklanir
    And 10 saniye bekle
    Then "CİHAZ KİMLİĞİ" yazisi kontrol edilir
    Then "Arçelik" markasi kontrol edilir
    Then "7757782987" Model numarasi kontrol edilir
    Then "F999975815155213373546" Digital kimlik no kontrol edilir
    Then "VERSİYON" yazisi kontrol edilir
    When 25 saniye bekle
    Then "6.58.0 / 0.5.17 / 3.6.31 / - / -" versiyon numarasi kontrol edilir
  @RappleFirin
  Scenario:011 Rapple firin kapi acik bildirimi on yapiplip kill etme kontrolleri
    Given Uygulama resetlenir
    When "Rapple Firin" detayina gidilir
    When "Açık" elementini bekle
    And Ayarlar alanina tiklanir
    And Bildirim tercihlerine gidilir
    And Firin kapak acik bildirimi aktif edilir
    And "Kaydet" butonuna basilir
    And "TAMAM" butonuna basilir
    And Uygulama kill edilip 30 sn sonra acilir
    And 5 saniye bekle
    When "Rapple Firin" detayina gidilir
    When "Açık" elementini bekle
    When 10 saniye bekle
    And Ayarlar alanina tiklanir
    And Bildirim tercihlerine gidilir
    Then Firin kapak acik bildirimi aktif kontrolu
    And Firin kapak acik bildirimi off yapilir
    And 3 saniye bekle
    And "Kaydet" butonuna basilir
    And "TAMAM" butonuna basilir
    Then Firin kapak acik bildirimi kapali kontrolu
  @RappleFirin
  Scenario:012 Rapple Firin calisma ekraninda uygulamanin arka plana atilip tekrar acilmasi kontrolleri
    Given Uygulama resetlenir
    When "Rapple Firin" detayina gidilir
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Program secimine basilir
    And Program secimi "Izgara" olarak ayarlanir
    And 15 saniye bekle
    And Sicaklik "70  santigrat derece" olarak ayarlanir
    And 15 saniye bekle
    And Sure "01" olarak setlenir
    And 15 saniye bekle
    And Programi baslat butonuna basilir
    And 30 saniye bekle
    Then "01:00" yazisi kontrol edilir
    And Uygulamayi 30 saniye arka planda tut sonra aktive et
    And 10 saniye bekle
    Then "00:59" yazisi kontrol edilir
    Then "Izgara" yazisi kontrol edilir
    And Program bekleme moduna alinir
    When 10 saniye bekle
    And Stop butonuna basilir
    And "Tamam" butonuna basilir
  @RappleFirin
  Scenario:013 Rapple firin oturma odasina tasinip geri alinmasi kontrolleri
    Given Uygulama resetlenir
    When "Rapple Firin" detayina gidilir
    When "Açık" elementini bekle
    And Firini mutfak odasina tasi
    And 3 saniye bekle
    Given Uygulama resetlenir
    And Mutfak odasina gidilir
    When "Rapple Firin" detayina gidilir
    When "Açık" elementini bekle
    And Firini oturma odasina geri tasi
    And 3 saniye bekle
    Given Uygulama resetlenir
    Then "Rapple Firin" icerigi konrol edilir
  @RappleFirin
  Scenario:014 Rapple firin calisma esnasinda kill etme kontrolleri
    Given Uygulama resetlenir
    When "Rapple Firin" detayina gidilir
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Program secimine basilir
    And Program secimi "Izgara" olarak ayarlanir
    And 15 saniye bekle
    And Sicaklik "70  santigrat derece" olarak ayarlanir
    And 15 saniye bekle
    And Sure "01" olarak setlenir
    And 15 saniye bekle
    And Programi baslat butonuna basilir
    And 30 saniye bekle
    Then "01:00" yazisi kontrol edilir
    And Uygulama kill edilip 30 sn sonra acilir
    And 10 saniye bekle
    When "Rapple Firin" detayina gidilir
    When "Açık" elementini bekle
    #When 40 saniye bekle
    Then "00:59" yazisi kontrol edilir
    Then "Izgara" yazisi kontrol edilir
    And Program bekleme moduna alinir
    When 10 saniye bekle
    And Stop butonuna basilir
    And "Tamam" butonuna basilir
  @RappleFirin
  Scenario:015 Rapple firin favori secimi yapilmasi navigasyondan geri tusuna basilir
    Given Uygulama resetlenir
    When "Rapple Firin" detayina gidilir
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Program secimine basilir
    And 15 saniye bekle
    And Program secimi "Pizza" olarak ayarlanir
    And 15 saniye bekle
    And Sicaklik "70  santigrat derece" olarak ayarlanir
    And 15 saniye bekle
    And Sure "01" olarak setlenir
    And 15 saniye bekle
    And Kalp ikonuna basilir
    And 3 saniye bekle
    And Favori ekle ekraninda program adi "My Pizza" yazilir
    And "OK" butonuna basilir
    And 3 saniye bekle
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
    And Cihaz on konumuna getirilir
    And Favoriler butonuna basilir
    Then "My Pizza" yazisi kontrol edilir
    And Favori ekraninda Play butonuna basilir
    And 20 saniye bekle
    And Sure "01" olarak setlenir
    And Programi baslat butonuna basilir
    And 10 saniye bekle
    Then "Pizza" yazisi kontrol edilir
    Then "01:00" yazisi kontrol edilir
    And 40 saniye bekle
    Then Program asamasi "Pişiriliyor" texti kontrol edilir
    And 3 saniye bekle
    And Program bekleme moduna alinir
    And 10 saniye bekle
    Then Stop butonuna basilir
    And 10 saniye bekle
    And "Tamam" butonuna basilir
    And 10 saniye bekle
    Then Uygulama resetlenir
    Then "Rapple Firin" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Favoriler butonuna basilir
    And 3 saniye bekle
    And Arti butonuna basilir
    And 3 saniye bekle
    And Cop kovasi ikonuna basilir
    And 3 saniye bekle
    And Favori silme tamam butonuna basilir
    And 10 saniye bekle
    And navigasyondan geri tusuna basilir
    And 5 saniye bekle
    And Cihaz off konumuna getirilir
  @RappleFirin
  Scenario:016 Rapple Firin son calistirilan programin cihaz gecmisinde gosterilmesi
    Given Uygulama resetlenir
    When "Rapple Firin" detayina gidilir
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Program secimine basilir
    And 10 saniye bekle
    And Program secimi "Küçük Izgara" olarak ayarlanir
    And 15 saniye bekle
    And Sicaklik "70  santigrat derece" olarak ayarlanir
    And 15 saniye bekle
    And Sure "01" olarak setlenir
    And 15 saniye bekle
    And Programi baslat butonuna basilir
    And 10 saniye bekle
    And Program bekleme moduna alinir
    And 10 saniye bekle
    Then Stop butonuna basilir
    And 10 saniye bekle
    And "Tamam" butonuna basilir
    And 5 saniye bekle
    Then Uygulama resetlenir
    When "Rapple Firin" detayina gidilir
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Ekrani "down" kaydir
    Then "Küçük Izgara" icerigi konrol edilir
  @RappleFirin
  Scenario:017 Rapple firin cihaz ayarlarinda Parlaklik ve Tus sesi ayarlarinin degistirilmesi
    Given Uygulama resetlenir
    When "Rapple Firin" detayina gidilir
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Ayarlar alanina tiklanir
    And "Cihaz Ayarları" butonuna basilir
    And 5 saniye bekle
    And Parlaklik degeri full yapilir
    And 5 saniye bekle
    And "Düşük" butonuna basilir
    And 5 saniye bekle
    And navigasyondan geri tusuna basilir
    And 5 saniye bekle
    And Uygulama kill edilip 30 sn sonra acilir
    And 10 saniye bekle
    When "Rapple Firin" detayina gidilir
    When "Açık" elementini bekle
    And Ayarlar alanina tiklanir
    And 10 saniye bekle
    And "Cihaz Ayarları" butonuna basilir
    And 10 saniye bekle
    Then Parlaklik degerinin bir oldugu kontrol edilir
    Then Tus sesinin dusuk oldugu kontrol edilir
    And 10 saniye bekle
    And Parlaklik degeri sifir yapilir
    And 10 saniye bekle
    And "Yüksek" butonuna basilir
    And 5 saniye bekle
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
    And navigasyondan geri tusuna basilir
  @RappleFirin
  Scenario:018 Rapple firin süre girilmeden program baslatması durumunda uyarı mesajı çıkması kontrolu
    Given Uygulama resetlenir
    When "Rapple Firin" detayina gidilir
    When "Açık" elementini bekle
    Then Uzaktan kontrol "Açık" texti kontrolu
    And Cihaz off ise standby tusuna basarak on konumuna getirilir
    And 5 saniye bekle
    And Program secimine basilir
    And 5 saniye bekle
    And Programi baslat butonuna basilir
    And 3 saniye bekle
    And "Pişirme süresi pişirme sırasında uygulamadan 00:00 olarak ayarlanamaz." yazisi kontrol edilir
    And "TAMAM" butonuna basilir
    And 3 saniye bekle
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
    And Cihaz on ise standby tusuna basarak off konumuna getirilir
    And 5 saniye bekle
  @RappleFirin
  Scenario:019 Rapple firin cihaz ekranından ok tuşu ile yemek tarifleri menüsüne erisim
    Given Uygulama resetlenir
    When "Rapple Firin" detayina gidilir
    When "Açık" elementini bekle
    Then Uzaktan kontrol "Açık" texti kontrolu
    And Cihaz off ise standby tusuna basarak on konumuna getirilir
    And 3 saniye bekle
    And Ekrani "up" kaydir
    Then "YEMEK TARİFLERİ" yazisi kontrol edilir
    And 3 saniye bekle
    And Cihaz Ekraninda Yemek tarifleri ok butonuna basilir
    And 3 saniye bekle
    Then "Damak Tadınıza Özel Tarifler" yazisi kontrol edilir
    And Tum tarifler butonuna basilir
    And 10 saniye bekle
#    And "Fırında Kumpir" texti bulunup kontrol edilir
#    And "Fırında Kumpir" elementi sayfada bulunur
    And "Fırında Kumpir" texti sayfa kaydirmadan bulunur
    And "Fırında Kumpir" butonuna basilir
    And 3 saniye bekle
    Then "Fırında Kumpir" yazisi kontrol edilir
    Then "Bundan daha kolayı yok. Bu lezzetli tarif zaman ve emekten tasarruf etmenizi sağlayacak!" yazisi kontrol edilir
    Then "Malzemeler (4)" yazisi kontrol edilir
    And 5 saniye bekle
  @RappleFirin
  Scenario:020 Rapple firin cihaz ekranından ilk tarifin üzerine basarak tarife erişim
    Given Uygulama resetlenir
    When "Rapple Firin" detayina gidilir
    When "Açık" elementini bekle
    Then Uzaktan kontrol "Açık" texti kontrolu
    And Cihaz off ise standby tusuna basarak on konumuna getirilir
    And 3 saniye bekle
    And Ekrani "up" kaydir
    Then "YEMEK TARİFLERİ" yazisi kontrol edilir
    And 3 saniye bekle
    And Cihaz Ekraninda Yemek tarifleri ok butonuna basilir
    And 3 saniye bekle
    Then "Damak Tadınıza Özel Tarifler" yazisi kontrol edilir
    And Tum tarifler butonuna basilir
    And 3 saniye bekle
    And Cihaz Ekranında İlk Yemek tarifine basilir
    And 3 saniye bekle
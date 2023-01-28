@TumSenaryolar
Feature: Vega Firin
  Author: Hayri Odabas
  Date: 2022
  NOT: Bu test scriptlerini calistirmadan once uzaktan kontrolun acik olduguna emin olun
  @VegaFirin
  Scenario:001 Cihazlarim menusunden Vega Firin cihaz ekraninin kontrolu
    Given Uygulama resetlenir
    Given 30 saniye bekle
    Given Logout yapilir
    Given Uygulamaya "mobilotomasyon1@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    Then "Vega Leisure" yazisi kontrol edilir
    When "Mutfak" elementini bekle
    Then "Mutfak" yazisi kontrol edilir
    Then Uzaktan kontrol "Açık" texti kontrolu
    Then "Fırın" urun adi kontrol edilir
    And "Arçelik" yazisi kontrol edilir
    And "Fırın" yazisi kontrol edilir
    And "PROGRAM SEÇENEKLERİ" yazisi kontrol edilir
    And "Favoriler" yazisi kontrol edilir
    And "Program Seçimi" yazisi kontrol edilir
    And "Hazır Tarifler" yazisi kontrol edilir
    And "CİHAZA TANIMLI KURALLAR" yazisi kontrol edilir
    And "Henüz kural oluşturmadınız." yazisi kontrol edilir
    Then Ekrani "up" kaydir
    Then "KURAL EKLE" yazisi kontrol edilir
    And "CİHAZ GEÇMİŞİ" yazisi kontrol edilir
    And "YEMEK TARİFLERİ" yazisi kontrol edilir
    Then Ekrani "up" kaydir
    And "İPUÇLARI" yazisi kontrol edilir
  @VegaFirin
  Scenario:002 Vega firin cihazlar ekraninda standby tusu ile uzaktan acma komutu gonder kontrolu
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    Then Favoriler bolumunun var oldugunu kontrol et
    Then Program secimi bolumnun var oldugunu kontrol et
    Then Hazir Tarifler bolumun var oldugunu kontrol et
    And Cihaz off konumuna getirilir
  @VegaFirin
  Scenario:003 Vega firin ekraninda uygulamayi arka plana atip geri cagirma kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Uygulamayi 10 saniye arka planda tut sonra aktive et
    Then Favoriler bolumunun var oldugunu kontrol et
    Then Program secimi bolumnun var oldugunu kontrol et
    Then Hazir Tarifler bolumun var oldugunu kontrol et
    And Cihaz off konumuna getirilir
  @VegaFirin
  Scenario:004 Vega firin ekraninda telefon ekranini kill edilip tekrar acma kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Uygulama kill edilip 30 sn sonra acilir
    And 10 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    Then Favoriler bolumunun var oldugunu kontrol et
    Then Program secimi bolumnun var oldugunu kontrol et
    Then Hazir Tarifler bolumun var oldugunu kontrol et
    And Cihaz off konumuna getirilir
  @VegaFirin
  Scenario:005 Vega firin ekraninda calisma modu secim ekranina girildiginin kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Program secimine basilir
    And 3 saniye bekle
    Then "Program" yazisi kontrol edilir
    Then "Sıcaklık" yazisi kontrol edilir
    Then "Raf Önerisi" yazisi kontrol edilir
    Then "°C" icerigi konrol edilir
    Then Program kalan sure "00:00" kontrol edilir
    Then "PROGRAMI BAŞLAT" yazisi kontrol edilir
    Then "ADIMLI PIŞIRME" yazisi kontrol edilir
    Then "BİTİŞ SAATİ" yazisi kontrol edilir
    And navigasyondan geri tusuna basilir
    And Cihaz off konumuna getirilir
  @VegaFirin
  Scenario:006 Vega firin program baslatma secim kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Program secimine basilir
    And Program secimi "Izgara+Fan" olarak ayarlanir
    And 15 saniye bekle
    And Sicaklik "70  santigrat derece" olarak ayarlanir
    And 15 saniye bekle
    And Raf onerisi "3. Raf" olarak ayarlanir
    And 15 saniye bekle
    And Sure "01" olarak setlenir
    And 15 saniye bekle
    And Programi baslat butonuna basilir
    And 20 saniye bekle
    Then Uzaktan kontrol "Açık" texti kontrolu
    Then "Izgara+Fan" program adi kontrol edilir
    Then On isitma adimi varsa atlanir
    And 10 saniye bekle
    Then Program asamasi "Ön ısıtma tamamlandı" texti kontrol edilir
    Then El ikonu kontrol edilir
    Then Program kalan sure "01:00" kontrol edilir
    And Vega firin stop butonuna basilir
    And 3 saniye bekle
    And "Tamam" butonuna basilir
    Then "CİHAZLAR" elementini bekle
    When "Safir Buzdolabi, , Seçmek için çift dokunun" detayina gidilir
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:007 Vega firin cihaz bilgileri kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And Cihaz bilgilerine tiklanir
    And 10 saniye bekle
    Then "CİHAZ KİMLİĞİ" yazisi kontrol edilir
    Then "MARKA" yazisi kontrol edilir
    Then "Arçelik" markasi kontrol edilir
    Then "MODEL" yazisi kontrol edilir
    Then "7757880110" Model numarasi kontrol edilir
    Then "DİJİTAL KİMLİK NO" yazisi kontrol edilir
    Then "F999914846106210596541" Digital kimlik no kontrol edilir
    Then "MAC ADRESİ" yazisi kontrol edilir
    Then "2C:9F:FB:2A:38:92" yazisi kontrol edilir
    Then Ekrani "up" kaydir
    Then "VERSİYON" yazisi kontrol edilir
    Then "YAZILIM" yazisi kontrol edilir
    Then "Ürün yazılımı güncel" yazisi kontrol edilir
    Then "GÜNCELLEME DETAYLARI" yazisi kontrol edilir
    When 20 saniye bekle
    Then "2.24.0 / 2.0.14 / 6.90.03" versiyon numarasi kontrol edilir
  @VegaFirin
  Scenario:008 Vega Firin calisma ekraninda uygulamanin arka plana atilip tekrar acilmasi kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Program secimine basilir
    And Program secimi "Izgara" olarak ayarlanir
    And 15 saniye bekle
    And Sicaklik "70  santigrat derece" olarak ayarlanir
    And 15 saniye bekle
    And Raf onerisi "4. Raf" olarak ayarlanir
    And 15 saniye bekle
    And Sure "01" olarak setlenir
    And 15 saniye bekle
    And Programi baslat butonuna basilir
    And 30 saniye bekle
    And Uygulamayi 30 saniye arka planda tut sonra aktive et
    And 10 saniye bekle
    Then On isitma adimi varsa atlanir
    And 10 saniye bekle
    Then El ikonu kontrol edilir
    Then "01:00" yazisi kontrol edilir
    Then "Izgara" yazisi kontrol edilir
    And Vega firin stop butonuna basilir
    And "Tamam" butonuna basilir
    Then "CİHAZLAR" elementini bekle
    When "Safir Buzdolabi, , Seçmek için çift dokunun" detayina gidilir
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:009 Vega firin oturma odasina tasinip geri alinmasi kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Urunu banyo odasina tasi
    And 3 saniye bekle
    Given Uygulama resetlenir
    And Banyo odasina gidilir
    When "Vega Leisure" detayina gidilir
    And Urunu oturma odasina geri tasi
    And 3 saniye bekle
    Given Uygulama resetlenir
    Then "Vega Leisure" icerigi konrol edilir
  @VegaFirin
  Scenario:010 Vega firin calisma esnasinda kill etme kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Program secimine basilir
    And Program secimi "Izgara" olarak ayarlanir
    And 15 saniye bekle
    And Sicaklik "70  santigrat derece" olarak ayarlanir
    And 15 saniye bekle
    And Raf onerisi "4. Raf" olarak ayarlanir
    And 15 saniye bekle
    And Sure "01" olarak setlenir
    And 15 saniye bekle
    And Programi baslat butonuna basilir
    And 30 saniye bekle
    Then "01:00" yazisi kontrol edilir
    And Uygulama kill edilip 30 sn sonra acilir
    And 10 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    When 10 saniye bekle
    Then "01:00" yazisi kontrol edilir
    Then "Izgara" yazisi kontrol edilir
    And Vega firin stop butonuna basilir
    And "Tamam" butonuna basilir
    Then "CİHAZLAR" elementini bekle
    When "Safir Buzdolabi, , Seçmek için çift dokunun" detayina gidilir
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:011 Vega firin favori program secimi yapilmasi ve favori programin baslatilmasi
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Program secimine basilir
    And 15 saniye bekle
    And Program secimi "Pizza" olarak ayarlanir
    And 15 saniye bekle
    And Sicaklik "70  santigrat derece" olarak ayarlanir
    And 15 saniye bekle
    And Raf onerisi "1 veya 3. Raf" olarak ayarlanir
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
    Then On isitma adimi varsa atlanir
    And 10 saniye bekle
    Then "Pizza" yazisi kontrol edilir
    Then "01:00" yazisi kontrol edilir
    And 55 saniye bekle
    Then Program asamasi "Pişiriliyor" texti kontrol edilir
    And 3 saniye bekle
    And Vega firin stop butonuna basilir
    And 10 saniye bekle
    And "Tamam" butonuna basilir
    And 10 saniye bekle
    When "Vega Leisure" detayina gidilir
    When "Açık" elementini bekle
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
  @VegaFirin
  Scenario:012 Vega Firin son calistirilan programin cihaz gecmisinde gosterilmesi
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Program secimine basilir
    And 10 saniye bekle
    And Program secimi "Izgara+Fan" olarak ayarlanir
    And 15 saniye bekle
    And Sicaklik "70  santigrat derece" olarak ayarlanir
    And 15 saniye bekle
    And Raf onerisi "3. Raf" olarak ayarlanir
    And 15 saniye bekle
    And Sure "01" olarak setlenir
    And 15 saniye bekle
    And Programi baslat butonuna basilir
    And 10 saniye bekle
    Then On isitma adimi varsa atlanir
    And 10 saniye bekle
    And Vega firin stop butonuna basilir
    And 10 saniye bekle
    And "Tamam" butonuna basilir
    And 20 saniye bekle
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Ekrani "Up" kaydir
    Then "Izgara+Fan" icerigi konrol edilir
  @VegaFirin
  Scenario:013 Vega Firin son calistirilan programin cihaz gecmisinden tekrar calistirilmesi
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    Then Ekrani "up" kaydir
    And Ekrani "up" kaydir
    Then Son calistirilan program play tusuna basilir
    And 5 saniye bekle
    And Programi baslat butonuna basilir
    And 10 saniye bekle
    Then On isitma adimi varsa atlanir
    And 20 saniye bekle
    Then "Izgara+Fan" program adi kontrol edilir
    And "70 °C" yazisi kontrol edilir
    And Program kalan sure "01:00" kontrol edilir
    And "Başlangıç Saati" yazisi kontrol edilir
    And "Kalan Süre" yazisi kontrol edilir
    And "Bitiş Saati" yazisi kontrol edilir
    And "AŞAMA: " yazisi kontrol edilir
    Then Program asamasi "Ön ısıtma tamamlandı" texti kontrol edilir
    And Vega firin stop butonuna basilir
    And 10 saniye bekle
    And "Tamam" butonuna basilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:014 Vega Firin son calistirilan program gecmis detayina girildiginin kontrolu
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    Then Ekrani "up" kaydir
    And Ekrani "up" kaydir
    And 3 saniye bekle
    Then "CİHAZ GEÇMİŞİ" butonuna basilir
    And 3 saniye bekle
    Then "Izgara+Fan" play tusuna basilir
    And 10 saniye bekle
    Then Appbar "Vega Leisure" texti kontrol edilir
    And Appbar subtitle "mutfak" texti kontrol edilir
    And "Program" yazisi kontrol edilir
    And "Sıcaklık" yazisi kontrol edilir
    And "Raf Önerisi" yazisi kontrol edilir
    And "Izgara+Fan" yazisi kontrol edilir
    And "70 °C" yazisi kontrol edilir
    And "3. Raf" yazisi kontrol edilir
    And "ADIMLI PIŞIRME" yazisi kontrol edilir
    And "Program Süresi" yazisi kontrol edilir
    And "01:00" yazisi kontrol edilir
    Then navigasyondan geri tusuna basilir
    Then Ekrani "down" kaydir
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir
    And 3 saniye bekle
  @VegaFirin
  Scenario:015 Vega firin süre girilmeden program baslatması durumunda uyarı mesajı çıkması kontrolu
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 5 saniye bekle
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
  @VegaFirin
  Scenario:016 Vega firin cihaz ekranından ok tuşu ile yemek tarifleri menüsüne erisim
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 5 saniye bekle
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
  @VegaFirin
  Scenario:017 Vega firin cihaz ekranından ilk tarifin üzerine basarak tarife erişim
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 5 saniye bekle
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
  @VegaFirin
  Scenario:018 Vega firin kapi acik bildirimi on yapiplip kill etme kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    When "Açık" elementini bekle
    And Ayarlar alanina tiklanir
    And Bildirim tercihlerine gidilir
    And Firin kapak acik bildirimi aktif edilir
    And "Kaydet" butonuna basilir
    And "TAMAM" butonuna basilir
    And Uygulama kill edilip 30 sn sonra acilir
    And 5 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    When 10 saniye bekle
    And Ayarlar alanina tiklanir
    And Bildirim tercihlerine gidilir
    Then Firin kapak acik bildirimi aktif kontrolu
    And Firin kapak acik bildirimi off yapilir
    And 3 saniye bekle
    And "Kaydet" butonuna basilir
    And "TAMAM" butonuna basilir
    Then Firin kapak acik bildirimi kapali kontrolu
    Then navigasyondan geri tusuna basilir
    Then navigasyondan geri tusuna basilir
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:019 Vega firin cihaz ayarlarinda icerik kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Ayarlar alanina tiklanir
    And 5 saniye bekle
    Then Appbar "Ayarlar" texti kontrol edilir
    Then Appbar subtitle "Vega Leisure" texti kontrol edilir
    Then "Uyarı Görüntüleme Ayarları" yazisi kontrol edilir
    And "Bildirim Ayarları" yazisi kontrol edilir
    And "Bekleme Ekranı Ayarları" yazisi kontrol edilir
    Then navigasyondan geri tusuna basilir
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:020 Vega firin uyari görüntüleme ayarlari icerik kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Ayarlar alanina tiklanir
    And 5 saniye bekle
    Then Appbar "Ayarlar" texti kontrol edilir
    Then Appbar subtitle "Vega Leisure" texti kontrol edilir
    Then "Uyarı Görüntüleme Ayarları" butonuna basilir
    Then 3 saniye bekle
    Then "Kapak açık" yazisi kontrol edilir
    Then navigasyondan geri tusuna basilir
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:021 Vega firin uyari görüntüleme ayarlari kapi acik off yapilip uygulama kill etme kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Ayarlar alanina tiklanir
    And 5 saniye bekle
    Then Appbar "Ayarlar" texti kontrol edilir
    Then Appbar subtitle "Vega Leisure" texti kontrol edilir
    Then "Uyarı Görüntüleme Ayarları" butonuna basilir
    Then 3 saniye bekle
    Then "Kapak açık" yazisi kontrol edilir
    Then "Kapak açık" bildirimi "0" yapilir
    And 10 saniye bekle
    And Uygulama kill edilip 30 sn sonra acilir
    And 5 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    When 10 saniye bekle
    And Ayarlar alanina tiklanir
    And 5 saniye bekle
    Then Appbar "Ayarlar" texti kontrol edilir
    Then Appbar subtitle "Vega Leisure" texti kontrol edilir
    Then "Uyarı Görüntüleme Ayarları" butonuna basilir
    Then 3 saniye bekle
    Then "Kapak açık" bildiriminin "0" oldugu kontrol edilir
    Then navigasyondan geri tusuna basilir
    Then navigasyondan geri tusuna basilir
    And Ayarlar alanina tiklanir
    And 5 saniye bekle
    Then Appbar "Ayarlar" texti kontrol edilir
    Then Appbar subtitle "Vega Leisure" texti kontrol edilir
    Then "Uyarı Görüntüleme Ayarları" butonuna basilir
    Then 3 saniye bekle
    Then "Kapak açık" yazisi kontrol edilir
    Then "Kapak açık" bildirimi "1" yapilir
    And 10 saniye bekle
    Then navigasyondan geri tusuna basilir
    Then navigasyondan geri tusuna basilir
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:022 Vega firin uyari görüntüleme ayarlari kapi acik off yapilip uygulama 30 saniye arka plana atip geri cagirma kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Ayarlar alanina tiklanir
    And 5 saniye bekle
    Then Appbar "Ayarlar" texti kontrol edilir
    Then Appbar subtitle "Vega Leisure" texti kontrol edilir
    Then "Uyarı Görüntüleme Ayarları" butonuna basilir
    Then 3 saniye bekle
    Then "Kapak açık" yazisi kontrol edilir
    Then "Kapak açık" bildirimi "0" yapilir
    And 10 saniye bekle
    And Uygulamayi 30 saniye arka planda tut sonra aktive et
    And 5 saniye bekle
    Then Appbar "Uyarı Görüntüleme Ayarları" texti kontrol edilir
    Then Appbar subtitle "Vega Leisure" texti kontrol edilir
    Then "Kapak açık" bildiriminin "0" oldugu kontrol edilir
    Then navigasyondan geri tusuna basilir
    Then navigasyondan geri tusuna basilir
    And Ayarlar alanina tiklanir
    And 5 saniye bekle
    Then Appbar "Ayarlar" texti kontrol edilir
    Then Appbar subtitle "Vega Leisure" texti kontrol edilir
    Then "Uyarı Görüntüleme Ayarları" butonuna basilir
    Then 3 saniye bekle
    Then "Kapak açık" yazisi kontrol edilir
    Then "Kapak açık" bildirimi "1" yapilir
    And 10 saniye bekle
    Then navigasyondan geri tusuna basilir
    Then navigasyondan geri tusuna basilir
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:023 Vega firin bildirim ayarlari icerik kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Ayarlar alanina tiklanir
    And 5 saniye bekle
    Then Appbar "Ayarlar" texti kontrol edilir
    Then Appbar subtitle "Vega Leisure" texti kontrol edilir
    Then "Bildirim Ayarları" butonuna basilir
    Then 3 saniye bekle
    Then "Yemeğiniz hazır. Afiyet olsun!" yazisi kontrol edilir
    Then "Kapak açık" yazisi kontrol edilir
    Then navigasyondan geri tusuna basilir
    Then navigasyondan geri tusuna basilir
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:024 Vega firin bildirim ayarlari kapi acik off yapilip uygulama kill etme kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Ayarlar alanina tiklanir
    And 5 saniye bekle
    Then Appbar "Ayarlar" texti kontrol edilir
    Then Appbar subtitle "Vega Leisure" texti kontrol edilir
    Then "Bildirim Ayarları" butonuna basilir
    Then 3 saniye bekle
    Then "Yemeğiniz hazır. Afiyet olsun!" bildirimi "0" yapilir
    And 3 saniye bekle
    Then "Kapak açık" bildirimi "1" yapilir
    And 3 saniye bekle
    And "Kaydet" butonuna basilir
    And 10 saniye bekle
    Then "TAMAM" butonuna basilir
    And 5 saniye bekle
    And Uygulama kill edilip 30 sn sonra acilir
    And 5 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    When 10 saniye bekle
    And Ayarlar alanina tiklanir
    And 5 saniye bekle
    Then Appbar "Ayarlar" texti kontrol edilir
    Then Appbar subtitle "Vega Leisure" texti kontrol edilir
    Then "Bildirim Ayarları" butonuna basilir
    Then 3 saniye bekle
    Then "Yemeğiniz hazır. Afiyet olsun!" bildiriminin "0" oldugu kontrol edilir
    Then "Kapak açık" bildiriminin "1" oldugu kontrol edilir
    Then navigasyondan geri tusuna basilir
    Then navigasyondan geri tusuna basilir
    And Ayarlar alanina tiklanir
    And 5 saniye bekle
    Then "Bildirim Ayarları" butonuna basilir
    Then 3 saniye bekle
    Then "Yemeğiniz hazır. Afiyet olsun!" bildirimi "1" yapilir
    And 3 saniye bekle
    Then "Kapak açık" bildirimi "0" yapilir
    And 3 saniye bekle
    And "Kaydet" butonuna basilir
    And 10 saniye bekle
    Then "TAMAM" butonuna basilir
    And 5 saniye bekle
    Then navigasyondan geri tusuna basilir
    Then navigasyondan geri tusuna basilir
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:025 Vega firin bildirim ayarlari kapi acik off yapilip uygulama 30 saniye arka plana atip geri cagirma kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Ayarlar alanina tiklanir
    And 5 saniye bekle
    Then Appbar "Ayarlar" texti kontrol edilir
    Then Appbar subtitle "Vega Leisure" texti kontrol edilir
    Then "Bildirim Ayarları" butonuna basilir
    Then 3 saniye bekle
    Then "Yemeğiniz hazır. Afiyet olsun!" bildirimi "0" yapilir
    And 3 saniye bekle
    Then "Kapak açık" bildirimi "1" yapilir
    And 3 saniye bekle
    And "Kaydet" butonuna basilir
    And 10 saniye bekle
    Then "TAMAM" butonuna basilir
    And 5 saniye bekle
    And Uygulamayi 30 saniye arka planda tut sonra aktive et
    And 5 saniye bekle
    Then Appbar "Bildirim Ayarları" texti kontrol edilir
    Then Appbar subtitle "Vega Leisure" texti kontrol edilir
    Then "Yemeğiniz hazır. Afiyet olsun!" bildiriminin "0" oldugu kontrol edilir
    Then "Kapak açık" bildiriminin "1" oldugu kontrol edilir
    Then navigasyondan geri tusuna basilir
    Then navigasyondan geri tusuna basilir
    And Ayarlar alanina tiklanir
    And 5 saniye bekle
    Then "Bildirim Ayarları" butonuna basilir
    Then 3 saniye bekle
    Then "Yemeğiniz hazır. Afiyet olsun!" bildirimi "1" yapilir
    And 3 saniye bekle
    Then "Kapak açık" bildirimi "0" yapilir
    And 3 saniye bekle
    And "Kaydet" butonuna basilir
    And 10 saniye bekle
    Then "TAMAM" butonuna basilir
    And 5 saniye bekle
    Then navigasyondan geri tusuna basilir
    Then navigasyondan geri tusuna basilir
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:026 Vega firin bekleme ekrani ayarlari icerik kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Ayarlar alanina tiklanir
    And 5 saniye bekle
    Then Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    Then Appbar subtitle "Vega Leisure" texti kontrol edilir
    Then "Bekleme Ekranı Ayarları" butonuna basilir
    Then 5 saniye bekle
    Then Bekleme Modu "Saat Göster" olarak seçilir
    Then "Bekleme Modu" yazisi kontrol edilir
    Then "SEÇINIZ" yazisi kontrol edilir
    Then "Bekleme Modu" yazisi kontrol edilir
    Then "Saat Göster" yazisi kontrol edilir
    Then "Bekleme modu süre seçimi" yazisi kontrol edilir
    Then "Saat Tipi" yazisi kontrol edilir
    Then "Analog Saat" yazisi kontrol edilir
    Then navigasyondan geri tusuna basilir
    Then navigasyondan geri tusuna basilir
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:027 Vega firin bekleme ekrani ayarlarida bekleme modu süre secimi degisimi sonrasi kill etme kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Ayarlar alanina tiklanir
    And 5 saniye bekle
    Then Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    Then Appbar subtitle "Vega Leisure" texti kontrol edilir
    Then "Bekleme Ekranı Ayarları" butonuna basilir
    Then 3 saniye bekle
    Then "Bekleme Modu" yazisi kontrol edilir
    Then "SEÇINIZ" yazisi kontrol edilir
    Then "Bekleme Modu" yazisi kontrol edilir
    Then "Saat Göster" yazisi kontrol edilir
    Then "Bekleme modu süre seçimi" yazisi kontrol edilir
    Then "Saat Tipi" yazisi kontrol edilir
    Then "Analog Saat" yazisi kontrol edilir
    Then Bekleme suresi 120 dakika yapilir
    And 5 saniye bekle
    And Uygulama kill edilip 30 sn sonra acilir
    And 5 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Ayarlar alanina tiklanir
    And 5 saniye bekle
    Then Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    Then Appbar subtitle "Vega Leisure" texti kontrol edilir
    Then "Bekleme Ekranı Ayarları" butonuna basilir
    Then 3 saniye bekle
    Then "Bekleme Modu" yazisi kontrol edilir
    Then "SEÇINIZ" yazisi kontrol edilir
    Then "Bekleme Modu" yazisi kontrol edilir
    Then "Saat Göster" yazisi kontrol edilir
    Then "Bekleme modu süre seçimi" yazisi kontrol edilir
    Then "Saat Tipi" yazisi kontrol edilir
    Then "Analog Saat" yazisi kontrol edilir
    Then Bekleme suresinin 120 dakika oldugu kontrol edilir
    Then navigasyondan geri tusuna basilir
    Then navigasyondan geri tusuna basilir
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:028 Vega firin bekleme ekrani ayarlarida bekleme modu süre secimi degisimi sonrasi arka plana atma kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Ayarlar alanina tiklanir
    And 5 saniye bekle
    Then Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    Then Appbar subtitle "Vega Leisure" texti kontrol edilir
    Then "Bekleme Ekranı Ayarları" butonuna basilir
    Then 3 saniye bekle
    Then "Bekleme Modu" yazisi kontrol edilir
    Then "SEÇINIZ" yazisi kontrol edilir
    Then "Bekleme Modu" yazisi kontrol edilir
    Then "Saat Göster" yazisi kontrol edilir
    Then "Bekleme modu süre seçimi" yazisi kontrol edilir
    Then "Saat Tipi" yazisi kontrol edilir
    Then "Analog Saat" yazisi kontrol edilir
    Then Bekleme suresi sifirlanir
    And 5 saniye bekle
    And Uygulamayi 30 saniye arka planda tut sonra aktive et
    And 5 saniye bekle
    Then Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    Then Appbar subtitle "Vega Leisure" texti kontrol edilir
    Then "Bekleme Ekranı Ayarları" butonuna basilir
    Then 3 saniye bekle
    Then "Bekleme Modu" yazisi kontrol edilir
    Then "SEÇINIZ" yazisi kontrol edilir
    Then "Bekleme Modu" yazisi kontrol edilir
    Then "Saat Göster" yazisi kontrol edilir
    Then "Bekleme modu süre seçimi" yazisi kontrol edilir
    Then "Saat Tipi" yazisi kontrol edilir
    Then "Analog Saat" yazisi kontrol edilir
    Then Bekleme suresinin sifirlandigi kontrol edilir
    Then navigasyondan geri tusuna basilir
    Then navigasyondan geri tusuna basilir
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:029 Vega firin bekleme ekrani ayarlarida bekleme modu ekrani kapat uygulama kill etme kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Ayarlar alanina tiklanir
    And 5 saniye bekle
    Then Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    Then Appbar subtitle "Vega Leisure" texti kontrol edilir
    Then "Bekleme Ekranı Ayarları" butonuna basilir
    Then 5 saniye bekle
    Then Bekleme Modu "Ekranı Kapat" olarak seçilir
    Then 3 saniye bekle
    Then "SEÇINIZ" yazisi kontrol edilir
    Then "Bekleme Modu" yazisi kontrol edilir
    Then "Saat Tipi" yazisinin olmadigi kontrol edilir
    Then "Bekleme modu süre seçimi" yazisinin olmadigi kontrol edilir
    Then "BİR FOTOĞRAF DAHA EKLE" yazisinin olmadigi kontrol edilir
    And Uygulama kill edilip 30 sn sonra acilir
    And 5 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Ayarlar alanina tiklanir
    And 5 saniye bekle
    Then Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    Then Appbar subtitle "Vega Leisure" texti kontrol edilir
    Then "Bekleme Ekranı Ayarları" butonuna basilir
    Then 5 saniye bekle
    Then "SEÇINIZ" yazisi kontrol edilir
    Then "Bekleme Modu" yazisi kontrol edilir
    Then "Saat Tipi" yazisinin olmadigi kontrol edilir
    Then "Bekleme modu süre seçimi" yazisinin olmadigi kontrol edilir
    Then "BİR FOTOĞRAF DAHA EKLE" yazisinin olmadigi kontrol edilir
    Then navigasyondan geri tusuna basilir
    Then navigasyondan geri tusuna basilir
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:030 Vega firin bekleme ekrani ayarlarida bekleme modu ekrani kapat uygulama arka alana atma kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Ayarlar alanina tiklanir
    And 5 saniye bekle
    Then Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    Then Appbar subtitle "Vega Leisure" texti kontrol edilir
    Then "Bekleme Ekranı Ayarları" butonuna basilir
    Then 5 saniye bekle
    Then Bekleme Modu "Ekranı Kapat" olarak seçilir
    Then 3 saniye bekle
    Then "SEÇINIZ" yazisi kontrol edilir
    Then "Bekleme Modu" yazisi kontrol edilir
    Then "Saat Tipi" yazisinin olmadigi kontrol edilir
    Then "Bekleme modu süre seçimi" yazisinin olmadigi kontrol edilir
    Then "BİR FOTOĞRAF DAHA EKLE" yazisinin olmadigi kontrol edilir
    And 5 saniye bekle
    And Uygulamayi 30 saniye arka planda tut sonra aktive et
    And 5 saniye bekle
    Then Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    Then Appbar subtitle "Vega Leisure" texti kontrol edilir
    Then "Bekleme Ekranı Ayarları" butonuna basilir
    Then 5 saniye bekle
    Then "SEÇINIZ" yazisi kontrol edilir
    Then "Bekleme Modu" yazisi kontrol edilir
    Then "Saat Tipi" yazisinin olmadigi kontrol edilir
    Then "Bekleme modu süre seçimi" yazisinin olmadigi kontrol edilir
    Then "BİR FOTOĞRAF DAHA EKLE" yazisinin olmadigi kontrol edilir
    Then navigasyondan geri tusuna basilir
    Then navigasyondan geri tusuna basilir
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:031 Vega firin bekleme ekrani ayarlari bekleme modu fotograflari goster icerik kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Ayarlar alanina tiklanir
    And 5 saniye bekle
    Then Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    Then Appbar subtitle "Vega Leisure" texti kontrol edilir
    Then "Bekleme Ekranı Ayarları" butonuna basilir
    Then 5 saniye bekle
    Then Bekleme Modu "Fotoğrafları Göster" olarak seçilir
    Then "Bekleme Modu" yazisi kontrol edilir
    Then "SEÇINIZ" yazisi kontrol edilir
    Then "Bekleme Modu" yazisi kontrol edilir
    Then "Fotoğraflar " yazisi icerdigi kontrol edilir
    Then "Fotoğrafları Göster" yazisi kontrol edilir
    Then "Bekleme modu süre seçimi" yazisi kontrol edilir
    Then "BIR FOTOĞRAF DAHA EKLE" yazisi kontrol edilir
    Then navigasyondan geri tusuna basilir
    Then navigasyondan geri tusuna basilir
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:032 Vega firin bekleme ekrani ayarlari bekleme modu fotograflari goster kill etme kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Ayarlar alanina tiklanir
    And 5 saniye bekle
    Then Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    Then Appbar subtitle "Vega Leisure" texti kontrol edilir
    Then "Bekleme Ekranı Ayarları" butonuna basilir
    Then 5 saniye bekle
    Then Bekleme Modu "Fotoğrafları Göster" olarak seçilir
    And 5 saniye bekle
    And Uygulama kill edilip 30 sn sonra acilir
    And 5 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Ayarlar alanina tiklanir
    And 5 saniye bekle
    Then Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    Then Appbar subtitle "Vega Leisure" texti kontrol edilir
    Then "Bekleme Ekranı Ayarları" butonuna basilir
    Then 5 saniye bekle
    Then "Bekleme Modu" yazisi kontrol edilir
    Then "SEÇINIZ" yazisi kontrol edilir
    Then "Bekleme Modu" yazisi kontrol edilir
    Then "Fotoğraflar " yazisi icerdigi kontrol edilir
    Then "Fotoğrafları Göster" yazisi kontrol edilir
    Then "Bekleme modu süre seçimi" yazisi kontrol edilir
    Then "BIR FOTOĞRAF DAHA EKLE" yazisi kontrol edilir
    Then navigasyondan geri tusuna basilir
    Then navigasyondan geri tusuna basilir
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:033 Vega firin bekleme ekrani ayarlari bekleme modu fotograflari goster arka plana atma kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Ayarlar alanina tiklanir
    And 5 saniye bekle
    Then Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    Then Appbar subtitle "Vega Leisure" texti kontrol edilir
    Then "Bekleme Ekranı Ayarları" butonuna basilir
    Then 5 saniye bekle
    Then Bekleme Modu "Fotoğrafları Göster" olarak seçilir
    And 5 saniye bekle
    And Uygulamayi 30 saniye arka planda tut sonra aktive et
    And 5 saniye bekle
    Then Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    Then Appbar subtitle "Vega Leisure" texti kontrol edilir
    Then "Bekleme Ekranı Ayarları" butonuna basilir
    Then 5 saniye bekle
    Then "Bekleme Modu" yazisi kontrol edilir
    Then "SEÇINIZ" yazisi kontrol edilir
    Then "Bekleme Modu" yazisi kontrol edilir
    Then "Fotoğraflar " yazisi icerdigi kontrol edilir
    Then "Fotoğrafları Göster" yazisi kontrol edilir
    Then "Bekleme modu süre seçimi" yazisi kontrol edilir
    Then "BIR FOTOĞRAF DAHA EKLE" yazisi kontrol edilir
    Then navigasyondan geri tusuna basilir
    Then navigasyondan geri tusuna basilir
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:034 Vega firin bekleme ekrani ayarlari bekleme modu fotograf ekle galeri kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Ayarlar alanina tiklanir
    And 5 saniye bekle
    Then Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    Then Appbar subtitle "Vega Leisure" texti kontrol edilir
    Then "Bekleme Ekranı Ayarları" butonuna basilir
    Then 5 saniye bekle
    Then Bekleme Modu "Fotoğrafları Göster" olarak seçilir
    And 30 saniye bekle
    And "BIR FOTOĞRAF DAHA EKLE" butonuna basilir
    Then 3 saniye bekle
    And "Galeriden Seç" butonuna basilir
    Then 3 saniye bekle
    And "Vazgeç" butonuna basilir
    Then 3 saniye bekle
    Then navigasyondan geri tusuna basilir
    Then navigasyondan geri tusuna basilir
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:035 Vega firin bekleme ekrani ayarlari bekleme modu fotograf ekle fotoğraf çek kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Ayarlar alanina tiklanir
    And 5 saniye bekle
    Then Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    Then Appbar subtitle "Vega Leisure" texti kontrol edilir
    Then "Bekleme Ekranı Ayarları" butonuna basilir
    Then 5 saniye bekle
    Then Bekleme Modu "Fotoğrafları Göster" olarak seçilir
    And 10 saniye bekle
    And "BIR FOTOĞRAF DAHA EKLE" butonuna basilir
    Then 3 saniye bekle
    And "Fotoğraf Çek" butonuna basilir
    Then 3 saniye bekle
    And Kamera izini kabul edilir
    Then 3 saniye bekle
    Then "CameraMode" yazisi kontrol edilir
    And "Vazgeç" butonuna basilir
    Then 3 saniye bekle
    Then navigasyondan geri tusuna basilir
    Then navigasyondan geri tusuna basilir
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:036 Vega firin adimli pisirme sure girmeden sonraki adima gecme kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    Then 10 saniye bekle
    And Program secimine basilir
    Then 3 saniye bekle
    Then "ADIMLI PIŞIRME" butonuna basilir
    Then 3 saniye bekle
    And "BİR ADIM DAHA EKLE" butonuna basilir
    Then 3 saniye bekle
    And "Uyarı" yazisi kontrol edilir
    And "Fırın çalıştırmak için süre seçmeniz gerekmektedir" yazisi kontrol edilir
    And "TAMAM" butonuna basilir
    Then navigasyondan geri tusuna basilir
    Then navigasyondan geri tusuna basilir
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:037 Vega firin adimli pisirme max bes adete kadar eklenebildigi kontrol edilir
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    Then 10 saniye bekle
    And Program secimine basilir
    Then 3 saniye bekle
    Then "ADIMLI PIŞIRME" butonuna basilir
    Then 5 saniye bekle
    And Pisirme suresi "00":"01" olarak ayarlanir
    Then 3 saniye bekle
    And "BİR ADIM DAHA EKLE" butonuna basilir
    Then 10 saniye bekle
    And "1. ADIM" yazisi kontrol edilir
    And "Alt+Üst Isıtma" yazisi kontrol edilir
    And "40 °C • 00:01" yazisi kontrol edilir
    Then 3 saniye bekle
    And "BİR ADIM DAHA EKLE" butonuna basilir
    Then 10 saniye bekle
    And "2. ADIM" yazisi kontrol edilir
    Then 3 saniye bekle
    And "BİR ADIM DAHA EKLE" butonuna basilir
    Then 10 saniye bekle
    And "3. ADIM" yazisi kontrol edilir
    And Ekrani "up" kaydir
    And "BİR ADIM DAHA EKLE" butonuna basilir
    Then 10 saniye bekle
    And "4. ADIM" yazisi kontrol edilir
    And Ekrani "up" kaydir
    And "BİR ADIM DAHA EKLE" butonuna basilir
    Then 10 saniye bekle
    And "5. ADIM" yazisi kontrol edilir
    And Ekrani "up" kaydir
    Then "BİR ADIM DAHA EKLE" yazisinin olmadigi kontrol edilir
    Then Eklenen bes adim silinir
    Then navigasyondan geri tusuna basilir
    Then navigasyondan geri tusuna basilir
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:038 Vega firin adimli pisirme baslatma kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    Then 10 saniye bekle
    And Program secimine basilir
    Then 3 saniye bekle
    Then "ADIMLI PIŞIRME" butonuna basilir
    Then 5 saniye bekle
    And Pisirme suresi "00":"01" olarak ayarlanir
    Then 3 saniye bekle
    And "BİR ADIM DAHA EKLE" butonuna basilir
    Then 10 saniye bekle
    And Program secimi "Izgara" olarak ayarlanir
    And 15 saniye bekle
    And Sicaklik "40  santigrat derece" olarak ayarlanir
    And 15 saniye bekle
    And Pisirme suresi "00":"01" olarak ayarlanir
    Then 3 saniye bekle
    And "BİR ADIM DAHA EKLE" butonuna basilir
    Then 3 saniye bekle
    And Programi baslat butonuna basilir
    And 10 saniye bekle
    Then "Başarılı" yazisi kontrol edilir
    Then "Adımlar Fırına gönderildi" yazisi kontrol edilir
    Then "TAMAM" butonuna basilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    Then On isitma adimi varsa atlanir
    And 10 saniye bekle
    Then Appbar "Vega Leisure" texti kontrol edilir
    And Appbar subtitle "mutfak" texti kontrol edilir
    And "1. ADIM" yazisi kontrol edilir
    And "40 °C" yazisi kontrol edilir
    And "Alt+Üst Isıtma" yazisi kontrol edilir
    And "Sonraki Adım: Izgara" yazisi kontrol edilir
    And "Kalan Süre" yazisi kontrol edilir
    And "00:02" yazisi kontrol edilir
    And 30 saniye bekle
    And "00:01" elementini bekle
    And 20 saniye bekle
    Then Appbar "Vega Leisure" texti kontrol edilir
    And Appbar subtitle "mutfak" texti kontrol edilir
    And "2. ADIM" yazisi kontrol edilir
    And "40 °C" yazisi kontrol edilir
    And "Izgara" yazisi kontrol edilir
    And "Önceki Adım: Alt+Üst Isıtma" yazisi kontrol edilir
    And "Kalan Süre" yazisi kontrol edilir
    And "00:01" yazisi kontrol edilir
    And "YEMEK HAZIR" elementini bekle
    And "YEMEK HAZIR" yazisi kontrol edilir
    Then El ikonu kontrol edilir
    And "5 dakika daha pişirme devam etsin mi?" yazisi kontrol edilir
    And "DEVAM ET" yazisi kontrol edilir
    Then Program sonu home tusuna basilir
    Then 5 saniye bekle
    Given Uygulama resetlenir
    And 10 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:039 Vega firin adimli pisirme tek adim ile baslatamama kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    Then 10 saniye bekle
    And Program secimine basilir
    Then 3 saniye bekle
    Then "ADIMLI PIŞIRME" butonuna basilir
    Then 5 saniye bekle
    And Pisirme suresi "00":"01" olarak ayarlanir
    Then 3 saniye bekle
    And "BİR ADIM DAHA EKLE" butonuna basilir
    Then 3 saniye bekle
    And Programi baslat butonuna basilir
    And "Hata" elementini bekle
    And "Hata" yazisi kontrol edilir
    And "Adımlı pişirme başlatabilmeniz için en az iki adım eklemeniz gerekiyor." yazisi kontrol edilir
    Then "TAMAM" butonuna basilir
    Then 3 saniye bekle
    Given Uygulama resetlenir
    And 10 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:040 Vega firin adimli pisirme baslatma kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    Then 10 saniye bekle
    And Program secimine basilir
    Then 3 saniye bekle
    Then "ADIMLI PIŞIRME" butonuna basilir
    Then 5 saniye bekle
    And Pisirme suresi "00":"01" olarak ayarlanir
    Then 3 saniye bekle
    And "BİR ADIM DAHA EKLE" butonuna basilir
    Then 10 saniye bekle
    And Program secimi "Izgara" olarak ayarlanir
    And 15 saniye bekle
    And Sicaklik "40  santigrat derece" olarak ayarlanir
    And 15 saniye bekle
    And Pisirme suresi "00":"01" olarak ayarlanir
    Then 3 saniye bekle
    And "BİR ADIM DAHA EKLE" butonuna basilir
    Then 3 saniye bekle
    And Programi baslat butonuna basilir
    And 10 saniye bekle
    Then "TAMAM" butonuna basilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    Then On isitma adimi varsa atlanir
    And 50 saniye bekle
    And "00:01" elementini bekle
    And 30 saniye bekle
    And "YEMEK HAZIR" elementini bekle
    Then El ikonuna basilir
    Then 3 saniye bekle
    And Program secimi "Pizza" olarak ayarlanir
    And 15 saniye bekle
    And Sicaklik "50  santigrat derece" olarak ayarlanir
    And 15 saniye bekle
    And Adimli pisirme edit play tusuna basilir
    And 15 saniye bekle
    Then Appbar "Vega Leisure" texti kontrol edilir
    And Appbar subtitle "mutfak" texti kontrol edilir
    And "2. ADIM" yazisi kontrol edilir
    And "50 °C" yazisi kontrol edilir
    And "Pizza" yazisi kontrol edilir
    And "Önceki Adım: Alt+Üst Isıtma" yazisi kontrol edilir
    And "Kalan Süre" yazisi kontrol edilir
    And "00:01" yazisi kontrol edilir
    And 50 saniye bekle
    And "YEMEK HAZIR" elementini bekle
    And "YEMEK HAZIR" yazisi kontrol edilir
    Then El ikonu kontrol edilir
    And "5 dakika daha pişirme devam etsin mi?" yazisi kontrol edilir
    And "DEVAM ET" yazisi kontrol edilir
    Then Program sonu home tusuna basilir
    Then 5 saniye bekle
    Given Uygulama resetlenir
    And 10 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:041 Vega firin adimli pisirme sonrasi ek sure ile pisirmeye devam etme kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    Then 10 saniye bekle
    And Program secimine basilir
    Then 3 saniye bekle
    Then "ADIMLI PIŞIRME" butonuna basilir
    Then 5 saniye bekle
    And Pisirme suresi "00":"01" olarak ayarlanir
    Then 3 saniye bekle
    And "BİR ADIM DAHA EKLE" butonuna basilir
    Then 10 saniye bekle
    And Program secimi "Izgara" olarak ayarlanir
    And 15 saniye bekle
    And Sicaklik "40  santigrat derece" olarak ayarlanir
    And 15 saniye bekle
    And Pisirme suresi "00":"01" olarak ayarlanir
    Then 3 saniye bekle
    And "BİR ADIM DAHA EKLE" butonuna basilir
    Then 3 saniye bekle
    And Programi baslat butonuna basilir
    And 10 saniye bekle
    Then "TAMAM" butonuna basilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    Then On isitma adimi varsa atlanir
    And 50 saniye bekle
    And "00:01" elementini bekle
    And 30 saniye bekle
    And "YEMEK HAZIR" elementini bekle
    Then "DEVAM ET" butonuna basilir
    And 15 saniye bekle
    Then Appbar "Vega Leisure" texti kontrol edilir
    And Appbar subtitle "mutfak" texti kontrol edilir
    And "2. ADIM" yazisi kontrol edilir
    And "40 °C" yazisi kontrol edilir
    And "Izgara" yazisi kontrol edilir
    And "Önceki Adım: Alt+Üst Isıtma" yazisi kontrol edilir
    And "Kalan Süre" yazisi kontrol edilir
    And "00:05" yazisi kontrol edilir
    Then Vega firin stop butonuna basilir
    Then "Tamam" butonuna basilir
    Then 3 saniye bekle
    Given Uygulama resetlenir
    And 10 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:042 Vega firin hazir tarifleri baget ekmek tarifinin firina gönderme kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    Then 10 saniye bekle
    Then Hazir tarifler basilir
    Then 3 saniye bekle
    And "Damak Tadınıza Özel Tarifler" yazisi kontrol edilir
    And "Tüm Tarifler" yazisi kontrol edilir
    And "Favorilerim" yazisi kontrol edilir
    Then Tum tarifler butonuna basilir
    And "Tüm Tarifler" yazisi kontrol edilir
    Then "Baget Ekmek" yazisi sayfa kaydirarak bulunur
    Then "Baget Ekmek" butonuna basilir
    Then 3 saniye bekle
    And "Baget Ekmek" yazisi kontrol edilir
    And "0 SAAT 48 DK" yazisi kontrol edilir
    And "Ev yapımı bagetler hem çok kolay hem aşırı lezzetli!" yazisi kontrol edilir
    And "Malzemeler (4)" yazisi kontrol edilir
    Then Ekrani "up" kaydir
    Then "TARİFİ GÖRÜNTÜLE (9)" butonuna basilir
    Then 3 saniye bekle
    And "Baget Ekmek" yazisi kontrol edilir
    Then Ekrani "up" kaydir
    Then Ekrani "up" kaydir
    Then Ekrani "up" kaydir
    Then Ekrani "up" kaydir
    Then Firina gonder butonuna basilir
    Then 3 saniye bekle
    Then "Tarifi göndereceğiniz fırını seçin." yazisi kontrol edilir
    Then "Cihaz" yazisi kontrol edilir
    Then "TARİFİ FIRINA GÖNDER" butonuna basilir
    Then 20 saniye bekle
    Then "Uyarı" yazisi kontrol edilir
    Then "Tarifi gönderme işlemi başarıyla tamamlandı!" yazisi kontrol edilir
    Then "TAMAM" butonuna basilir
    And 10 saniye bekle
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    Then On isitma adimi varsa atlanir
    Then 10 saniye bekle
    And "Baget Ekmek" program adi kontrol edilir
    And Program kalan sure "00:48" kontrol edilir
    And "Başlangıç Saati" yazisi kontrol edilir
    And "Kalan Süre" yazisi kontrol edilir
    And "Bitiş Saati" yazisi kontrol edilir
    And "AŞAMA: " yazisi kontrol edilir
    Then Program asamasi "Ön ısıtma tamamlandı" texti kontrol edilir
    Then Vega firin stop butonuna basilir
    Then 3 saniye bekle
    Then "Tamam" butonuna basilir
    Then 3 saniye bekle
    Given Uygulama resetlenir
    And 10 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:043 Vega firin hazir tarifleri dogum gunu pastasi tarifinin firina gönderme kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    Then 10 saniye bekle
    Then Hazir tarifler basilir
    Then 3 saniye bekle
    And "Damak Tadınıza Özel Tarifler" yazisi kontrol edilir
    And "Tüm Tarifler" yazisi kontrol edilir
    And "Favorilerim" yazisi kontrol edilir
    Then Tum tarifler butonuna basilir
    And "Tüm Tarifler" yazisi kontrol edilir
    Then "Doğum Günü Pastası" yazisi sayfa kaydirarak bulunur
    Then "Doğum Günü Pastası" butonuna basilir
    Then 3 saniye bekle
    And "Doğum Günü Pastası" yazisi kontrol edilir
    And "0 SAAT 30 DK" yazisi kontrol edilir
    And "Çocuğunuz ya da misafirleriniz için olsa da bu tarifi uygulayarak hepsini memnun edeceğinizden emin olabilirsiniz!" yazisi kontrol edilir
    And "Malzemeler (6)" yazisi kontrol edilir
    Then Ekrani "up" kaydir
    Then "TARİFİ GÖRÜNTÜLE (12)" butonuna basilir
    Then 3 saniye bekle
    And "Doğum Günü Pastası" yazisi kontrol edilir
    Then Ekrani "up" kaydir
    Then Ekrani "up" kaydir
    Then Ekrani "up" kaydir
    Then Ekrani "up" kaydir
    Then Firina gonder butonuna basilir
    Then 3 saniye bekle
    Then "Tarifi göndereceğiniz fırını seçin." yazisi kontrol edilir
    Then "Cihaz" yazisi kontrol edilir
    Then "TARİFİ FIRINA GÖNDER" butonuna basilir
    Then 20 saniye bekle
    Then "Uyarı" yazisi kontrol edilir
    Then "Tarifi gönderme işlemi başarıyla tamamlandı!" yazisi kontrol edilir
    Then "TAMAM" butonuna basilir
    And 10 saniye bekle
    And "Doğum Günü Pastası" program adi kontrol edilir
    And "AŞAMA: " yazisi kontrol edilir
    Then Vega firin stop butonuna basilir
    Then 3 saniye bekle
    Then "Tamam" butonuna basilir
    Then 3 saniye bekle
    Given Uygulama resetlenir
    And 10 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:044 Vega firina yan menu hazir tariflerinden tarif gonderilemedigin kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    Then 10 saniye bekle
    Then navigasyondan geri tusuna basilir
    Then 3 saniye bekle
    Then Yan menu ikonuna basilir
    Then 3 saniye bekle
    Then "Yemek Tarifleri" butonuna basilir
    Then 3 saniye bekle
    And "Damak Tadınıza Özel Tarifler" yazisi kontrol edilir
    And "Tüm Tarifler" yazisi kontrol edilir
    And "Favorilerim" yazisi kontrol edilir
    Then Tum tarifler butonuna basilir
    And "Tüm Tarifler" yazisi kontrol edilir
    Then "Cheesecake" yazisi sayfa kaydirarak bulunur
    Then "Cheesecake" butonuna basilir
    Then 3 saniye bekle
    And "Cheesecake" yazisi kontrol edilir
    And "1 saat 20 dakika" yazisi kontrol edilir
    And "Sade olmasına rağmen en prestijli bu tatlıyı mutfağınızda daima servis edeceksiniz!" yazisi kontrol edilir
    And "Malzemeler (4)" yazisi kontrol edilir
    Then Ekrani "up" kaydir
    Then "TARİFİ GÖRÜNTÜLE (6)" butonuna basilir
    Then 3 saniye bekle
    And "Cheesecake" yazisi kontrol edilir
    Then Ekrani "up" kaydir
    Then Ekrani "up" kaydir
    Then Ekrani "up" kaydir
    Then 3 saniye bekle
    Then Firina gonder butonunun olmadigi kontrol edilir
    Then 3 saniye bekle
  @VegaFirin
  Scenario:045 Vega firina ana ekran home menusu hazir tariflerinden tarif gonderilemedigin kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    And 10 saniye bekle
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    Then 10 saniye bekle
    Then navigasyondan geri tusuna basilir
    Then 3 saniye bekle
    And "Home" butonuna basilir
    Then 3 saniye bekle
    Then "HOME" yazisi kontrol edilir
    Then "YEMEK TARİFLERİ" butonuna basilir
    Then 3 saniye bekle
    And "Damak Tadınıza Özel Tarifler" yazisi kontrol edilir
    And "Tüm Tarifler" yazisi kontrol edilir
    And "Favorilerim" yazisi kontrol edilir
    Then Tum tarifler butonuna basilir
    And "Tüm Tarifler" yazisi kontrol edilir
    Then "Cheesecake" yazisi sayfa kaydirarak bulunur
    Then "Cheesecake" butonuna basilir
    Then 3 saniye bekle
    And "Cheesecake" yazisi kontrol edilir
    And "1 saat 20 dakika" yazisi kontrol edilir
    And "Sade olmasına rağmen en prestijli bu tatlıyı mutfağınızda daima servis edeceksiniz!" yazisi kontrol edilir
    And "Malzemeler (4)" yazisi kontrol edilir
    Then Ekrani "up" kaydir
    Then "TARİFİ GÖRÜNTÜLE (6)" butonuna basilir
    Then 3 saniye bekle
    And "Cheesecake" yazisi kontrol edilir
    Then Ekrani "up" kaydir
    Then Ekrani "up" kaydir
    Then Ekrani "up" kaydir
    Then 3 saniye bekle
    Then Firina gonder butonunun olmadigi kontrol edilir
    Then 3 saniye bekle
  @VegaFirin
  Scenario:046 Vega firin adimli pisirme baslatma kontrolleri
    Given Uygulama resetlenir
    Given 30 saniye bekle
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    When "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And Program secimine basilir
    Then "ADIMLI PIŞIRME" butonuna basilir
    And Pisirme suresi "00":"01" olarak ayarlanir
    And "BİR ADIM DAHA EKLE" butonuna basilir
    And Program secimi "Izgara" olarak ayarlanir
    And Sicaklik "40  santigrat derece" olarak ayarlanir
    And Pisirme suresi "00":"01" olarak ayarlanir
    And "BİR ADIM DAHA EKLE" butonuna basilir
    And Programi baslat butonuna basilir
    Then "TAMAM" butonuna basilir
    When "Vega Leisure" detayina gidilir
    Then On isitma adimi varsa atlanir
    And 50 saniye bekle
    And "00:01" elementini bekle
    And 30 saniye bekle
    And "YEMEK HAZIR" elementini bekle
    Then El ikonuna basilir
    And Program secimi "Pizza" olarak ayarlanir
    And Sicaklik "50  santigrat derece" olarak ayarlanir
    And Adimli pisirme edit play tusuna basilir
    Then Appbar "Vega Leisure" texti kontrol edilir
    And Appbar subtitle "mutfak" texti kontrol edilir
    And "2. ADIM" yazisi kontrol edilir
    And "50 °C" yazisi kontrol edilir
    And "Pizza" yazisi kontrol edilir
    And "Önceki Adım: Alt+Üst Isıtma" yazisi kontrol edilir
    And "Kalan Süre" yazisi kontrol edilir
    And "00:01" yazisi kontrol edilir
    And 50 saniye bekle
    And "YEMEK HAZIR" elementini bekle
    And "YEMEK HAZIR" yazisi kontrol edilir
    Then El ikonu kontrol edilir
    And "5 dakika daha pişirme devam etsin mi?" yazisi kontrol edilir
    And "DEVAM ET" yazisi kontrol edilir
    Then Program sonu home tusuna basilir
    Given Uygulama resetlenir
    And Mutfak odasina gidilir
    When "Vega Leisure" detayina gidilir
    Then Cihaz on ise standby tusuna basarak off konumuna getirilir














    
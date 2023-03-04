@TumSenaryolar
Feature: Vega Firin
  Author: Hayri Odabas
  Date: 2022
  NOT: Bu test scriptlerini calistirmadan once uzaktan kontrolun acik olduguna emin olun
  @VegaFirin
  Scenario:001 Cihazlarim menusunden Vega Firin cihaz ekraninin kontrolu
    * Uygulama resetlenir
    * 30 saniye bekle
    * Logout yapilir
    * Uygulamaya "mobilotomasyon1@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * "Vega Leisure" yazisi kontrol edilir
    * "Mutfak" elementini bekle
    * "Mutfak" yazisi kontrol edilir
    * Uzaktan kontrol "Açık" texti kontrolu
    * "Fırın" urun adi kontrol edilir
    * "Arçelik" yazisi kontrol edilir
    * "Fırın" yazisi kontrol edilir
    * "PROGRAM SEÇENEKLERİ" yazisi kontrol edilir
    * "Favoriler" yazisi kontrol edilir
    * "Program Seçimi" yazisi kontrol edilir
    * "Hazır Tarifler" yazisi kontrol edilir
    * "CİHAZA TANIMLI KURALLAR" yazisi kontrol edilir
    * "Henüz kural oluşturmadınız." yazisi kontrol edilir
    * Ekrani "up" kaydir
    * "KURAL EKLE" yazisi kontrol edilir
    * "CİHAZ GEÇMİŞİ" yazisi kontrol edilir
    * "YEMEK TARİFLERİ" yazisi kontrol edilir
    * Ekrani "up" kaydir
    * "İPUÇLARI" yazisi kontrol edilir
  @VegaFirin
  Scenario:002 Vega firin cihazlar ekraninda standby tusu ile uzaktan acma komutu gonder kontrolu
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Favoriler bolumunun var oldugunu kontrol et
    * Program secimi bolumnun var oldugunu kontrol et
    * Hazir Tarifler bolumun var oldugunu kontrol et
    * Cihaz off konumuna getirilir
  @VegaFirin
  Scenario:003 Vega firin ekraninda uygulamayi arka plana atip geri cagirma kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Uygulamayi 10 saniye arka planda tut sonra aktive et
    * Favoriler bolumunun var oldugunu kontrol et
    * Program secimi bolumnun var oldugunu kontrol et
    * Hazir Tarifler bolumun var oldugunu kontrol et
    * Cihaz off konumuna getirilir
  @VegaFirin
  Scenario:004 Vega firin ekraninda telefon ekranini kill edilip tekrar acma kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Uygulama kill edilip 30 sn sonra acilir
    * 10 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * Favoriler bolumunun var oldugunu kontrol et
    * Program secimi bolumnun var oldugunu kontrol et
    * Hazir Tarifler bolumun var oldugunu kontrol et
    * Cihaz off konumuna getirilir
  @VegaFirin
  Scenario:005 Vega firin ekraninda calisma modu secim ekranina girildiginin kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Program secimine basilir
    * 3 saniye bekle
    * "Program" yazisi kontrol edilir
    * "Sıcaklık" yazisi kontrol edilir
    * "Raf Önerisi" yazisi kontrol edilir
    * "°C" icerigi konrol edilir
    * Program kalan sure "00:00" kontrol edilir
    * "PROGRAMI BAŞLAT" yazisi kontrol edilir
    * "ADIMLI PIŞIRME" yazisi kontrol edilir
    * "BİTİŞ SAATİ" yazisi kontrol edilir
    * navigasyondan geri tusuna basilir
    * Cihaz off konumuna getirilir
  @VegaFirin
  Scenario:006 Vega firin program baslatma secim kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Program secimine basilir
    * Program secimi "Izgara+Fan" olarak ayarlanir
    * 15 saniye bekle
    * Sicaklik "70  santigrat derece" olarak ayarlanir
    * 15 saniye bekle
    * Raf onerisi "3. Raf" olarak ayarlanir
    * 15 saniye bekle
    * Sure "01" olarak setlenir
    * 15 saniye bekle
    * Programi baslat butonuna basilir
    * 20 saniye bekle
    * Uzaktan kontrol "Açık" texti kontrolu
    * "Izgara+Fan" program adi kontrol edilir
    * On isitma adimi varsa atlanir
    * 10 saniye bekle
    * Program asamasi "Ön ısıtma tamamlandı" texti kontrol edilir
    * El ikonu kontrol edilir
    * Program kalan sure "01:00" kontrol edilir
    * Vega firin stop butonuna basilir
    * 3 saniye bekle
    * "Tamam" butonuna basilir
    * "CİHAZLAR" elementini bekle
    * "Safir Buzdolabi, , Seçmek için çift dokunun" detayina gidilir
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:007 Vega firin cihaz bilgileri kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * Cihaz bilgilerine tiklanir
    * 10 saniye bekle
    * "CİHAZ KİMLİĞİ" yazisi kontrol edilir
    * "MARKA" yazisi kontrol edilir
    * "Arçelik" markasi kontrol edilir
    * "MODEL" yazisi kontrol edilir
    * "7757880110" Model numarasi kontrol edilir
    * "DİJİTAL KİMLİK NO" yazisi kontrol edilir
    * "F999914846106210596541" Digital kimlik no kontrol edilir
    * "MAC ADRESİ" yazisi kontrol edilir
    * "2C:9F:FB:2A:38:92" yazisi kontrol edilir
    * Ekrani "up" kaydir
    * "VERSİYON" yazisi kontrol edilir
    * "YAZILIM" yazisi kontrol edilir
    * "Ürün yazılımı güncel" yazisi kontrol edilir
    * "GÜNCELLEME DETAYLARI" yazisi kontrol edilir
    * 20 saniye bekle
    * "2.24.0 / 2.0.14 / 6.90.03" versiyon numarasi kontrol edilir
  @VegaFirin
  Scenario:008 Vega Firin calisma ekraninda uygulamanin arka plana atilip tekrar acilmasi kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Program secimine basilir
    * Program secimi "Izgara" olarak ayarlanir
    * 15 saniye bekle
    * Sicaklik "70  santigrat derece" olarak ayarlanir
    * 15 saniye bekle
    * Raf onerisi "4. Raf" olarak ayarlanir
    * 15 saniye bekle
    * Sure "01" olarak setlenir
    * 15 saniye bekle
    * Programi baslat butonuna basilir
    * 30 saniye bekle
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * 10 saniye bekle
    * On isitma adimi varsa atlanir
    * 10 saniye bekle
    * El ikonu kontrol edilir
    * "01:00" yazisi kontrol edilir
    * "Izgara" yazisi kontrol edilir
    * Vega firin stop butonuna basilir
    * "Tamam" butonuna basilir
    * "CİHAZLAR" elementini bekle
    * "Safir Buzdolabi, , Seçmek için çift dokunun" detayina gidilir
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:009 Vega firin oturma odasina tasinip geri alinmasi kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Urunu banyo odasina tasi
    * 3 saniye bekle
    * Uygulama resetlenir
    * Banyo odasina gidilir
    * "Vega Leisure" detayina gidilir
    * Urunu oturma odasina geri tasi
    * 3 saniye bekle
    * Uygulama resetlenir
    * "Vega Leisure" icerigi konrol edilir
  @VegaFirin
  Scenario:010 Vega firin calisma esnasinda kill etme kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Program secimine basilir
    * Program secimi "Izgara" olarak ayarlanir
    * 15 saniye bekle
    * Sicaklik "70  santigrat derece" olarak ayarlanir
    * 15 saniye bekle
    * Raf onerisi "4. Raf" olarak ayarlanir
    * 15 saniye bekle
    * Sure "01" olarak setlenir
    * 15 saniye bekle
    * Programi baslat butonuna basilir
    * 30 saniye bekle
    * "01:00" yazisi kontrol edilir
    * Uygulama kill edilip 30 sn sonra acilir
    * 10 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "01:00" yazisi kontrol edilir
    * "Izgara" yazisi kontrol edilir
    * Vega firin stop butonuna basilir
    * "Tamam" butonuna basilir
    * "CİHAZLAR" elementini bekle
    * "Safir Buzdolabi, , Seçmek için çift dokunun" detayina gidilir
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:011 Vega firin favori program secimi yapilmasi ve favori programin baslatilmasi
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Program secimine basilir
    * 15 saniye bekle
    * Program secimi "Pizza" olarak ayarlanir
    * 15 saniye bekle
    * Sicaklik "70  santigrat derece" olarak ayarlanir
    * 15 saniye bekle
    * Raf onerisi "1 veya 3. Raf" olarak ayarlanir
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
    * On isitma adimi varsa atlanir
    * 10 saniye bekle
    * "Pizza" yazisi kontrol edilir
    * "01:00" yazisi kontrol edilir
    * 55 saniye bekle
    * Program asamasi "Pişiriliyor" texti kontrol edilir
    * 3 saniye bekle
    * Vega firin stop butonuna basilir
    * 10 saniye bekle
    * "Tamam" butonuna basilir
    * 10 saniye bekle
    * "Vega Leisure" detayina gidilir
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
  @VegaFirin
  Scenario:012 Vega Firin son calistirilan programin cihaz gecmisinde gosterilmesi
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Program secimine basilir
    * 10 saniye bekle
    * Program secimi "Izgara+Fan" olarak ayarlanir
    * 15 saniye bekle
    * Sicaklik "70  santigrat derece" olarak ayarlanir
    * 15 saniye bekle
    * Raf onerisi "3. Raf" olarak ayarlanir
    * 15 saniye bekle
    * Sure "01" olarak setlenir
    * 15 saniye bekle
    * Programi baslat butonuna basilir
    * 10 saniye bekle
    * On isitma adimi varsa atlanir
    * 10 saniye bekle
    * Vega firin stop butonuna basilir
    * 10 saniye bekle
    * "Tamam" butonuna basilir
    * 20 saniye bekle
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Ekrani "Up" kaydir
    * "Izgara+Fan" icerigi konrol edilir
  @VegaFirin
  Scenario:013 Vega Firin son calistirilan programin cihaz gecmisinden tekrar calistirilmesi
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Ekrani "up" kaydir
    * Ekrani "up" kaydir
    * Son calistirilan program play tusuna basilir
    * 5 saniye bekle
    * Programi baslat butonuna basilir
    * 10 saniye bekle
    * On isitma adimi varsa atlanir
    * 20 saniye bekle
    * "Izgara+Fan" program adi kontrol edilir
    * "70 °C" yazisi kontrol edilir
    * Program kalan sure "01:00" kontrol edilir
    * "Başlangıç Saati" yazisi kontrol edilir
    * "Kalan Süre" yazisi kontrol edilir
    * "Bitiş Saati" yazisi kontrol edilir
    * "AŞAMA: " yazisi kontrol edilir
    * Program asamasi "Ön ısıtma tamamlandı" texti kontrol edilir
    * Vega firin stop butonuna basilir
    * 10 saniye bekle
    * "Tamam" butonuna basilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:014 Vega Firin son calistirilan program gecmis detayina girildiginin kontrolu
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Ekrani "up" kaydir
    * Ekrani "up" kaydir
    * 3 saniye bekle
    * "CİHAZ GEÇMİŞİ" butonuna basilir
    * 3 saniye bekle
    * "Izgara+Fan" play tusuna basilir
    * 10 saniye bekle
    * Appbar "Vega Leisure" texti kontrol edilir
    * Appbar subtitle "mutfak" texti kontrol edilir
    * "Program" yazisi kontrol edilir
    * "Sıcaklık" yazisi kontrol edilir
    * "Raf Önerisi" yazisi kontrol edilir
    * "Izgara+Fan" yazisi kontrol edilir
    * "70 °C" yazisi kontrol edilir
    * "3. Raf" yazisi kontrol edilir
    * "ADIMLI PIŞIRME" yazisi kontrol edilir
    * "Program Süresi" yazisi kontrol edilir
    * "01:00" yazisi kontrol edilir
    * navigasyondan geri tusuna basilir
    * Ekrani "down" kaydir
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
    * 3 saniye bekle
  @VegaFirin
  Scenario:015 Vega firin süre girilmeden program baslatması durumunda uyarı mesajı çıkması kontrolu
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 5 saniye bekle
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
  @VegaFirin
  Scenario:016 Vega firin cihaz ekranından ok tuşu ile yemek tarifleri menüsüne erisim
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 5 saniye bekle
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
  @VegaFirin
  Scenario:017 Vega firin cihaz ekranından ilk tarifin üzerine basarak tarife erişim
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 5 saniye bekle
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
  @VegaFirin
  Scenario:018 Vega firin kapi acik bildirimi on yapiplip kill etme kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * "Açık" elementini bekle
    * Ayarlar alanina tiklanir
    * Bildirim tercihlerine gidilir
    * Firin kapak acik bildirimi aktif edilir
    * "Kaydet" butonuna basilir
    * "TAMAM" butonuna basilir
    * Uygulama kill edilip 30 sn sonra acilir
    * 5 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * Ayarlar alanina tiklanir
    * Bildirim tercihlerine gidilir
    * Firin kapak acik bildirimi aktif kontrolu
    * Firin kapak acik bildirimi off yapilir
    * 3 saniye bekle
    * "Kaydet" butonuna basilir
    * "TAMAM" butonuna basilir
    * Firin kapak acik bildirimi kapali kontrolu
    * navigasyondan geri tusuna basilir
    * navigasyondan geri tusuna basilir
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:019 Vega firin cihaz ayarlarinda icerik kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Ayarlar alanina tiklanir
    * 5 saniye bekle
    * Appbar "Ayarlar" texti kontrol edilir
    * Appbar subtitle "Vega Leisure" texti kontrol edilir
    * "Uyarı Görüntüleme Ayarları" yazisi kontrol edilir
    * "Bildirim Ayarları" yazisi kontrol edilir
    * "Bekleme Ekranı Ayarları" yazisi kontrol edilir
    * navigasyondan geri tusuna basilir
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:020 Vega firin uyari görüntüleme ayarlari icerik kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Ayarlar alanina tiklanir
    * 5 saniye bekle
    * Appbar "Ayarlar" texti kontrol edilir
    * Appbar subtitle "Vega Leisure" texti kontrol edilir
    * "Uyarı Görüntüleme Ayarları" butonuna basilir
    * 3 saniye bekle
    * "Kapak açık" yazisi kontrol edilir
    * navigasyondan geri tusuna basilir
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:021 Vega firin uyari görüntüleme ayarlari kapi acik off yapilip uygulama kill etme kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Ayarlar alanina tiklanir
    * 5 saniye bekle
    * Appbar "Ayarlar" texti kontrol edilir
    * Appbar subtitle "Vega Leisure" texti kontrol edilir
    * "Uyarı Görüntüleme Ayarları" butonuna basilir
    * 3 saniye bekle
    * "Kapak açık" yazisi kontrol edilir
    * "Kapak açık" bildirimi "0" yapilir
    * 10 saniye bekle
    * Uygulama kill edilip 30 sn sonra acilir
    * 5 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * Ayarlar alanina tiklanir
    * 5 saniye bekle
    * Appbar "Ayarlar" texti kontrol edilir
    * Appbar subtitle "Vega Leisure" texti kontrol edilir
    * "Uyarı Görüntüleme Ayarları" butonuna basilir
    * 3 saniye bekle
    * "Kapak açık" bildiriminin "0" oldugu kontrol edilir
    * navigasyondan geri tusuna basilir
    * navigasyondan geri tusuna basilir
    * Ayarlar alanina tiklanir
    * 5 saniye bekle
    * Appbar "Ayarlar" texti kontrol edilir
    * Appbar subtitle "Vega Leisure" texti kontrol edilir
    * "Uyarı Görüntüleme Ayarları" butonuna basilir
    * 3 saniye bekle
    * "Kapak açık" yazisi kontrol edilir
    * "Kapak açık" bildirimi "1" yapilir
    * 10 saniye bekle
    * navigasyondan geri tusuna basilir
    * navigasyondan geri tusuna basilir
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:022 Vega firin uyari görüntüleme ayarlari kapi acik off yapilip uygulama 30 saniye arka plana atip geri cagirma kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Ayarlar alanina tiklanir
    * 5 saniye bekle
    * Appbar "Ayarlar" texti kontrol edilir
    * Appbar subtitle "Vega Leisure" texti kontrol edilir
    * "Uyarı Görüntüleme Ayarları" butonuna basilir
    * 3 saniye bekle
    * "Kapak açık" yazisi kontrol edilir
    * "Kapak açık" bildirimi "0" yapilir
    * 10 saniye bekle
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * 5 saniye bekle
    * Appbar "Uyarı Görüntüleme Ayarları" texti kontrol edilir
    * Appbar subtitle "Vega Leisure" texti kontrol edilir
    * "Kapak açık" bildiriminin "0" oldugu kontrol edilir
    * navigasyondan geri tusuna basilir
    * navigasyondan geri tusuna basilir
    * Ayarlar alanina tiklanir
    * 5 saniye bekle
    * Appbar "Ayarlar" texti kontrol edilir
    * Appbar subtitle "Vega Leisure" texti kontrol edilir
    * "Uyarı Görüntüleme Ayarları" butonuna basilir
    * 3 saniye bekle
    * "Kapak açık" yazisi kontrol edilir
    * "Kapak açık" bildirimi "1" yapilir
    * 10 saniye bekle
    * navigasyondan geri tusuna basilir
    * navigasyondan geri tusuna basilir
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:023 Vega firin bildirim ayarlari icerik kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Ayarlar alanina tiklanir
    * 5 saniye bekle
    * Appbar "Ayarlar" texti kontrol edilir
    * Appbar subtitle "Vega Leisure" texti kontrol edilir
    * "Bildirim Ayarları" butonuna basilir
    * 3 saniye bekle
    * "Yemeğiniz hazır. Afiyet olsun!" yazisi kontrol edilir
    * "Kapak açık" yazisi kontrol edilir
    * navigasyondan geri tusuna basilir
    * navigasyondan geri tusuna basilir
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:024 Vega firin bildirim ayarlari kapi acik off yapilip uygulama kill etme kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Ayarlar alanina tiklanir
    * 5 saniye bekle
    * Appbar "Ayarlar" texti kontrol edilir
    * Appbar subtitle "Vega Leisure" texti kontrol edilir
    * "Bildirim Ayarları" butonuna basilir
    * 3 saniye bekle
    * "Yemeğiniz hazır. Afiyet olsun!" bildirimi "0" yapilir
    * 3 saniye bekle
    * "Kapak açık" bildirimi "1" yapilir
    * 3 saniye bekle
    * "Kaydet" butonuna basilir
    * 10 saniye bekle
    * "TAMAM" butonuna basilir
    * 5 saniye bekle
    * Uygulama kill edilip 30 sn sonra acilir
    * 5 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * Ayarlar alanina tiklanir
    * 5 saniye bekle
    * Appbar "Ayarlar" texti kontrol edilir
    * Appbar subtitle "Vega Leisure" texti kontrol edilir
    * "Bildirim Ayarları" butonuna basilir
    * 3 saniye bekle
    * "Yemeğiniz hazır. Afiyet olsun!" bildiriminin "0" oldugu kontrol edilir
    * "Kapak açık" bildiriminin "1" oldugu kontrol edilir
    * navigasyondan geri tusuna basilir
    * navigasyondan geri tusuna basilir
    * Ayarlar alanina tiklanir
    * 5 saniye bekle
    * "Bildirim Ayarları" butonuna basilir
    * 3 saniye bekle
    * "Yemeğiniz hazır. Afiyet olsun!" bildirimi "1" yapilir
    * 3 saniye bekle
    * "Kapak açık" bildirimi "0" yapilir
    * 3 saniye bekle
    * "Kaydet" butonuna basilir
    * 10 saniye bekle
    * "TAMAM" butonuna basilir
    * 5 saniye bekle
    * navigasyondan geri tusuna basilir
    * navigasyondan geri tusuna basilir
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:025 Vega firin bildirim ayarlari kapi acik off yapilip uygulama 30 saniye arka plana atip geri cagirma kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Ayarlar alanina tiklanir
    * 5 saniye bekle
    * Appbar "Ayarlar" texti kontrol edilir
    * Appbar subtitle "Vega Leisure" texti kontrol edilir
    * "Bildirim Ayarları" butonuna basilir
    * 3 saniye bekle
    * "Yemeğiniz hazır. Afiyet olsun!" bildirimi "0" yapilir
    * 3 saniye bekle
    * "Kapak açık" bildirimi "1" yapilir
    * 3 saniye bekle
    * "Kaydet" butonuna basilir
    * 10 saniye bekle
    * "TAMAM" butonuna basilir
    * 5 saniye bekle
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * 5 saniye bekle
    * Appbar "Bildirim Ayarları" texti kontrol edilir
    * Appbar subtitle "Vega Leisure" texti kontrol edilir
    * "Yemeğiniz hazır. Afiyet olsun!" bildiriminin "0" oldugu kontrol edilir
    * "Kapak açık" bildiriminin "1" oldugu kontrol edilir
    * navigasyondan geri tusuna basilir
    * navigasyondan geri tusuna basilir
    * Ayarlar alanina tiklanir
    * 5 saniye bekle
    * "Bildirim Ayarları" butonuna basilir
    * 3 saniye bekle
    * "Yemeğiniz hazır. Afiyet olsun!" bildirimi "1" yapilir
    * 3 saniye bekle
    * "Kapak açık" bildirimi "0" yapilir
    * 3 saniye bekle
    * "Kaydet" butonuna basilir
    * 10 saniye bekle
    * "TAMAM" butonuna basilir
    * 5 saniye bekle
    * navigasyondan geri tusuna basilir
    * navigasyondan geri tusuna basilir
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:026 Vega firin bekleme ekrani ayarlari icerik kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Ayarlar alanina tiklanir
    * 5 saniye bekle
    * Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    * Appbar subtitle "Vega Leisure" texti kontrol edilir
    * "Bekleme Ekranı Ayarları" butonuna basilir
    * 5 saniye bekle
    * Bekleme Modu "Saat Göster" olarak seçilir
    * "Bekleme Modu" yazisi kontrol edilir
    * "SEÇINIZ" yazisi kontrol edilir
    * "Bekleme Modu" yazisi kontrol edilir
    * "Saat Göster" yazisi kontrol edilir
    * "Bekleme modu süre seçimi" yazisi kontrol edilir
    * "Saat Tipi" yazisi kontrol edilir
    * "Analog Saat" yazisi kontrol edilir
    * navigasyondan geri tusuna basilir
    * navigasyondan geri tusuna basilir
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:027 Vega firin bekleme ekrani ayarlarida bekleme modu süre secimi degisimi sonrasi kill etme kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Ayarlar alanina tiklanir
    * 5 saniye bekle
    * Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    * Appbar subtitle "Vega Leisure" texti kontrol edilir
    * "Bekleme Ekranı Ayarları" butonuna basilir
    * 3 saniye bekle
    * "Bekleme Modu" yazisi kontrol edilir
    * "SEÇINIZ" yazisi kontrol edilir
    * "Bekleme Modu" yazisi kontrol edilir
    * "Saat Göster" yazisi kontrol edilir
    * "Bekleme modu süre seçimi" yazisi kontrol edilir
    * "Saat Tipi" yazisi kontrol edilir
    * "Analog Saat" yazisi kontrol edilir
    * Bekleme suresi 120 dakika yapilir
    * 5 saniye bekle
    * Uygulama kill edilip 30 sn sonra acilir
    * 5 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Ayarlar alanina tiklanir
    * 5 saniye bekle
    * Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    * Appbar subtitle "Vega Leisure" texti kontrol edilir
    * "Bekleme Ekranı Ayarları" butonuna basilir
    * 3 saniye bekle
    * "Bekleme Modu" yazisi kontrol edilir
    * "SEÇINIZ" yazisi kontrol edilir
    * "Bekleme Modu" yazisi kontrol edilir
    * "Saat Göster" yazisi kontrol edilir
    * "Bekleme modu süre seçimi" yazisi kontrol edilir
    * "Saat Tipi" yazisi kontrol edilir
    * "Analog Saat" yazisi kontrol edilir
    * Bekleme suresinin 120 dakika oldugu kontrol edilir
    * navigasyondan geri tusuna basilir
    * navigasyondan geri tusuna basilir
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:028 Vega firin bekleme ekrani ayarlarida bekleme modu süre secimi degisimi sonrasi arka plana atma kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Ayarlar alanina tiklanir
    * 5 saniye bekle
    * Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    * Appbar subtitle "Vega Leisure" texti kontrol edilir
    * "Bekleme Ekranı Ayarları" butonuna basilir
    * 3 saniye bekle
    * "Bekleme Modu" yazisi kontrol edilir
    * "SEÇINIZ" yazisi kontrol edilir
    * "Bekleme Modu" yazisi kontrol edilir
    * "Saat Göster" yazisi kontrol edilir
    * "Bekleme modu süre seçimi" yazisi kontrol edilir
    * "Saat Tipi" yazisi kontrol edilir
    * "Analog Saat" yazisi kontrol edilir
    * Bekleme suresi sifirlanir
    * 5 saniye bekle
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * 5 saniye bekle
    * Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    * Appbar subtitle "Vega Leisure" texti kontrol edilir
    * "Bekleme Ekranı Ayarları" butonuna basilir
    * 3 saniye bekle
    * "Bekleme Modu" yazisi kontrol edilir
    * "SEÇINIZ" yazisi kontrol edilir
    * "Bekleme Modu" yazisi kontrol edilir
    * "Saat Göster" yazisi kontrol edilir
    * "Bekleme modu süre seçimi" yazisi kontrol edilir
    * "Saat Tipi" yazisi kontrol edilir
    * "Analog Saat" yazisi kontrol edilir
    * Bekleme suresinin sifirlandigi kontrol edilir
    * navigasyondan geri tusuna basilir
    * navigasyondan geri tusuna basilir
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:029 Vega firin bekleme ekrani ayarlarida bekleme modu ekrani kapat uygulama kill etme kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Ayarlar alanina tiklanir
    * 5 saniye bekle
    * Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    * Appbar subtitle "Vega Leisure" texti kontrol edilir
    * "Bekleme Ekranı Ayarları" butonuna basilir
    * 5 saniye bekle
    * Bekleme Modu "Ekranı Kapat" olarak seçilir
    * 3 saniye bekle
    * "SEÇINIZ" yazisi kontrol edilir
    * "Bekleme Modu" yazisi kontrol edilir
    * "Saat Tipi" yazisinin olmadigi kontrol edilir
    * "Bekleme modu süre seçimi" yazisinin olmadigi kontrol edilir
    * "BİR FOTOĞRAF DAHA EKLE" yazisinin olmadigi kontrol edilir
    * Uygulama kill edilip 30 sn sonra acilir
    * 5 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Ayarlar alanina tiklanir
    * 5 saniye bekle
    * Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    * Appbar subtitle "Vega Leisure" texti kontrol edilir
    * "Bekleme Ekranı Ayarları" butonuna basilir
    * 5 saniye bekle
    * "SEÇINIZ" yazisi kontrol edilir
    * "Bekleme Modu" yazisi kontrol edilir
    * "Saat Tipi" yazisinin olmadigi kontrol edilir
    * "Bekleme modu süre seçimi" yazisinin olmadigi kontrol edilir
    * "BİR FOTOĞRAF DAHA EKLE" yazisinin olmadigi kontrol edilir
    * navigasyondan geri tusuna basilir
    * navigasyondan geri tusuna basilir
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:030 Vega firin bekleme ekrani ayarlarida bekleme modu ekrani kapat uygulama arka alana atma kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Ayarlar alanina tiklanir
    * 5 saniye bekle
    * Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    * Appbar subtitle "Vega Leisure" texti kontrol edilir
    * "Bekleme Ekranı Ayarları" butonuna basilir
    * 5 saniye bekle
    * Bekleme Modu "Ekranı Kapat" olarak seçilir
    * 3 saniye bekle
    * "SEÇINIZ" yazisi kontrol edilir
    * "Bekleme Modu" yazisi kontrol edilir
    * "Saat Tipi" yazisinin olmadigi kontrol edilir
    * "Bekleme modu süre seçimi" yazisinin olmadigi kontrol edilir
    * "BİR FOTOĞRAF DAHA EKLE" yazisinin olmadigi kontrol edilir
    * 5 saniye bekle
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * 5 saniye bekle
    * Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    * Appbar subtitle "Vega Leisure" texti kontrol edilir
    * "Bekleme Ekranı Ayarları" butonuna basilir
    * 5 saniye bekle
    * "SEÇINIZ" yazisi kontrol edilir
    * "Bekleme Modu" yazisi kontrol edilir
    * "Saat Tipi" yazisinin olmadigi kontrol edilir
    * "Bekleme modu süre seçimi" yazisinin olmadigi kontrol edilir
    * "BİR FOTOĞRAF DAHA EKLE" yazisinin olmadigi kontrol edilir
    * navigasyondan geri tusuna basilir
    * navigasyondan geri tusuna basilir
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:031 Vega firin bekleme ekrani ayarlari bekleme modu fotograflari goster icerik kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Ayarlar alanina tiklanir
    * 5 saniye bekle
    * Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    * Appbar subtitle "Vega Leisure" texti kontrol edilir
    * "Bekleme Ekranı Ayarları" butonuna basilir
    * 5 saniye bekle
    * Bekleme Modu "Fotoğrafları Göster" olarak seçilir
    * "Bekleme Modu" yazisi kontrol edilir
    * "SEÇINIZ" yazisi kontrol edilir
    * "Bekleme Modu" yazisi kontrol edilir
    * "Fotoğraflar " yazisi icerdigi kontrol edilir
    * "Fotoğrafları Göster" yazisi kontrol edilir
    * "Bekleme modu süre seçimi" yazisi kontrol edilir
    * "BIR FOTOĞRAF DAHA EKLE" yazisi kontrol edilir
    * navigasyondan geri tusuna basilir
    * navigasyondan geri tusuna basilir
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:032 Vega firin bekleme ekrani ayarlari bekleme modu fotograflari goster kill etme kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Ayarlar alanina tiklanir
    * 5 saniye bekle
    * Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    * Appbar subtitle "Vega Leisure" texti kontrol edilir
    * "Bekleme Ekranı Ayarları" butonuna basilir
    * 5 saniye bekle
    * Bekleme Modu "Fotoğrafları Göster" olarak seçilir
    * 5 saniye bekle
    * Uygulama kill edilip 30 sn sonra acilir
    * 5 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Ayarlar alanina tiklanir
    * 5 saniye bekle
    * Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    * Appbar subtitle "Vega Leisure" texti kontrol edilir
    * "Bekleme Ekranı Ayarları" butonuna basilir
    * 5 saniye bekle
    * "Bekleme Modu" yazisi kontrol edilir
    * "SEÇINIZ" yazisi kontrol edilir
    * "Bekleme Modu" yazisi kontrol edilir
    * "Fotoğraflar " yazisi icerdigi kontrol edilir
    * "Fotoğrafları Göster" yazisi kontrol edilir
    * "Bekleme modu süre seçimi" yazisi kontrol edilir
    * "BIR FOTOĞRAF DAHA EKLE" yazisi kontrol edilir
    * navigasyondan geri tusuna basilir
    * navigasyondan geri tusuna basilir
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:033 Vega firin bekleme ekrani ayarlari bekleme modu fotograflari goster arka plana atma kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Ayarlar alanina tiklanir
    * 5 saniye bekle
    * Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    * Appbar subtitle "Vega Leisure" texti kontrol edilir
    * "Bekleme Ekranı Ayarları" butonuna basilir
    * 5 saniye bekle
    * Bekleme Modu "Fotoğrafları Göster" olarak seçilir
    * 5 saniye bekle
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * 5 saniye bekle
    * Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    * Appbar subtitle "Vega Leisure" texti kontrol edilir
    * "Bekleme Ekranı Ayarları" butonuna basilir
    * 5 saniye bekle
    * "Bekleme Modu" yazisi kontrol edilir
    * "SEÇINIZ" yazisi kontrol edilir
    * "Bekleme Modu" yazisi kontrol edilir
    * "Fotoğraflar " yazisi icerdigi kontrol edilir
    * "Fotoğrafları Göster" yazisi kontrol edilir
    * "Bekleme modu süre seçimi" yazisi kontrol edilir
    * "BIR FOTOĞRAF DAHA EKLE" yazisi kontrol edilir
    * navigasyondan geri tusuna basilir
    * navigasyondan geri tusuna basilir
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:034 Vega firin bekleme ekrani ayarlari bekleme modu fotograf ekle galeri kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Ayarlar alanina tiklanir
    * 5 saniye bekle
    * Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    * Appbar subtitle "Vega Leisure" texti kontrol edilir
    * "Bekleme Ekranı Ayarları" butonuna basilir
    * 5 saniye bekle
    * Bekleme Modu "Fotoğrafları Göster" olarak seçilir
    * 30 saniye bekle
    * "BIR FOTOĞRAF DAHA EKLE" butonuna basilir
    * 3 saniye bekle
    * "Galeriden Seç" butonuna basilir
    * 3 saniye bekle
    * "Vazgeç" butonuna basilir
    * 3 saniye bekle
    * navigasyondan geri tusuna basilir
    * navigasyondan geri tusuna basilir
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:035 Vega firin bekleme ekrani ayarlari bekleme modu fotograf ekle fotoğraf çek kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Ayarlar alanina tiklanir
    * 5 saniye bekle
    * Appbar "Bekleme Ekranı Ayarları" texti kontrol edilir
    * Appbar subtitle "Vega Leisure" texti kontrol edilir
    * "Bekleme Ekranı Ayarları" butonuna basilir
    * 5 saniye bekle
    * Bekleme Modu "Fotoğrafları Göster" olarak seçilir
    * 10 saniye bekle
    * "BIR FOTOĞRAF DAHA EKLE" butonuna basilir
    * 3 saniye bekle
    * "Fotoğraf Çek" butonuna basilir
    * 3 saniye bekle
    * Kamera izini kabul edilir
    * 3 saniye bekle
    * "CameraMode" yazisi kontrol edilir
    * "Vazgeç" butonuna basilir
    * 3 saniye bekle
    * navigasyondan geri tusuna basilir
    * navigasyondan geri tusuna basilir
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:036 Vega firin adimli pisirme sure girmeden sonraki adima gecme kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Program secimine basilir
    * 3 saniye bekle
    * "ADIMLI PIŞIRME" butonuna basilir
    * 3 saniye bekle
    * "BİR ADIM DAHA EKLE" butonuna basilir
    * 3 saniye bekle
    * "Uyarı" yazisi kontrol edilir
    * "Fırın çalıştırmak için süre seçmeniz gerekmektedir" yazisi kontrol edilir
    * "TAMAM" butonuna basilir
    * navigasyondan geri tusuna basilir
    * navigasyondan geri tusuna basilir
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:037 Vega firin adimli pisirme max bes adete kadar eklenebildigi kontrol edilir
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Program secimine basilir
    * 3 saniye bekle
    * "ADIMLI PIŞIRME" butonuna basilir
    * 5 saniye bekle
    * Pisirme suresi "00":"01" olarak ayarlanir
    * 3 saniye bekle
    * "BİR ADIM DAHA EKLE" butonuna basilir
    * 10 saniye bekle
    * "1. ADIM" yazisi kontrol edilir
    * "Alt+Üst Isıtma" yazisi kontrol edilir
    * "40 °C • 00:01" yazisi kontrol edilir
    * 3 saniye bekle
    * "BİR ADIM DAHA EKLE" butonuna basilir
    * 10 saniye bekle
    * "2. ADIM" yazisi kontrol edilir
    * 3 saniye bekle
    * "BİR ADIM DAHA EKLE" butonuna basilir
    * 10 saniye bekle
    * "3. ADIM" yazisi kontrol edilir
    * Ekrani "up" kaydir
    * "BİR ADIM DAHA EKLE" butonuna basilir
    * 10 saniye bekle
    * "4. ADIM" yazisi kontrol edilir
    * Ekrani "up" kaydir
    * "BİR ADIM DAHA EKLE" butonuna basilir
    * 10 saniye bekle
    * "5. ADIM" yazisi kontrol edilir
    * Ekrani "up" kaydir
    * "BİR ADIM DAHA EKLE" yazisinin olmadigi kontrol edilir
    * Eklenen bes adim silinir
    * navigasyondan geri tusuna basilir
    * navigasyondan geri tusuna basilir
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:038 Vega firin adimli pisirme baslatma kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Program secimine basilir
    * 3 saniye bekle
    * "ADIMLI PIŞIRME" butonuna basilir
    * 5 saniye bekle
    * Pisirme suresi "00":"01" olarak ayarlanir
    * 3 saniye bekle
    * "BİR ADIM DAHA EKLE" butonuna basilir
    * 10 saniye bekle
    * Program secimi "Izgara" olarak ayarlanir
    * 15 saniye bekle
    * Sicaklik "40  santigrat derece" olarak ayarlanir
    * 15 saniye bekle
    * Pisirme suresi "00":"01" olarak ayarlanir
    * 3 saniye bekle
    * "BİR ADIM DAHA EKLE" butonuna basilir
    * 3 saniye bekle
    * Programi baslat butonuna basilir
    * 10 saniye bekle
    * "Başarılı" yazisi kontrol edilir
    * "Adımlar Fırına gönderildi" yazisi kontrol edilir
    * "TAMAM" butonuna basilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * On isitma adimi varsa atlanir
    * 10 saniye bekle
    * Appbar "Vega Leisure" texti kontrol edilir
    * Appbar subtitle "mutfak" texti kontrol edilir
    * "1. ADIM" yazisi kontrol edilir
    * "40 °C" yazisi kontrol edilir
    * "Alt+Üst Isıtma" yazisi kontrol edilir
    * "Sonraki Adım: Izgara" yazisi kontrol edilir
    * "Kalan Süre" yazisi kontrol edilir
    * "00:02" yazisi kontrol edilir
    * 30 saniye bekle
    * "00:01" elementini bekle
    * 20 saniye bekle
    * Appbar "Vega Leisure" texti kontrol edilir
    * Appbar subtitle "mutfak" texti kontrol edilir
    * "2. ADIM" yazisi kontrol edilir
    * "40 °C" yazisi kontrol edilir
    * "Izgara" yazisi kontrol edilir
    * "Önceki Adım: Alt+Üst Isıtma" yazisi kontrol edilir
    * "Kalan Süre" yazisi kontrol edilir
    * "00:01" yazisi kontrol edilir
    * "YEMEK HAZIR" elementini bekle
    * "YEMEK HAZIR" yazisi kontrol edilir
    * El ikonu kontrol edilir
    * "5 dakika daha pişirme devam etsin mi?" yazisi kontrol edilir
    * "DEVAM ET" yazisi kontrol edilir
    * Program sonu home tusuna basilir
    * 5 saniye bekle
    * Uygulama resetlenir
    * 10 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:039 Vega firin adimli pisirme tek adim ile baslatamama kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Program secimine basilir
    * 3 saniye bekle
    * "ADIMLI PIŞIRME" butonuna basilir
    * 5 saniye bekle
    * Pisirme suresi "00":"01" olarak ayarlanir
    * 3 saniye bekle
    * "BİR ADIM DAHA EKLE" butonuna basilir
    * 3 saniye bekle
    * Programi baslat butonuna basilir
    * "Hata" elementini bekle
    * "Hata" yazisi kontrol edilir
    * "Adımlı pişirme başlatabilmeniz için en az iki adım eklemeniz gerekiyor." yazisi kontrol edilir
    * "TAMAM" butonuna basilir
    * 3 saniye bekle
    * Uygulama resetlenir
    * 10 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:040 Vega firin adimli pisirme baslatma kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Program secimine basilir
    * 3 saniye bekle
    * "ADIMLI PIŞIRME" butonuna basilir
    * 5 saniye bekle
    * Pisirme suresi "00":"01" olarak ayarlanir
    * 3 saniye bekle
    * "BİR ADIM DAHA EKLE" butonuna basilir
    * 10 saniye bekle
    * Program secimi "Izgara" olarak ayarlanir
    * 15 saniye bekle
    * Sicaklik "40  santigrat derece" olarak ayarlanir
    * 15 saniye bekle
    * Pisirme suresi "00":"01" olarak ayarlanir
    * 3 saniye bekle
    * "BİR ADIM DAHA EKLE" butonuna basilir
    * 3 saniye bekle
    * Programi baslat butonuna basilir
    * 10 saniye bekle
    * "TAMAM" butonuna basilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * On isitma adimi varsa atlanir
    * 50 saniye bekle
    * "00:01" elementini bekle
    * 30 saniye bekle
    * "YEMEK HAZIR" elementini bekle
    * El ikonuna basilir
    * 3 saniye bekle
    * Program secimi "Pizza" olarak ayarlanir
    * 15 saniye bekle
    * Sicaklik "50  santigrat derece" olarak ayarlanir
    * 15 saniye bekle
    * Adimli pisirme edit play tusuna basilir
    * 15 saniye bekle
    * Appbar "Vega Leisure" texti kontrol edilir
    * Appbar subtitle "mutfak" texti kontrol edilir
    * "2. ADIM" yazisi kontrol edilir
    * "50 °C" yazisi kontrol edilir
    * "Pizza" yazisi kontrol edilir
    * "Önceki Adım: Alt+Üst Isıtma" yazisi kontrol edilir
    * "Kalan Süre" yazisi kontrol edilir
    * "00:01" yazisi kontrol edilir
    * 50 saniye bekle
    * "YEMEK HAZIR" elementini bekle
    * "YEMEK HAZIR" yazisi kontrol edilir
    * El ikonu kontrol edilir
    * "5 dakika daha pişirme devam etsin mi?" yazisi kontrol edilir
    * "DEVAM ET" yazisi kontrol edilir
    * Program sonu home tusuna basilir
    * 5 saniye bekle
    * Uygulama resetlenir
    * 10 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:041 Vega firin adimli pisirme sonrasi ek sure ile pisirmeye devam etme kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Program secimine basilir
    * 3 saniye bekle
    * "ADIMLI PIŞIRME" butonuna basilir
    * 5 saniye bekle
    * Pisirme suresi "00":"01" olarak ayarlanir
    * 3 saniye bekle
    * "BİR ADIM DAHA EKLE" butonuna basilir
    * 10 saniye bekle
    * Program secimi "Izgara" olarak ayarlanir
    * 15 saniye bekle
    * Sicaklik "40  santigrat derece" olarak ayarlanir
    * 15 saniye bekle
    * Pisirme suresi "00":"01" olarak ayarlanir
    * 3 saniye bekle
    * "BİR ADIM DAHA EKLE" butonuna basilir
    * 3 saniye bekle
    * Programi baslat butonuna basilir
    * 10 saniye bekle
    * "TAMAM" butonuna basilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * On isitma adimi varsa atlanir
    * 50 saniye bekle
    * "00:01" elementini bekle
    * 30 saniye bekle
    * "YEMEK HAZIR" elementini bekle
    * "DEVAM ET" butonuna basilir
    * 15 saniye bekle
    * Appbar "Vega Leisure" texti kontrol edilir
    * Appbar subtitle "mutfak" texti kontrol edilir
    * "2. ADIM" yazisi kontrol edilir
    * "40 °C" yazisi kontrol edilir
    * "Izgara" yazisi kontrol edilir
    * "Önceki Adım: Alt+Üst Isıtma" yazisi kontrol edilir
    * "Kalan Süre" yazisi kontrol edilir
    * "00:05" yazisi kontrol edilir
    * Vega firin stop butonuna basilir
    * "Tamam" butonuna basilir
    * 3 saniye bekle
    * Uygulama resetlenir
    * 10 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:042 Vega firin hazir tarifleri baget ekmek tarifinin firina gönderme kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Hazir tarifler basilir
    * 3 saniye bekle
    * "Damak Tadınıza Özel Tarifler" yazisi kontrol edilir
    * "Tüm Tarifler" yazisi kontrol edilir
    * "Favorilerim" yazisi kontrol edilir
    * Tum tarifler butonuna basilir
    * "Tüm Tarifler" yazisi kontrol edilir
    * "Baget Ekmek" yazisi sayfa kaydirarak bulunur
    * "Baget Ekmek" butonuna basilir
    * 3 saniye bekle
    * "Baget Ekmek" yazisi kontrol edilir
    * "0 SAAT 48 DK" yazisi kontrol edilir
    * "Ev yapımı bagetler hem çok kolay hem aşırı lezzetli!" yazisi kontrol edilir
    * "Malzemeler (4)" yazisi kontrol edilir
    * Ekrani "up" kaydir
    * "TARİFİ GÖRÜNTÜLE (9)" butonuna basilir
    * 3 saniye bekle
    * "Baget Ekmek" yazisi kontrol edilir
    * Ekrani "up" kaydir
    * Ekrani "up" kaydir
    * Ekrani "up" kaydir
    * Ekrani "up" kaydir
    * Firina gonder butonuna basilir
    * 3 saniye bekle
    * "Tarifi göndereceğiniz fırını seçin." yazisi kontrol edilir
    * "Cihaz" yazisi kontrol edilir
    * "TARİFİ FIRINA GÖNDER" butonuna basilir
    * 20 saniye bekle
    * "Uyarı" yazisi kontrol edilir
    * "Tarifi gönderme işlemi başarıyla tamamlandı!" yazisi kontrol edilir
    * "TAMAM" butonuna basilir
    * 10 saniye bekle
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * On isitma adimi varsa atlanir
    * 10 saniye bekle
    * "Baget Ekmek" program adi kontrol edilir
    * Program kalan sure "00:48" kontrol edilir
    * "Başlangıç Saati" yazisi kontrol edilir
    * "Kalan Süre" yazisi kontrol edilir
    * "Bitiş Saati" yazisi kontrol edilir
    * "AŞAMA: " yazisi kontrol edilir
    * Program asamasi "Ön ısıtma tamamlandı" texti kontrol edilir
    * Vega firin stop butonuna basilir
    * 3 saniye bekle
    * "Tamam" butonuna basilir
    * 3 saniye bekle
    * Uygulama resetlenir
    * 10 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:043 Vega firin hazir tarifleri dogum gunu pastasi tarifinin firina gönderme kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Hazir tarifler basilir
    * 3 saniye bekle
    * "Damak Tadınıza Özel Tarifler" yazisi kontrol edilir
    * "Tüm Tarifler" yazisi kontrol edilir
    * "Favorilerim" yazisi kontrol edilir
    * Tum tarifler butonuna basilir
    * "Tüm Tarifler" yazisi kontrol edilir
    * "Doğum Günü Pastası" yazisi sayfa kaydirarak bulunur
    * "Doğum Günü Pastası" butonuna basilir
    * 3 saniye bekle
    * "Doğum Günü Pastası" yazisi kontrol edilir
    * "0 SAAT 30 DK" yazisi kontrol edilir
    * "Çocuğunuz ya da misafirleriniz için olsa da bu tarifi uygulayarak hepsini memnun edeceğinizden emin olabilirsiniz!" yazisi kontrol edilir
    * "Malzemeler (6)" yazisi kontrol edilir
    * Ekrani "up" kaydir
    * "TARİFİ GÖRÜNTÜLE (12)" butonuna basilir
    * 3 saniye bekle
    * "Doğum Günü Pastası" yazisi kontrol edilir
    * Ekrani "up" kaydir
    * Ekrani "up" kaydir
    * Ekrani "up" kaydir
    * Ekrani "up" kaydir
    * Firina gonder butonuna basilir
    * 3 saniye bekle
    * "Tarifi göndereceğiniz fırını seçin." yazisi kontrol edilir
    * "Cihaz" yazisi kontrol edilir
    * "TARİFİ FIRINA GÖNDER" butonuna basilir
    * 20 saniye bekle
    * "Uyarı" yazisi kontrol edilir
    * "Tarifi gönderme işlemi başarıyla tamamlandı!" yazisi kontrol edilir
    * "TAMAM" butonuna basilir
    * 10 saniye bekle
    * "Doğum Günü Pastası" program adi kontrol edilir
    * "AŞAMA: " yazisi kontrol edilir
    * Vega firin stop butonuna basilir
    * 3 saniye bekle
    * "Tamam" butonuna basilir
    * 3 saniye bekle
    * Uygulama resetlenir
    * 10 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
  @VegaFirin
  Scenario:044 Vega firina yan menu hazir tariflerinden tarif gonderilemedigin kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * Yan menu ikonuna basilir
    * 3 saniye bekle
    * "Yemek Tarifleri" butonuna basilir
    * 3 saniye bekle
    * "Damak Tadınıza Özel Tarifler" yazisi kontrol edilir
    * "Tüm Tarifler" yazisi kontrol edilir
    * "Favorilerim" yazisi kontrol edilir
    * Tum tarifler butonuna basilir
    * "Tüm Tarifler" yazisi kontrol edilir
    * "Cheesecake" yazisi sayfa kaydirarak bulunur
    * "Cheesecake" butonuna basilir
    * 3 saniye bekle
    * "Cheesecake" yazisi kontrol edilir
    * "1 saat 20 dakika" yazisi kontrol edilir
    * "Sade olmasına rağmen en prestijli bu tatlıyı mutfağınızda daima servis edeceksiniz!" yazisi kontrol edilir
    * "Malzemeler (4)" yazisi kontrol edilir
    * Ekrani "up" kaydir
    * "TARİFİ GÖRÜNTÜLE (6)" butonuna basilir
    * 3 saniye bekle
    * "Cheesecake" yazisi kontrol edilir
    * Ekrani "up" kaydir
    * Ekrani "up" kaydir
    * Ekrani "up" kaydir
    * 3 saniye bekle
    * Firina gonder butonunun olmadigi kontrol edilir
    * 3 saniye bekle
  @VegaFirin
  Scenario:045 Vega firina ana ekran home menusu hazir tariflerinden tarif gonderilemedigin kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * "Home" butonuna basilir
    * 3 saniye bekle
    * "HOME" yazisi kontrol edilir
    * "YEMEK TARİFLERİ" butonuna basilir
    * 3 saniye bekle
    * "Damak Tadınıza Özel Tarifler" yazisi kontrol edilir
    * "Tüm Tarifler" yazisi kontrol edilir
    * "Favorilerim" yazisi kontrol edilir
    * Tum tarifler butonuna basilir
    * "Tüm Tarifler" yazisi kontrol edilir
    * "Cheesecake" yazisi sayfa kaydirarak bulunur
    * "Cheesecake" butonuna basilir
    * 3 saniye bekle
    * "Cheesecake" yazisi kontrol edilir
    * "1 saat 20 dakika" yazisi kontrol edilir
    * "Sade olmasına rağmen en prestijli bu tatlıyı mutfağınızda daima servis edeceksiniz!" yazisi kontrol edilir
    * "Malzemeler (4)" yazisi kontrol edilir
    * Ekrani "up" kaydir
    * "TARİFİ GÖRÜNTÜLE (6)" butonuna basilir
    * 3 saniye bekle
    * "Cheesecake" yazisi kontrol edilir
    * Ekrani "up" kaydir
    * Ekrani "up" kaydir
    * Ekrani "up" kaydir
    * 3 saniye bekle
    * Firina gonder butonunun olmadigi kontrol edilir
    * 3 saniye bekle
  @VegaFirin
  Scenario:046 Vega firin adimli pisirme baslatma kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * Program secimine basilir
    * "ADIMLI PIŞIRME" butonuna basilir
    * Pisirme suresi "00":"01" olarak ayarlanir
    * "BİR ADIM DAHA EKLE" butonuna basilir
    * Program secimi "Izgara" olarak ayarlanir
    * Sicaklik "40  santigrat derece" olarak ayarlanir
    * Pisirme suresi "00":"01" olarak ayarlanir
    * "BİR ADIM DAHA EKLE" butonuna basilir
    * Programi baslat butonuna basilir
    * "TAMAM" butonuna basilir
    * "Vega Leisure" detayina gidilir
    * On isitma adimi varsa atlanir
    * 50 saniye bekle
    * "00:01" elementini bekle
    * 30 saniye bekle
    * "YEMEK HAZIR" elementini bekle
    * El ikonuna basilir
    * Program secimi "Pizza" olarak ayarlanir
    * Sicaklik "50  santigrat derece" olarak ayarlanir
    * Adimli pisirme edit play tusuna basilir
    * Appbar "Vega Leisure" texti kontrol edilir
    * Appbar subtitle "mutfak" texti kontrol edilir
    * "2. ADIM" yazisi kontrol edilir
    * "50 °C" yazisi kontrol edilir
    * "Pizza" yazisi kontrol edilir
    * "Önceki Adım: Alt+Üst Isıtma" yazisi kontrol edilir
    * "Kalan Süre" yazisi kontrol edilir
    * "00:01" yazisi kontrol edilir
    * 50 saniye bekle
    * "YEMEK HAZIR" elementini bekle
    * "YEMEK HAZIR" yazisi kontrol edilir
    * El ikonu kontrol edilir
    * "5 dakika daha pişirme devam etsin mi?" yazisi kontrol edilir
    * "DEVAM ET" yazisi kontrol edilir
    * Program sonu home tusuna basilir
    * Uygulama resetlenir
    * Mutfak odasina gidilir
    * "Vega Leisure" detayina gidilir
    * Cihaz on ise standby tusuna basarak off konumuna getirilir













    
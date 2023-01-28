@TumSenaryolar
Feature: DigitalCamasırMakinesi
  Author: Hayri Odabas
  Date: 2022
  NOT: Bu test scriptlerini calistirmadan once uzaktan kontrolun acik olduguna emin olun
  @CamasirMakinesi
  Scenario: 001 Prologue CM Cihazlarim menusunden Prologue CM cihaz ekranini kontrolu
    Given Uygulama resetlenir
    Given Logout yapilir
    Given Uygulamaya "yazilimtestonay@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And Mutfak odasina gidilir
    And "CM Digital Pro" detayina gidilir
    Then "Açık" elementini bekle
    #And 10 saniye bekle
    Then Appbar "CM Digital Pro" texti kontrol edilir
    Then Appbar subtitle "Mutfak" texti kontrol edilir
    When "Arçelik" yazisi kontrol edilir
    When "Çamaşır Makinesi" yazisi kontrol edilir
    And 3 saniye bekle
  @CamasirMakinesi
  Scenario: 002 Prologue CM cihaz ekraninda standby tusu ile acilmasi ve cihaz ekraninin kontrol edilmesi
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And Mutfak odasina gidilir
    And "CM Digital Pro" detayina gidilir
    Then "Açık" elementini bekle
    #And 10 saniye bekle
    And Cihaz on konumuna getirilir
    #And 10 saniye bekle
    Then Appbar "CM Digital Pro" texti kontrol edilir
    Then Appbar subtitle "Mutfak" texti kontrol edilir
    When "Çamaşır Makinesi" yazisi kontrol edilir
    Then Favoriler bolumunun var oldugunu kontrol et
    Then Program secimi bolumnun var oldugunu kontrol et
    Then Sihirbaz bolumnun var oldugunu kontrol et
    Then Program secenekleri bolumunun olmadigi kontrol edilir
    And Cihaz off konumuna getirilir
    #And 10 saniye bekle
    Then "Program seçebilmek için cihazı açmanız gerekiyor." yazisi kontrol edilir
    And 3 saniye bekle
  @CamasirMakinesi
  Scenario: 003 Prologue CM acik iken cihaz sayfasinda uygulama arka plana atilip acildiginda baglanti kontrolu
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And Mutfak odasina gidilir
    And "CM Digital Pro" detayina gidilir
    Then "Açık" elementini bekle
    #And 10 saniye bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    Then Appbar "CM Digital Pro" texti kontrol edilir
    When "Arçelik" yazisi kontrol edilir
    Then Favoriler bolumunun var oldugunu kontrol et
    Then Program secimi bolumnun var oldugunu kontrol et
    Then Sihirbaz bolumnun var oldugunu kontrol et
    And Uygulamayi 30 saniye arka planda tut sonra aktive et
    And 10 saniye bekle
    Then Appbar "CM Digital Pro" texti kontrol edilir
    When "Arçelik" yazisi kontrol edilir
    When "Çamaşır Makinesi" yazisi kontrol edilir
    Then Favoriler bolumunun var oldugunu kontrol et
    Then Program secimi bolumnun var oldugunu kontrol et
    Then Sihirbaz bolumnun var oldugunu kontrol et
    Then Program secenekleri bolumunun olmadigi kontrol edilir
    And Cihaz off konumuna getirilir
    And 10 saniye bekle
    Then "Program seçebilmek için cihazı açmanız gerekiyor." yazisi kontrol edilir
    And 3 saniye bekle
  @CamasirMakinesi
  Scenario: 004 Prologue CM program secim ekraninin kontrol bilgilerinin kontrolu
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And Mutfak odasina gidilir
    And "CM Digital Pro" detayina gidilir
    Then "Açık" elementini bekle
    #And 10 saniye bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Program secimine basilir
    And 3 saniye bekle
    Then Appbar "CM Digital Pro" texti kontrol edilir
    Then Appbar subtitle "mutfak" texti kontrol edilir
    Then "Program" yazisi kontrol edilir
    Then "Sıcaklık" yazisi kontrol edilir
    Then "Devir" yazisi kontrol edilir
    Then "Buhar" yazisi kontrol edilir
    Then "Ön yıkama" yazisi kontrol edilir
    Then "İlave Su" yazisi kontrol edilir
    Then "Hızlı yıkama +" yazisi kontrol edilir
    And Ekrani "up" kaydir
    Then "Yoğun" yazisi kontrol edilir
    Then "Akıllı Kırışık Azaltma" yazisi kontrol edilir
    Then "Program Süresi" yazisi kontrol edilir
    Then "Ekstra Durulama Sayısı" yazisi kontrol edilir
    Then "Gece Modu" yazisi kontrol edilir
    Then "Kırışık Azaltma" yazisi kontrol edilir
    Then "Suda bastırma" yazisi kontrol edilir
    And 3 saniye bekle
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
    And Cihaz off konumuna getirilir
    #And 10 saniye bekle
  @CamasirMakinesi
  Scenario: 005 Prologue CM oda degistirme kontrolu
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And Mutfak odasina gidilir
    #And 3 saniye bekle
    And "CM Digital Pro" detayina gidilir
    Then "Açık" elementini bekle
    #And 10 saniye bekle
    When Camasir makinesini banyo odasina tasi
    And 10 saniye bekle
    And Banyo odasina gidilir
    And 3 saniye bekle
    And "CM Digital Pro" detayina gidilir
    Then "Açık" elementini bekle
    #And 10 saniye bekle
    And Camasir makinesini mutfak odasina geri tasi
    And 10 saniye bekle
    And Mutfak odasina geri gidilir
    And 3 saniye bekle
    Then "CM Digital Pro" urun kontrolu
  @CamasirMakinesi
  Scenario:006 Prologue CM uygulamayi kill edip actiktan sonra urun detay ekraninin kontrolleri
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And Mutfak odasina gidilir
    #And 3 saniye bekle
    And "CM Digital Pro" detayina gidilir
    Then "Açık" elementini bekle
    #And 10 saniye bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Uygulama kill edilip 30 sn sonra acilir
    And 10 saniye bekle
    And Mutfak odasina gidilir
    When "CM Digital Pro" detayina gidilir
    Then "Açık" elementini bekle
    #And 10 saniye bekle
    Then Favoriler bolumunun var oldugunu kontrol et
    Then Program secimi bolumnun var oldugunu kontrol et
    Then Sihirbaz bolumnun var oldugunu kontrol et
    Then Program secenekleri bolumunun olmadigi kontrol edilir
    And Cihaz off konumuna getirilir
    And 10 saniye bekle
    Then "Program seçebilmek için cihazı açmanız gerekiyor." yazisi kontrol edilir
    And 3 saniye bekle
  @CamasirMakinesi
  Scenario:007 Prologue CM cihaz bilgilerinin kontrolleri
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And Mutfak odasina gidilir
    #And 3 saniye bekle
    And "CM Digital Pro" detayina gidilir
    Then "Açık" elementini bekle
    #And 10 saniye bekle
    And Cihaz bilgilerine tiklanir
    And 10 saniye bekle
    Then "CİHAZ KİMLİĞİ" yazisi kontrol edilir
    Then "Arçelik" markasi kontrol edilir
    Then "7178521100" Model numarasi kontrol edilir
    Then "F999996512573253295214" Digital kimlik no kontrol edilir
    Then "VERSİYON" yazisi kontrol edilir
    Then "0.39.1 / 0.7.0 / 3.6.41 / - / -" versiyon numarasi kontrol edilir
  @CamasirMakinesi
  Scenario:008 Prologue CM cihaz favoriler ekranina girdiginin kontrolleri
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And Mutfak odasina gidilir
    #And 3 saniye bekle
    And "CM Digital Pro" detayina gidilir
    Then "Açık" elementini bekle
    #And 10 saniye bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Favoriler butonuna basilir
    And 3 saniye bekle
    Then Kalp ikonu kontrol edilir
    Then "Henüz favori programınız bulunmuyor." yazisi kontrol edilir
    Then Favori program bilgi texti kontrol edilir
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
    And Cihaz off konumuna getirilir
    #And 10 saniye bekle
  @CamasirMakinesi
  Scenario:009 Prologue CM cihaz sihirbaz ekranina girdiginin kontrolleri
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And Mutfak odasina gidilir
    #And 3 saniye bekle
    And "CM Digital Pro" detayina gidilir
    Then "Açık" elementini bekle
    #And 10 saniye bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Sihirbaz secimine tiklanir
    And 3 saniye bekle
    Then "Pamuklu" yazisi kontrol edilir
    Then "Sentetik" yazisi kontrol edilir
    Then "Pamuklu-Sentetik karma" yazisi kontrol edilir
    Then "Hassas" yazisi kontrol edilir
    Then "Yün" yazisi kontrol edilir
    Then "Spor/Fitness" yazisi kontrol edilir
    Then "Perde" yazisi kontrol edilir
    Then "İç çamaşırı" yazisi kontrol edilir
    Then "Bebek" yazisi kontrol edilir
    Then "Yatak takımı" yazisi kontrol edilir
    Then "Kot" yazisi kontrol edilir
    Then "Mayo" yazisi kontrol edilir
    Then "Bluz" yazisi kontrol edilir
    Then "Hırka" yazisi kontrol edilir
    And Sayfanin altina ilerle
    Then "Pantolon/Şort" yazisi kontrol edilir
    Then "Kaban" yazisi kontrol edilir
    Then "Ceket" yazisi kontrol edilir
    Then "Abiye/Gece Elbisesi" yazisi kontrol edilir
    Then "Etek" yazisi kontrol edilir
    Then "Outdoor" yazisi kontrol edilir
    Then "Havlu/Bornoz" yazisi kontrol edilir
    Then "Nevresim" yazisi kontrol edilir
    Then "Atkı/Bere/Eldiven" yazisi kontrol edilir
    Then "Tişört" yazisi kontrol edilir
    Then "Yumuşak Oyuncaklar" yazisi kontrol edilir
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
    And Cihaz off konumuna getirilir
    And 10 saniye bekle
  @CamasirMakinesi
  Scenario:010 Prologue CM kapali iken cihaz ekrani bilgilerinin kontrol edilmesi
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And Mutfak odasina gidilir
    #And 3 saniye bekle
    And "CM Digital Pro" detayina gidilir
    Then "Açık" elementini bekle
    #And 10 saniye bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    Then Appbar "CM Digital Pro" texti kontrol edilir
    Then Appbar subtitle "Mutfak" texti kontrol edilir
    Then Uzaktan kontrol "Açık" texti kontrolu
    Then "Arçelik" yazisi kontrol edilir
    When "Çamaşır Makinesi" yazisi kontrol edilir
    Then Program secenekleri bolumunun olmadigi kontrol edilir
    And Cihaz off konumuna getirilir
    And 10 saniye bekle
  @CamasirMakinesi
  Scenario:011 Prologue CM cihaz ekraninda standby tusu ile acilmasi ve cihaz ekraninin kontrol edilmesi
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And Mutfak odasina gidilir
    #And 3 saniye bekle
    And "CM Digital Pro" detayina gidilir
    Then "Açık" elementini bekle
    #And 10 saniye bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    Then Appbar "CM Digital Pro" texti kontrol edilir
    Then Appbar subtitle "Mutfak" texti kontrol edilir
    Then Uzaktan kontrol "Açık" texti kontrolu
    Then "Arçelik" yazisi kontrol edilir
    When "Çamaşır Makinesi" yazisi kontrol edilir
    Then Favoriler bolumunun var oldugunu kontrol et
    Then Program secimi bolumnun var oldugunu kontrol et
    Then Sihirbaz bolumnun var oldugunu kontrol et
    Then Program secenekleri bolumunun olmadigi kontrol edilir
    And Cihaz off konumuna getirilir
    And 10 saniye bekle
    Then "Program seçebilmek için cihazı açmanız gerekiyor." yazisi kontrol edilir
    And 3 saniye bekle
  @CamasirMakinesi
  Scenario:012 Prologue CM acik iken cihaz sayfasinda uygulama arka plana atilip acildiginda baglanti kontrolu
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And Mutfak odasina gidilir
    #And 3 saniye bekle
    And "CM Digital Pro" detayina gidilir
    Then "Açık" elementini bekle
    #And 10 saniye bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    Then Appbar "CM Digital Pro" texti kontrol edilir
    Then Favoriler bolumunun var oldugunu kontrol et
    Then Program secimi bolumnun var oldugunu kontrol et
    Then Sihirbaz bolumnun var oldugunu kontrol et
    Then Program secimi bolumnun var oldugunu kontrol et
    And Uygulamayi 30 saniye arka planda tut sonra aktive et
    And 10 saniye bekle
    Then "Açık" elementini bekle
    Then Appbar "CM Digital Pro" texti kontrol edilir
    Then Favoriler bolumunun var oldugunu kontrol et
    Then Program secimi bolumnun var oldugunu kontrol et
    Then Sihirbaz bolumnun var oldugunu kontrol et
    Then Program secimi bolumnun var oldugunu kontrol et
    And Cihaz off konumuna getirilir
    #And 10 saniye bekle
    Then "Program seçebilmek için cihazı açmanız gerekiyor." yazisi kontrol edilir
    And 3 saniye bekle
  @CamasirMakinesi
  Scenario:013 Prologue CM program calisirken pause ekranindan duzenleme ekranina gecis ve duzenleme ekranindan programi devam ettirme kontrolu
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And Mutfak odasina gidilir
    #And 3 saniye bekle
    And "CM Digital Pro" detayina gidilir
    Then "Açık" elementini bekle
    #And 10 saniye bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Program secimine basilir
    And 3 saniye bekle
    And Program secimi "Pamuklu" olarak ayarlanir
    And 10 saniye bekle
    Then Appbar "CM Digital Pro" texti kontrol edilir
    Then Appbar subtitle "mutfak" texti kontrol edilir
    Then Favori secimi ikonu kontrol edilir
    Then "Pamuklu" yazisi kontrol edilir
    Then "40 °C" yazisi kontrol edilir
    Then "1200" yazisi kontrol edilir
    Then "Buhar" yazisi kontrol edilir
    Then Buhar yardimci fonsiyonunun kapali oldugu kontrol edilir
    Then "Ön yıkama" yazisi kontrol edilir
    Then On yikananin kapali oldugu kontrol edilir
    Then "İlave Su" yazisi kontrol edilir
    Then Ilave su yardimci fonsiyonunun kapali oldugu kontrol edilir
    Then "Hızlı yıkama +" yazisi kontrol edilir
    Then Hizli yikama fonsiyonunun kapali oldugu kontrol edilir
    Then "Yoğun" yazisi kontrol edilir
    And Ekrani "up" kaydir
    Then Yogun yardimci fonsiyonunun acik oldugu kontrol edilir
    Then "Akıllı Kırışık Azaltma" yazisi kontrol edilir
    Then Akilli Kirisik Azaltma yardimci fonsiyonunun kapali oldugu kontrol edilir
#    Then "Program Süresi" yazisi kontrol edilir
#    Then "02:25" yazisi kontrol edilir
    Then "Kişiselleşmiş Süre Seviyesi" yazisi kontrol edilir
    Then Kisisellestirilmis Sure Seviyesi kapali oldugu kontrol edilir
    Then "Ekstra Durulama Sayısı" texti bulunup kontrol edilir
    Then Extra Durulama Sayisi sifir oldugu kontrol edilir
    Then "Gece Modu" yazisi kontrol edilir
    Then Gece Modu kapali oldugu kontrol edilir
    And Ekrani "up" kaydir
    Then "Kırışık Azaltma" yazisi kontrol edilir
    Then Kirisik azaltma fonsiyonunun kapali oldugu kontrol edilir
    Then "Suda bastırma" yazisi kontrol edilir
    Then Suda bastirma fonsiyonunun kapali oldugu kontrol edilir
    Then "Tüketim" yazisi kontrol edilir
    Then "PROGRAMI BAŞLAT" yazisi kontrol edilir
    Then Zaman erteleme butonu kontrol edilir
    Then "BİTİŞ SAATİ" yazisi kontrol edilir
    And navigasyondan geri tusuna basilir
    And Cihaz off konumuna getirilir
    #And 10 saniye bekle
  @CamasirMakinesi
  Scenario:014 Prologue CM Eko 40-60 programinin calistirilmasinin kontrol edilmesi
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And Mutfak odasina gidilir
    #And 3 saniye bekle
    And "CM Digital Pro" detayina gidilir
    Then "Açık" elementini bekle
    #And 10 saniye bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Program secimine basilir
    And 3 saniye bekle
    And Program secimi "Eco 40-60" olarak ayarlanir
    And 10 saniye bekle
    And Sicaklik "60  santigrat derece" olarak ayarlanir
    And 10 saniye bekle
    Then Program toplam suresi "02:43" kontrol edilir
    Then Programi baslat butonuna basilir
    And 10 saniye bekle
    Then Appbar "CM Digital Pro" texti kontrol edilir
    Then Appbar subtitle "mutfak" texti kontrol edilir
    Then Uzaktan kontrol "Açık" texti kontrolu
    Then "Eco 40-60" program adi kontrol edilir
    Then "Kalan Süre" yazisi kontrol edilir
    Then Program kalan sure "02:43" kontrol edilir
    Then Program asamasi "Program başlıyor" texti kontrol edilir
    And 55 saniye bekle
    Then Program asamasi "Yıkama" texti kontrol edilir
    Then "Kalan Süre" yazisi kontrol edilir
    Then Pause butonu kontrol edilir
    And Program bekleme moduna alinir
    Then Stop butonuna basilir
    And "Tamam" textine basilir
  @CamasirMakinesi
  Scenario:015 Prologue CM Pamuklu programi calisirken uygulama arka plana atilip tekrar acilmasinin kontrol edilmesi
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And Mutfak odasina gidilir
    #And 3 saniye bekle
    And "CM Digital Pro" detayina gidilir
    Then "Açık" elementini bekle
    #And 10 saniye bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Program secimine basilir
    And 3 saniye bekle
    And Program secimi "Pamuklu" olarak ayarlanir
    And 10 saniye bekle
    And Devir secimi "1000" rpm olarak ayarlanir
    And 3 saniye bekle
    And Ilave su yardimci fonksiyonu on yapilir
    And 10 saniye bekle
    Then Program toplam suresi "02:25" kontrol edilir
    And Programi baslat butonuna basilir
    And 10 saniye bekle
    Then "Pamuklu" program adi kontrol edilir
    Then Program kalan sure "02:25" kontrol edilir
    Then Program asamasi "Program başlıyor" texti kontrol edilir
    And 10 saniye bekle
    And Uygulamayi 30 saniye arka planda tut sonra aktive et
    And 10 saniye bekle
    Then "CM Digital Pro" yazisi kontrol edilir
    Then Program asamasi "Yıkama" texti kontrol edilir
    And 10 saniye bekle
    Then Uzaktan kontrol "Açık" texti kontrolu
    Then "Kalan Süre" yazisi kontrol edilir
    Then Program kalan sure "02:23" kontrol edilir
    Then Pause butonu kontrol edilir
    Then El ikonu kontrol edilir
    And Program bekleme moduna alinir
    Then Stop butonuna basilir
    And "Tamam" textine basilir
  @CamasirMakinesi
  Scenario:016 Prologue CM Günlük Hizli 14 programi calisirken uygulama kapatilip tekrar acilmasinin kontrol edilmesi
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And Mutfak odasina gidilir
    #And 3 saniye bekle
    And "CM Digital Pro" detayina gidilir
    Then "Açık" elementini bekle
    #And 10 saniye bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Program secimine basilir
    And 3 saniye bekle
    And Program secimi "Günlük Hızlı 14" olarak ayarlanir
    And 10 saniye bekle
    Then Program toplam suresi "00:28" kontrol edilir
    And Programi baslat butonuna basilir
    And 10 saniye bekle
    Then "Günlük Hızlı 14" program adi kontrol edilir
    Then Program kalan sure "00:28" kontrol edilir
    Then Program asamasi "Program başlıyor" texti kontrol edilir
    And 10 saniye bekle
    And Uygulama kill edilip 30 sn sonra acilir
    And 10 saniye bekle
    Given Uygulama resetlenir
    Given 10 saniye bekle
    And Mutfak odasina gidilir
    And 10 saniye bekle
    Then "CM Digital Pro" icerigi konrol edilir
    And "CM Digital Pro" detayina gidilir
    Then Appbar "CM Digital Pro" texti kontrol edilir
    Then Appbar subtitle "mutfak" texti kontrol edilir
    Then Uzaktan kontrol "Açık" texti kontrolu
    Then "Günlük Hızlı 14" program adi kontrol edilir
    Then "Kalan Süre" yazisi kontrol edilir
    #Then "00:26" elementini bekle
    Then Program kalan sure "00:26" kontrol edilir
    Then Program asamasi "Yıkama" texti kontrol edilir
    Then Pause butonu kontrol edilir
    Then El ikonu kontrol edilir
    And Program bekleme moduna alinir
    Then Stop butonuna basilir
    And "Tamam" textine basilir
  @CamasirMakinesi
  Scenario:017 Prologue CM Sentetik programi calisirken duzenleme ekranina gecisin kontrol edilmesi
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And Mutfak odasina gidilir
    #And 3 saniye bekle
    And "CM Digital Pro" detayina gidilir
    Then "Açık" elementini bekle
    #And 10 saniye bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Program secimine basilir
    And 3 saniye bekle
    And Program secimi "Sentetik" olarak ayarlanir
    And 5 saniye bekle
    And Programi baslat butonuna basilir
    And 10 saniye bekle
    Then Program kalan sure "02:59" kontrol edilir
    Then Program asamasi "Program başlıyor" texti kontrol edilir
    And 10 saniye bekle
    And El ikonuna basilir
    And 10 saniye bekle
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
    Then Appbar "CM Digital Pro" texti kontrol edilir
    Then Appbar subtitle "mutfak" texti kontrol edilir
    Then Uzaktan kontrol "Açık" texti kontrolu
    Then "Sentetik" program adi kontrol edilir
    Then "Kalan Süre" yazisi kontrol edilir
    Then Program kalan sure "02:58" kontrol edilir
    Then Program asamasi "Yıkama" texti kontrol edilir
    Then Pause butonu kontrol edilir
    Then El ikonu kontrol edilir
    And Program bekleme moduna alinir
    And 10 saniye bekle
    Then Stop butonuna basilir
    And "Tamam" textine basilir
  @CamasirMakinesi
  Scenario:018 Prologue CM program calisirken pause  ekranindan duzenleme ekranina gecis ve duzenleme ekranindan programi devam ettirme kontrolu
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And Mutfak odasina gidilir
    #And 3 saniye bekle
    And "CM Digital Pro" detayina gidilir
    Then "Açık" elementini bekle
    #And 10 saniye bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Program secimine basilir
    And 3 saniye bekle
    And Program secimi "Leke Programı" olarak ayarlanir
    And 10 saniye bekle
    And On yikana on yapilir
    And 10 saniye bekle
    Then Program toplam suresi "03:08" kontrol edilir
    And Programi baslat butonuna basilir
    And 10 saniye bekle
    Then "Leke Programı" program adi kontrol edilir
    Then Program kalan sure "03:08" kontrol edilir
    Then "Ön yıkama" yazisi kontrol edilir
    And Program bekleme moduna alinir
    And 10 saniye bekle
    Then Program asamasi "Duraklatıldı" texti kontrol edilir
    And El ikonuna basilir
    And 10 saniye bekle
    Then "Leke Programı" program adi kontrol edilir
    Then On yikama yardimci fonksiyonunun on oldugu kontrol edilir
    And Program secimi "Gömlek" olarak ayarlanir
    And 10 saniye bekle
    And Sicaklik "30 °C" olarak ayarlanir
    And 10 saniye bekle
    And Program devam butonuna basilir
    And 5 saniye bekle
    Then "Gömlek" program adi kontrol edilir
    Then Program kalan sure "02:27" kontrol edilir
    Then Program asamasi "Program başlıyor" texti kontrol edilir
    Then Pause butonu kontrol edilir
    Then El ikonu kontrol edilir
    And Program bekleme moduna alinir
    And 10 saniye bekle
    Then Stop butonuna basilir
    And "Tamam" textine basilir
  @CamasirMakinesi
  Scenario:019 Prologue CM zaman ertelemeli calisma programi baslatma ve iptal etme kontrolu
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And Mutfak odasina gidilir
    #And 3 saniye bekle
    And "CM Digital Pro" detayina gidilir
    Then "Açık" elementini bekle
    #And 10 saniye bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Program secimine basilir
    And 3 saniye bekle
    And Zaman erteleme butonuna basilir
    And 3 saniye bekle
    And Saat kismina basilir
    And 3 saniye bekle
    And Ertelem zamani saat "06" olarak setlenir
    And 3 saniye bekle
    And Erteleme zamani dakika "15" olarak setlenir
    And 3 saniye bekle
    And "Seç" butonuna basilir
    And 3 saniye bekle
    And Programi başlat zaman geciktirme butonuna basilir
    And 3 saniye bekle
    Then "Pamuklu" program adi kontrol edilir
    Then "Başlangıç Saati" yazisi kontrol edilir
    Then "Bitiş Saati" yazisi kontrol edilir
    And Program bekleme moduna alinir
    And 10 saniye bekle
    Then Stop butonuna basilir
    And "Tamam" butonuna basilir
  @CamasirMakinesi
  Scenario:020 Prologue CM Sihirbaz uzerinden program basaltilmasinin kontrol edilmesi
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And Mutfak odasina gidilir
    #And 3 saniye bekle
    And "CM Digital Pro" detayina gidilir
    Then "Açık" elementini bekle
    #And 10 saniye bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Sihirbaz secimine tiklanir
    And 3 saniye bekle
    And Sihirbaz ekraninda "Perde" secilir
    And 3 saniye bekle
    And "Renk Tipi seçin" butonuna basilir
    And 3 saniye bekle
    And Renk tipi beyaz secilir
    And 3 saniye bekle
    And "Kir Seviyesi seçin" butonuna basilir
    And 3 saniye bekle
    And Orta secimine basilir
    And 3 saniye bekle
    And "Önerilen Program seçin" butonuna basilir
    And 3 saniye bekle
    Then "Size Uygun Programlar" yazisi kontrol edilir
    Then "Önerilen Program" yazisi kontrol edilir
    Then "Yünlü (Elde Yıkama)| Sıcaklık: 40 °C, Devir: 1200, İlave Su" yazisi kontrol edilir
    And Programi baslat butonuna basilir
    And 3 saniye bekle
    Then "Yünlü (Elde Yıkama)" program adi kontrol edilir
    Then Program kalan sure "01:06" kontrol edilir
    Then Program asamasi "Program başlıyor" texti kontrol edilir
    Then Pause butonu kontrol edilir
    Then El ikonu kontrol edilir
    And Program bekleme moduna alinir
    And 10 saniye bekle
    Then Stop butonuna basilir
    And "Tamam" butonuna basilir
  @CamasirMakinesi
  Scenario:021 Prologue CM favori program secilmesi ve Favorilere uzerinden programin baslatilmasi
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And Mutfak odasina gidilir
    #And 3 saniye bekle
    And "CM Digital Pro" detayina gidilir
    Then "Açık" elementini bekle
    #And 10 saniye bekle
    And Cihaz on konumuna getirilir
    And 20 saniye bekle
    And Program secimine basilir
    And 3 saniye bekle
    And Program secimi "Hijyen+" olarak ayarlanir
    And 20 saniye bekle
    And Devir secimi "600" rpm olarak ayarlanir
    And 3 saniye bekle
    And Kalp ikonuna basilir
    And 3 saniye bekle
    And Favori ekle ekraninda program adi Fav Yikama yazilir
    And Favori ekle tamam butonuna basilir
    And 3 saniye bekle
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
    And Favoriler butonuna basilir
    And 3 saniye bekle
    Then Favori program "Hijyen+ | Sıcaklık: 60 °C, Devir: 600,  Buhar Süre: 03:20" adi kontrol edilir
    Then "Fav Yikama" yazisi kontrol edilir
    And Favori ekraninda Play butonuna basilir
    And 10 saniye bekle
    And Programi baslat butonuna basilir
    And 10 saniye bekle
    Then "Hijyen+" program adi kontrol edilir
    Then Program kalan sure "03:20" kontrol edilir
    And 40 saniye bekle
    Then Program asamasi "Yıkama" texti kontrol edilir
    And 3 saniye bekle
    And Program bekleme moduna alinir
    And 10 saniye bekle
    Then Stop butonuna basilir
    And "Tamam" textine basilir
    And 10 saniye bekle
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And Mutfak odasina gidilir
    #And 3 saniye bekle
    And "CM Digital Pro" detayina gidilir
    Then "Açık" elementini bekle
    And "CM Digital Pro" detayina gidilir
    When 10 saniye bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Favoriler butonuna basilir
    And 3 saniye bekle
    And Arti butonuna basilir
    And 3 saniye bekle
    And Cop kovasi ikonuna basilir
    And 3 saniye bekle
    And Favori silme tamam butonuna basilir
    And 10 saniye bekle
  @CamasirMakinesi
  Scenario:022 Prologue CM son calistirilan programin cihaz gecmisinde gosterilmesinin kontrolu
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And Mutfak odasina gidilir
    #And 3 saniye bekle
    And "CM Digital Pro" detayina gidilir
    Then "Açık" elementini bekle
    #And 10 saniye bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Program secimine basilir
    And 3 saniye bekle
    And Program secimi "Eco 40-60" olarak ayarlanir
    And 20 saniye bekle
    And Programi baslat butonuna basilir
    And 10 saniye bekle
    Then "Eco 40-60" program adi kontrol edilir
    Then Program kalan sure "02:43" kontrol edilir
    Then Program asamasi "Program başlıyor" texti kontrol edilir
    And 50 saniye bekle
    Then Program asamasi "Yıkama" texti kontrol edilir
    And Program bekleme moduna alinir
    And 10 saniye bekle
    Then Stop butonuna basilir
    And 10 saniye bekle
    And "Tamam" butonuna basilir
    And 3 saniye bekle
    Given Uygulama resetlenir
    And Mutfak odasina gidilir
    And "CM Digital Pro" detayina gidilir
    When 10 saniye bekle
    Then "Program seçebilmek için cihazı açmanız gerekiyor." yazisi kontrol edilir
    And Sayfanin altina ilerle
    Then "Eco 40-60" yazisi kontrol edilir
  @CamasirMakinesi
  Scenario:023 Prologue CM Cihaz Ayarları menüsünde tuş sesi ayarının değiştirilmesinin kontrol edilmesi
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And Mutfak odasina gidilir
    #And 3 saniye bekle
    And "CM Digital Pro" detayina gidilir
    Then "Açık" elementini bekle
    #And 10 saniye bekle
    And Cihaz on konumuna getirilir
    And 20 saniye bekle
    And Ayarlar alanina tiklanir
    And 3 saniye bekle
    And "Cihaz Ayarları" textine basilir
    And 10 saniye bekle
    And Tus sesi dusuk secilir
    And 3 saniye bekle
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
    And Cihaz off konumuna getirilir
    And 10 saniye bekle
    Then "Program seçebilmek için cihazı açmanız gerekiyor." yazisi kontrol edilir
    And Uygulama kill edilip 30 sn sonra acilir
    And 10 saniye bekle
    And Mutfak odasina gidilir
    And 3 saniye bekle
    Then "CM Digital Pro" icerigi konrol edilir
    And "CM Digital Pro" detayina gidilir
    When 10 saniye bekle
    And Cihaz on konumuna getirilir
    And 20 saniye bekle
    And Ayarlar alanina tiklanir
    And 3 saniye bekle
    And "Cihaz Ayarları" butonuna basilir
    And 10 saniye bekle
    Then "Düşük" yazisi kontrol edilir
    And Tus sesi yuksek secilir
    And 3 saniye bekle
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
  @CamasirMakinesi
  Scenario:024 Prologue CM download programı indirme ve başlatma'nın kontrol edilmesi
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And Mutfak odasina gidilir
    #And 3 saniye bekle
    And "CM Digital Pro" detayina gidilir
    Then "Açık" elementini bekle
    #And 10 saniye bekle
    And Cihaz on konumuna getirilir
    And 20 saniye bekle
    And Ayarlar alanina tiklanir
    And 3 saniye bekle
    And Indirilen program yonetimine tiklanir
    And 3 saniye bekle
    And "Spor" textine basilir
    And 3 saniye bekle
    Then Program indir butonuna basilir
    And 10 saniye bekle
    Then Program indirildikten sonra tamam butonuna basilir
    And 3 saniye bekle
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
    And navigasyondan geri tusuna basilir
    And 10 saniye bekle
    And Program secimine basilir
    And 3 saniye bekle
    And Programi baslat butonuna basilir
    And 10 saniye bekle
    Then "Spor" program adi kontrol edilir
    Then Program kalan sure "01:32" kontrol edilir
    Then Program asamasi "Program başlıyor" texti kontrol edilir
    And 10 saniye bekle
    Then Program asamasi "Yıkama" texti kontrol edilir
    And Program bekleme moduna alinir
    And 10 saniye bekle
    Then Stop butonuna basilir
    And 20 saniye bekle
    And "Tamam" butonuna basilir
    And 10 saniye bekle
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And Mutfak odasina gidilir
    #And 3 saniye bekle
    And "CM Digital Pro" detayina gidilir
    Then "Açık" elementini bekle
    When 10 saniye bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Ayarlar alanina tiklanir
    And 3 saniye bekle
    And Indirilen program yonetimine tiklanir
    And 3 saniye bekle
    And "Karma" textine basilir
    And 10 saniye bekle
    Then Program indir butonuna basilir
    And 10 saniye bekle
    Then Program indirildikten sonra tamam butonuna basilir
    And 3 saniye bekle
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
    And Cihaz off konumuna getirilir
    And 10 saniye bekle
    Then "Program seçebilmek için cihazı açmanız gerekiyor." yazisi kontrol edilir
  @CamasirMakinesi
  Scenario:025 Prologue CM Kapak acik uyarisinin kapatilmasi
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And Mutfak odasina gidilir
    #And 3 saniye bekle
    And "CM Digital Pro" detayina gidilir
    Then "Açık" elementini bekle
    #And 10 saniye bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Ayarlar alanina tiklanir
    And 3 saniye bekle
    And Bildirim tercihlerine gidilir
    And 10 saniye bekle
    And CM Kapi acik uyarisi off yapilir
    And 10 saniye bekle
    And Bildirim kaydet butonuna basilir
    And 10 saniye bekle
    And Uygulama kill edilip 30 sn sonra acilir
    And 5 saniye bekle
    And Mutfak odasina gidilir
    And 5 saniye bekle
    And "CM Digital Pro" detayina gidilir
    Then "Açık" elementini bekle
    When 10 saniye bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Ayarlar alanina tiklanir
    And 3 saniye bekle
    And Bildirim tercihlerine gidilir
    And 3 saniye bekle
    Then CM Kapi acik uyarisinin off oldugu kontrol edilir
    And 3 saniye bekle
    And CM Kapi acik uyarisi on yapilir
    And 3 saniye bekle
    And Bildirim kaydet butonuna basilir
    And 10 saniye bekle
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
    And Cihaz off konumuna getirilir
    And 3 saniye bekle
    Then "Program seçebilmek için cihazı açmanız gerekiyor." yazisi kontrol edilir
    And Ekrani "up" kaydir
@TumSenaryolar
Feature: DigitalCamasırMakinesi
  Author: Hayri Odabas
  Date: 2022
  NOT: Bu test scriptlerini calistirmadan once uzaktan kontrolun acik olduguna emin olun
  @CamasirMakinesi
  Scenario: 001 Prologue CM Cihazlarim menusunden Prologue CM cihaz ekranini kontrolu
    * Uygulama resetlenir
    * Logout yapilir
    * Uygulamaya "yazilimtestonay@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Mutfak odasina gidilir
    * "CM Digital Pro" detayina gidilir
    * "Açık" elementini bekle
    #* 10 saniye bekle
    * Appbar "CM Digital Pro" texti kontrol edilir
    * Appbar subtitle "Mutfak" texti kontrol edilir
    * "Arçelik" yazisi kontrol edilir
    * "Çamaşır Makinesi" yazisi kontrol edilir
    * 3 saniye bekle
  @CamasirMakinesi
  Scenario: 002 Prologue CM cihaz ekraninda standby tusu ile acilmasi ve cihaz ekraninin kontrol edilmesi
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Mutfak odasina gidilir
    * "CM Digital Pro" detayina gidilir
    * "Açık" elementini bekle
    #* 10 saniye bekle
    * Cihaz on konumuna getirilir
    #* 10 saniye bekle
    * Appbar "CM Digital Pro" texti kontrol edilir
    * Appbar subtitle "Mutfak" texti kontrol edilir
    * "Çamaşır Makinesi" yazisi kontrol edilir
    * Favoriler bolumunun var oldugunu kontrol et
    * Program secimi bolumnun var oldugunu kontrol et
    * Sihirbaz bolumnun var oldugunu kontrol et
    * Program secenekleri bolumunun olmadigi kontrol edilir
    * Cihaz off konumuna getirilir
    #* 10 saniye bekle
    * "Program seçebilmek için cihazı açmanız gerekiyor." yazisi kontrol edilir
    * 3 saniye bekle
  @CamasirMakinesi
  Scenario: 003 Prologue CM acik iken cihaz sayfasinda uygulama arka plana atilip acildiginda baglanti kontrolu
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Mutfak odasina gidilir
    * "CM Digital Pro" detayina gidilir
    * "Açık" elementini bekle
    #* 10 saniye bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Appbar "CM Digital Pro" texti kontrol edilir
    * "Arçelik" yazisi kontrol edilir
    * Favoriler bolumunun var oldugunu kontrol et
    * Program secimi bolumnun var oldugunu kontrol et
    * Sihirbaz bolumnun var oldugunu kontrol et
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * 10 saniye bekle
    * Appbar "CM Digital Pro" texti kontrol edilir
    * "Arçelik" yazisi kontrol edilir
    * "Çamaşır Makinesi" yazisi kontrol edilir
    * Favoriler bolumunun var oldugunu kontrol et
    * Program secimi bolumnun var oldugunu kontrol et
    * Sihirbaz bolumnun var oldugunu kontrol et
    * Program secenekleri bolumunun olmadigi kontrol edilir
    * Cihaz off konumuna getirilir
    * 10 saniye bekle
    * "Program seçebilmek için cihazı açmanız gerekiyor." yazisi kontrol edilir
    * 3 saniye bekle
  @CamasirMakinesi
  Scenario: 004 Prologue CM program secim ekraninin kontrol bilgilerinin kontrolu
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Mutfak odasina gidilir
    * "CM Digital Pro" detayina gidilir
    * "Açık" elementini bekle
    #* 10 saniye bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Program secimine basilir
    * 3 saniye bekle
    * Appbar "CM Digital Pro" texti kontrol edilir
    * Appbar subtitle "mutfak" texti kontrol edilir
    * "Program" yazisi kontrol edilir
    * "Sıcaklık" yazisi kontrol edilir
    * "Devir" yazisi kontrol edilir
    * "Buhar" yazisi kontrol edilir
    * "Ön yıkama" yazisi kontrol edilir
    * "İlave Su" yazisi kontrol edilir
    * "Hızlı yıkama +" yazisi kontrol edilir
    * Ekrani "up" kaydir
    * "Yoğun" yazisi kontrol edilir
    * "Akıllı Kırışık Azaltma" yazisi kontrol edilir
    * "Program Süresi" yazisi kontrol edilir
    * "Ekstra Durulama Sayısı" yazisi kontrol edilir
    * "Gece Modu" yazisi kontrol edilir
    * "Kırışık Azaltma" yazisi kontrol edilir
    * "Suda bastırma" yazisi kontrol edilir
    * 3 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * Cihaz off konumuna getirilir
    #* 10 saniye bekle
  @CamasirMakinesi
  Scenario: 005 Prologue CM oda degistirme kontrolu
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Mutfak odasina gidilir
    #* 3 saniye bekle
    * "CM Digital Pro" detayina gidilir
    * "Açık" elementini bekle
    #* 10 saniye bekle
    * Camasir makinesini banyo odasina tasi
    * 10 saniye bekle
    * Banyo odasina gidilir
    * 3 saniye bekle
    * "CM Digital Pro" detayina gidilir
    * "Açık" elementini bekle
    #* 10 saniye bekle
    * Camasir makinesini mutfak odasina geri tasi
    * 10 saniye bekle
    * Mutfak odasina geri gidilir
    * 3 saniye bekle
    * "CM Digital Pro" urun kontrolu
  @CamasirMakinesi
  Scenario:006 Prologue CM uygulamayi kill edip actiktan sonra urun detay ekraninin kontrolleri
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Mutfak odasina gidilir
    #* 3 saniye bekle
    * "CM Digital Pro" detayina gidilir
    * "Açık" elementini bekle
    #* 10 saniye bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Uygulama kill edilip 30 sn sonra acilir
    * 10 saniye bekle
    * Mutfak odasina gidilir
    * "CM Digital Pro" detayina gidilir
    * "Açık" elementini bekle
    #* 10 saniye bekle
    * Favoriler bolumunun var oldugunu kontrol et
    * Program secimi bolumnun var oldugunu kontrol et
    * Sihirbaz bolumnun var oldugunu kontrol et
    * Program secenekleri bolumunun olmadigi kontrol edilir
    * Cihaz off konumuna getirilir
    * 10 saniye bekle
    * "Program seçebilmek için cihazı açmanız gerekiyor." yazisi kontrol edilir
    * 3 saniye bekle
  @CamasirMakinesi
  Scenario:007 Prologue CM cihaz bilgilerinin kontrolleri
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Mutfak odasina gidilir
    #* 3 saniye bekle
    * "CM Digital Pro" detayina gidilir
    * "Açık" elementini bekle
    #* 10 saniye bekle
    * Cihaz bilgilerine tiklanir
    * 10 saniye bekle
    * "CİHAZ KİMLİĞİ" yazisi kontrol edilir
    * "Arçelik" markasi kontrol edilir
    * "7178521100" Model numarasi kontrol edilir
    * "F999996512573253295214" Digital kimlik no kontrol edilir
    * "VERSİYON" yazisi kontrol edilir
    * "0.39.1 / 0.7.0 / 3.6.41 / - / -" versiyon numarasi kontrol edilir
  @CamasirMakinesi
  Scenario:008 Prologue CM cihaz favoriler ekranina girdiginin kontrolleri
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Mutfak odasina gidilir
    #* 3 saniye bekle
    * "CM Digital Pro" detayina gidilir
    * "Açık" elementini bekle
    #* 10 saniye bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Favoriler butonuna basilir
    * 3 saniye bekle
    * Kalp ikonu kontrol edilir
    * "Henüz favori programınız bulunmuyor." yazisi kontrol edilir
    * Favori program bilgi texti kontrol edilir
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * Cihaz off konumuna getirilir
    #* 10 saniye bekle
  @CamasirMakinesi
  Scenario:009 Prologue CM cihaz sihirbaz ekranina girdiginin kontrolleri
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Mutfak odasina gidilir
    #* 3 saniye bekle
    * "CM Digital Pro" detayina gidilir
    * "Açık" elementini bekle
    #* 10 saniye bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Sihirbaz secimine tiklanir
    * 3 saniye bekle
    * "Pamuklu" yazisi kontrol edilir
    * "Sentetik" yazisi kontrol edilir
    * "Pamuklu-Sentetik karma" yazisi kontrol edilir
    * "Hassas" yazisi kontrol edilir
    * "Yün" yazisi kontrol edilir
    * "Spor/Fitness" yazisi kontrol edilir
    * "Perde" yazisi kontrol edilir
    * "İç çamaşırı" yazisi kontrol edilir
    * "Bebek" yazisi kontrol edilir
    * "Yatak takımı" yazisi kontrol edilir
    * "Kot" yazisi kontrol edilir
    * "Mayo" yazisi kontrol edilir
    * "Bluz" yazisi kontrol edilir
    * "Hırka" yazisi kontrol edilir
    * Sayfanin altina ilerle
    * "Pantolon/Şort" yazisi kontrol edilir
    * "Kaban" yazisi kontrol edilir
    * "Ceket" yazisi kontrol edilir
    * "Abiye/Gece Elbisesi" yazisi kontrol edilir
    * "Etek" yazisi kontrol edilir
    * "Outdoor" yazisi kontrol edilir
    * "Havlu/Bornoz" yazisi kontrol edilir
    * "Nevresim" yazisi kontrol edilir
    * "Atkı/Bere/Eldiven" yazisi kontrol edilir
    * "Tişört" yazisi kontrol edilir
    * "Yumuşak Oyuncaklar" yazisi kontrol edilir
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * Cihaz off konumuna getirilir
    * 10 saniye bekle
  @CamasirMakinesi
  Scenario:010 Prologue CM kapali iken cihaz ekrani bilgilerinin kontrol edilmesi
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Mutfak odasina gidilir
    #* 3 saniye bekle
    * "CM Digital Pro" detayina gidilir
    * "Açık" elementini bekle
    #* 10 saniye bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Appbar "CM Digital Pro" texti kontrol edilir
    * Appbar subtitle "Mutfak" texti kontrol edilir
    * Uzaktan kontrol "Açık" texti kontrolu
    * "Arçelik" yazisi kontrol edilir
    * "Çamaşır Makinesi" yazisi kontrol edilir
    * Program secenekleri bolumunun olmadigi kontrol edilir
    * Cihaz off konumuna getirilir
    * 10 saniye bekle
  @CamasirMakinesi
  Scenario:011 Prologue CM cihaz ekraninda standby tusu ile acilmasi ve cihaz ekraninin kontrol edilmesi
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Mutfak odasina gidilir
    #* 3 saniye bekle
    * "CM Digital Pro" detayina gidilir
    * "Açık" elementini bekle
    #* 10 saniye bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Appbar "CM Digital Pro" texti kontrol edilir
    * Appbar subtitle "Mutfak" texti kontrol edilir
    * Uzaktan kontrol "Açık" texti kontrolu
    * "Arçelik" yazisi kontrol edilir
    * "Çamaşır Makinesi" yazisi kontrol edilir
    * Favoriler bolumunun var oldugunu kontrol et
    * Program secimi bolumnun var oldugunu kontrol et
    * Sihirbaz bolumnun var oldugunu kontrol et
    * Program secenekleri bolumunun olmadigi kontrol edilir
    * Cihaz off konumuna getirilir
    * 10 saniye bekle
    * "Program seçebilmek için cihazı açmanız gerekiyor." yazisi kontrol edilir
    * 3 saniye bekle
  @CamasirMakinesi
  Scenario:012 Prologue CM acik iken cihaz sayfasinda uygulama arka plana atilip acildiginda baglanti kontrolu
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Mutfak odasina gidilir
    #* 3 saniye bekle
    * "CM Digital Pro" detayina gidilir
    * "Açık" elementini bekle
    #* 10 saniye bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Appbar "CM Digital Pro" texti kontrol edilir
    * Favoriler bolumunun var oldugunu kontrol et
    * Program secimi bolumnun var oldugunu kontrol et
    * Sihirbaz bolumnun var oldugunu kontrol et
    * Program secimi bolumnun var oldugunu kontrol et
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * 10 saniye bekle
    * "Açık" elementini bekle
    * Appbar "CM Digital Pro" texti kontrol edilir
    * Favoriler bolumunun var oldugunu kontrol et
    * Program secimi bolumnun var oldugunu kontrol et
    * Sihirbaz bolumnun var oldugunu kontrol et
    * Program secimi bolumnun var oldugunu kontrol et
    * Cihaz off konumuna getirilir
    #* 10 saniye bekle
    * "Program seçebilmek için cihazı açmanız gerekiyor." yazisi kontrol edilir
    * 3 saniye bekle
  @CamasirMakinesi
  Scenario:013 Prologue CM program calisirken pause ekranindan duzenleme ekranina gecis ve duzenleme ekranindan programi devam ettirme kontrolu
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Mutfak odasina gidilir
    #* 3 saniye bekle
    * "CM Digital Pro" detayina gidilir
    * "Açık" elementini bekle
    #* 10 saniye bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Program secimine basilir
    * 3 saniye bekle
    * Program secimi "Pamuklu" olarak ayarlanir
    * 10 saniye bekle
    * Appbar "CM Digital Pro" texti kontrol edilir
    * Appbar subtitle "mutfak" texti kontrol edilir
    * Favori secimi ikonu kontrol edilir
    * "Pamuklu" yazisi kontrol edilir
    * "40 °C" yazisi kontrol edilir
    * "1200" yazisi kontrol edilir
    * "Buhar" yazisi kontrol edilir
    * Buhar yardimci fonsiyonunun kapali oldugu kontrol edilir
    * "Ön yıkama" yazisi kontrol edilir
    * On yikananin kapali oldugu kontrol edilir
    * "İlave Su" yazisi kontrol edilir
    * Ilave su yardimci fonsiyonunun kapali oldugu kontrol edilir
    * "Hızlı yıkama +" yazisi kontrol edilir
    * Hizli yikama fonsiyonunun kapali oldugu kontrol edilir
    * "Yoğun" yazisi kontrol edilir
    * Ekrani "up" kaydir
    * Yogun yardimci fonsiyonunun acik oldugu kontrol edilir
    * "Akıllı Kırışık Azaltma" yazisi kontrol edilir
    * Akilli Kirisik Azaltma yardimci fonsiyonunun kapali oldugu kontrol edilir
#    * "Program Süresi" yazisi kontrol edilir
#    * "02:25" yazisi kontrol edilir
    * "Kişiselleşmiş Süre Seviyesi" yazisi kontrol edilir
    * Kisisellestirilmis Sure Seviyesi kapali oldugu kontrol edilir
    * "Ekstra Durulama Sayısı" texti bulunup kontrol edilir
    * Extra Durulama Sayisi sifir oldugu kontrol edilir
    * "Gece Modu" yazisi kontrol edilir
    * Gece Modu kapali oldugu kontrol edilir
    * Ekrani "up" kaydir
    * "Kırışık Azaltma" yazisi kontrol edilir
    * Kirisik azaltma fonsiyonunun kapali oldugu kontrol edilir
    * "Suda bastırma" yazisi kontrol edilir
    * Suda bastirma fonsiyonunun kapali oldugu kontrol edilir
    * "Tüketim" yazisi kontrol edilir
    * "PROGRAMI BAŞLAT" yazisi kontrol edilir
    * Zaman erteleme butonu kontrol edilir
    * "BİTİŞ SAATİ" yazisi kontrol edilir
    * navigasyondan geri tusuna basilir
    * Cihaz off konumuna getirilir
    #* 10 saniye bekle
  @CamasirMakinesi
  Scenario:014 Prologue CM Eko 40-60 programinin calistirilmasinin kontrol edilmesi
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Mutfak odasina gidilir
    #* 3 saniye bekle
    * "CM Digital Pro" detayina gidilir
    * "Açık" elementini bekle
    #* 10 saniye bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Program secimine basilir
    * 3 saniye bekle
    * Program secimi "Eco 40-60" olarak ayarlanir
    * 10 saniye bekle
    * Sicaklik "60  santigrat derece" olarak ayarlanir
    * 10 saniye bekle
    * Program toplam suresi "02:43" kontrol edilir
    * Programi baslat butonuna basilir
    * 10 saniye bekle
    * Appbar "CM Digital Pro" texti kontrol edilir
    * Appbar subtitle "mutfak" texti kontrol edilir
    * Uzaktan kontrol "Açık" texti kontrolu
    * "Eco 40-60" program adi kontrol edilir
    * "Kalan Süre" yazisi kontrol edilir
    * Program kalan sure "02:43" kontrol edilir
    * Program asamasi "Program başlıyor" texti kontrol edilir
    * 55 saniye bekle
    * Program asamasi "Yıkama" texti kontrol edilir
    * "Kalan Süre" yazisi kontrol edilir
    * Pause butonu kontrol edilir
    * Program bekleme moduna alinir
    * Stop butonuna basilir
    * "Tamam" textine basilir
  @CamasirMakinesi
  Scenario:015 Prologue CM Pamuklu programi calisirken uygulama arka plana atilip tekrar acilmasinin kontrol edilmesi
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Mutfak odasina gidilir
    #* 3 saniye bekle
    * "CM Digital Pro" detayina gidilir
    * "Açık" elementini bekle
    #* 10 saniye bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Program secimine basilir
    * 3 saniye bekle
    * Program secimi "Pamuklu" olarak ayarlanir
    * 10 saniye bekle
    * Devir secimi "1000" rpm olarak ayarlanir
    * 3 saniye bekle
    * Ilave su yardimci fonksiyonu on yapilir
    * 10 saniye bekle
    * Program toplam suresi "02:25" kontrol edilir
    * Programi baslat butonuna basilir
    * 10 saniye bekle
    * "Pamuklu" program adi kontrol edilir
    * Program kalan sure "02:25" kontrol edilir
    * Program asamasi "Program başlıyor" texti kontrol edilir
    * 10 saniye bekle
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * 10 saniye bekle
    * "CM Digital Pro" yazisi kontrol edilir
    * Program asamasi "Yıkama" texti kontrol edilir
    * 10 saniye bekle
    * Uzaktan kontrol "Açık" texti kontrolu
    * "Kalan Süre" yazisi kontrol edilir
    * Program kalan sure "02:23" kontrol edilir
    * Pause butonu kontrol edilir
    * El ikonu kontrol edilir
    * Program bekleme moduna alinir
    * Stop butonuna basilir
    * "Tamam" textine basilir
  @CamasirMakinesi
  Scenario:016 Prologue CM Günlük Hizli 14 programi calisirken uygulama kapatilip tekrar acilmasinin kontrol edilmesi
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Mutfak odasina gidilir
    #* 3 saniye bekle
    * "CM Digital Pro" detayina gidilir
    * "Açık" elementini bekle
    #* 10 saniye bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Program secimine basilir
    * 3 saniye bekle
    * Program secimi "Günlük Hızlı 14" olarak ayarlanir
    * 10 saniye bekle
    * Program toplam suresi "00:28" kontrol edilir
    * Programi baslat butonuna basilir
    * 10 saniye bekle
    * "Günlük Hızlı 14" program adi kontrol edilir
    * Program kalan sure "00:28" kontrol edilir
    * Program asamasi "Program başlıyor" texti kontrol edilir
    * 10 saniye bekle
    * Uygulama kill edilip 30 sn sonra acilir
    * 10 saniye bekle
    * Uygulama resetlenir
    * 10 saniye bekle
    * Mutfak odasina gidilir
    * 10 saniye bekle
    * "CM Digital Pro" icerigi konrol edilir
    * "CM Digital Pro" detayina gidilir
    * Appbar "CM Digital Pro" texti kontrol edilir
    * Appbar subtitle "mutfak" texti kontrol edilir
    * Uzaktan kontrol "Açık" texti kontrolu
    * "Günlük Hızlı 14" program adi kontrol edilir
    * "Kalan Süre" yazisi kontrol edilir
    #* "00:26" elementini bekle
    * Program kalan sure "00:26" kontrol edilir
    * Program asamasi "Yıkama" texti kontrol edilir
    * Pause butonu kontrol edilir
    * El ikonu kontrol edilir
    * Program bekleme moduna alinir
    * Stop butonuna basilir
    * "Tamam" textine basilir
  @CamasirMakinesi
  Scenario:017 Prologue CM Sentetik programi calisirken duzenleme ekranina gecisin kontrol edilmesi
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Mutfak odasina gidilir
    #* 3 saniye bekle
    * "CM Digital Pro" detayina gidilir
    * "Açık" elementini bekle
    #* 10 saniye bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Program secimine basilir
    * 3 saniye bekle
    * Program secimi "Sentetik" olarak ayarlanir
    * 5 saniye bekle
    * Programi baslat butonuna basilir
    * 10 saniye bekle
    * Program kalan sure "02:59" kontrol edilir
    * Program asamasi "Program başlıyor" texti kontrol edilir
    * 10 saniye bekle
    * El ikonuna basilir
    * 10 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * Appbar "CM Digital Pro" texti kontrol edilir
    * Appbar subtitle "mutfak" texti kontrol edilir
    * Uzaktan kontrol "Açık" texti kontrolu
    * "Sentetik" program adi kontrol edilir
    * "Kalan Süre" yazisi kontrol edilir
    * Program kalan sure "02:58" kontrol edilir
    * Program asamasi "Yıkama" texti kontrol edilir
    * Pause butonu kontrol edilir
    * El ikonu kontrol edilir
    * Program bekleme moduna alinir
    * 10 saniye bekle
    * Stop butonuna basilir
    * "Tamam" textine basilir
  @CamasirMakinesi
  Scenario:018 Prologue CM program calisirken pause  ekranindan duzenleme ekranina gecis ve duzenleme ekranindan programi devam ettirme kontrolu
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Mutfak odasina gidilir
    #* 3 saniye bekle
    * "CM Digital Pro" detayina gidilir
    * "Açık" elementini bekle
    #* 10 saniye bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Program secimine basilir
    * 3 saniye bekle
    * Program secimi "Leke Programı" olarak ayarlanir
    * 10 saniye bekle
    * On yikana on yapilir
    * 10 saniye bekle
    * Program toplam suresi "03:08" kontrol edilir
    * Programi baslat butonuna basilir
    * 10 saniye bekle
    * "Leke Programı" program adi kontrol edilir
    * Program kalan sure "03:08" kontrol edilir
    * "Ön yıkama" yazisi kontrol edilir
    * Program bekleme moduna alinir
    * 10 saniye bekle
    * Program asamasi "Duraklatıldı" texti kontrol edilir
    * El ikonuna basilir
    * 10 saniye bekle
    * "Leke Programı" program adi kontrol edilir
    * On yikama yardimci fonksiyonunun on oldugu kontrol edilir
    * Program secimi "Gömlek" olarak ayarlanir
    * 10 saniye bekle
    * Sicaklik "30 °C" olarak ayarlanir
    * 10 saniye bekle
    * Program devam butonuna basilir
    * 5 saniye bekle
    * "Gömlek" program adi kontrol edilir
    * Program kalan sure "02:27" kontrol edilir
    * Program asamasi "Program başlıyor" texti kontrol edilir
    * Pause butonu kontrol edilir
    * El ikonu kontrol edilir
    * Program bekleme moduna alinir
    * 10 saniye bekle
    * Stop butonuna basilir
    * "Tamam" textine basilir
  @CamasirMakinesi
  Scenario:019 Prologue CM zaman ertelemeli calisma programi baslatma ve iptal etme kontrolu
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Mutfak odasina gidilir
    #* 3 saniye bekle
    * "CM Digital Pro" detayina gidilir
    * "Açık" elementini bekle
    #* 10 saniye bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Program secimine basilir
    * 3 saniye bekle
    * Zaman erteleme butonuna basilir
    * 3 saniye bekle
    * Saat kismina basilir
    * 3 saniye bekle
    * Ertelem zamani saat "06" olarak setlenir
    * 3 saniye bekle
    * Erteleme zamani dakika "15" olarak setlenir
    * 3 saniye bekle
    * "Seç" butonuna basilir
    * 3 saniye bekle
    * Programi başlat zaman geciktirme butonuna basilir
    * 3 saniye bekle
    * "Pamuklu" program adi kontrol edilir
    * "Başlangıç Saati" yazisi kontrol edilir
    * "Bitiş Saati" yazisi kontrol edilir
    * Program bekleme moduna alinir
    * 10 saniye bekle
    * Stop butonuna basilir
    * "Tamam" butonuna basilir
  @CamasirMakinesi
  Scenario:020 Prologue CM Sihirbaz uzerinden program basaltilmasinin kontrol edilmesi
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Mutfak odasina gidilir
    #* 3 saniye bekle
    * "CM Digital Pro" detayina gidilir
    * "Açık" elementini bekle
    #* 10 saniye bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Sihirbaz secimine tiklanir
    * 3 saniye bekle
    * Sihirbaz ekraninda "Perde" secilir
    * 3 saniye bekle
    * "Renk Tipi seçin" butonuna basilir
    * 3 saniye bekle
    * Renk tipi beyaz secilir
    * 3 saniye bekle
    * "Kir Seviyesi seçin" butonuna basilir
    * 3 saniye bekle
    * Orta secimine basilir
    * 3 saniye bekle
    * "Önerilen Program seçin" butonuna basilir
    * 3 saniye bekle
    * "Size Uygun Programlar" yazisi kontrol edilir
    * "Önerilen Program" yazisi kontrol edilir
    * "Yünlü (Elde Yıkama)| Sıcaklık: 40 °C, Devir: 1200, İlave Su" yazisi kontrol edilir
    * Programi baslat butonuna basilir
    * 3 saniye bekle
    * "Yünlü (Elde Yıkama)" program adi kontrol edilir
    * Program kalan sure "01:06" kontrol edilir
    * Program asamasi "Program başlıyor" texti kontrol edilir
    * Pause butonu kontrol edilir
    * El ikonu kontrol edilir
    * Program bekleme moduna alinir
    * 10 saniye bekle
    * Stop butonuna basilir
    * "Tamam" butonuna basilir
  @CamasirMakinesi
  Scenario:021 Prologue CM favori program secilmesi ve Favorilere uzerinden programin baslatilmasi
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Mutfak odasina gidilir
    #* 3 saniye bekle
    * "CM Digital Pro" detayina gidilir
    * "Açık" elementini bekle
    #* 10 saniye bekle
    * Cihaz on konumuna getirilir
    * 20 saniye bekle
    * Program secimine basilir
    * 3 saniye bekle
    * Program secimi "Hijyen+" olarak ayarlanir
    * 20 saniye bekle
    * Devir secimi "600" rpm olarak ayarlanir
    * 3 saniye bekle
    * Kalp ikonuna basilir
    * 3 saniye bekle
    * Favori ekle ekraninda program adi Fav Yikama yazilir
    * Favori ekle tamam butonuna basilir
    * 3 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * Favoriler butonuna basilir
    * 3 saniye bekle
    * Favori program "Hijyen+ | Sıcaklık: 60 °C, Devir: 600,  Buhar Süre: 03:20" adi kontrol edilir
    * "Fav Yikama" yazisi kontrol edilir
    * Favori ekraninda Play butonuna basilir
    * 10 saniye bekle
    * Programi baslat butonuna basilir
    * 10 saniye bekle
    * "Hijyen+" program adi kontrol edilir
    * Program kalan sure "03:20" kontrol edilir
    * 40 saniye bekle
    * Program asamasi "Yıkama" texti kontrol edilir
    * 3 saniye bekle
    * Program bekleme moduna alinir
    * 10 saniye bekle
    * Stop butonuna basilir
    * "Tamam" textine basilir
    * 10 saniye bekle
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Mutfak odasina gidilir
    #* 3 saniye bekle
    * "CM Digital Pro" detayina gidilir
    * "Açık" elementini bekle
    * "CM Digital Pro" detayina gidilir
    * 10 saniye bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Favoriler butonuna basilir
    * 3 saniye bekle
    * Arti butonuna basilir
    * 3 saniye bekle
    * Cop kovasi ikonuna basilir
    * 3 saniye bekle
    * Favori silme tamam butonuna basilir
    * 10 saniye bekle
  @CamasirMakinesi
  Scenario:022 Prologue CM son calistirilan programin cihaz gecmisinde gosterilmesinin kontrolu
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Mutfak odasina gidilir
    #* 3 saniye bekle
    * "CM Digital Pro" detayina gidilir
    * "Açık" elementini bekle
    #* 10 saniye bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Program secimine basilir
    * 3 saniye bekle
    * Program secimi "Eco 40-60" olarak ayarlanir
    * 20 saniye bekle
    * Programi baslat butonuna basilir
    * 10 saniye bekle
    * "Eco 40-60" program adi kontrol edilir
    * Program kalan sure "02:43" kontrol edilir
    * Program asamasi "Program başlıyor" texti kontrol edilir
    * 50 saniye bekle
    * Program asamasi "Yıkama" texti kontrol edilir
    * Program bekleme moduna alinir
    * 10 saniye bekle
    * Stop butonuna basilir
    * 10 saniye bekle
    * "Tamam" butonuna basilir
    * 3 saniye bekle
    * Uygulama resetlenir
    * Mutfak odasina gidilir
    * "CM Digital Pro" detayina gidilir
    * 10 saniye bekle
    * "Program seçebilmek için cihazı açmanız gerekiyor." yazisi kontrol edilir
    * Sayfanin altina ilerle
    * "Eco 40-60" yazisi kontrol edilir
  @CamasirMakinesi
  Scenario:023 Prologue CM Cihaz Ayarları menüsünde tuş sesi ayarının değiştirilmesinin kontrol edilmesi
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Mutfak odasina gidilir
    #* 3 saniye bekle
    * "CM Digital Pro" detayina gidilir
    * "Açık" elementini bekle
    #* 10 saniye bekle
    * Cihaz on konumuna getirilir
    * 20 saniye bekle
    * Ayarlar alanina tiklanir
    * 3 saniye bekle
    * "Cihaz Ayarları" textine basilir
    * 10 saniye bekle
    * Tus sesi dusuk secilir
    * 3 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * Cihaz off konumuna getirilir
    * 10 saniye bekle
    * "Program seçebilmek için cihazı açmanız gerekiyor." yazisi kontrol edilir
    * Uygulama kill edilip 30 sn sonra acilir
    * 10 saniye bekle
    * Mutfak odasina gidilir
    * 3 saniye bekle
    * "CM Digital Pro" icerigi konrol edilir
    * "CM Digital Pro" detayina gidilir
    * 10 saniye bekle
    * Cihaz on konumuna getirilir
    * 20 saniye bekle
    * Ayarlar alanina tiklanir
    * 3 saniye bekle
    * "Cihaz Ayarları" butonuna basilir
    * 10 saniye bekle
    * "Düşük" yazisi kontrol edilir
    * Tus sesi yuksek secilir
    * 3 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
  @CamasirMakinesi
  Scenario:024 Prologue CM download programı indirme ve başlatma'nın kontrol edilmesi
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Mutfak odasina gidilir
    #* 3 saniye bekle
    * "CM Digital Pro" detayina gidilir
    * "Açık" elementini bekle
    #* 10 saniye bekle
    * Cihaz on konumuna getirilir
    * 20 saniye bekle
    * Ayarlar alanina tiklanir
    * 3 saniye bekle
    * Indirilen program yonetimine tiklanir
    * 3 saniye bekle
    * "Spor" textine basilir
    * 3 saniye bekle
    * Program indir butonuna basilir
    * 10 saniye bekle
    * Program indirildikten sonra tamam butonuna basilir
    * 3 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * navigasyondan geri tusuna basilir
    * 10 saniye bekle
    * Program secimine basilir
    * 3 saniye bekle
    * Programi baslat butonuna basilir
    * 10 saniye bekle
    * "Spor" program adi kontrol edilir
    * Program kalan sure "01:32" kontrol edilir
    * Program asamasi "Program başlıyor" texti kontrol edilir
    * 10 saniye bekle
    * Program asamasi "Yıkama" texti kontrol edilir
    * Program bekleme moduna alinir
    * 10 saniye bekle
    * Stop butonuna basilir
    * 20 saniye bekle
    * "Tamam" butonuna basilir
    * 10 saniye bekle
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Mutfak odasina gidilir
    #* 3 saniye bekle
    * "CM Digital Pro" detayina gidilir
    * "Açık" elementini bekle
    * 10 saniye bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Ayarlar alanina tiklanir
    * 3 saniye bekle
    * Indirilen program yonetimine tiklanir
    * 3 saniye bekle
    * "Karma" textine basilir
    * 10 saniye bekle
    * Program indir butonuna basilir
    * 10 saniye bekle
    * Program indirildikten sonra tamam butonuna basilir
    * 3 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * Cihaz off konumuna getirilir
    * 10 saniye bekle
    * "Program seçebilmek için cihazı açmanız gerekiyor." yazisi kontrol edilir
  @CamasirMakinesi
  Scenario:025 Prologue CM Kapak acik uyarisinin kapatilmasi
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Mutfak odasina gidilir
    #* 3 saniye bekle
    * "CM Digital Pro" detayina gidilir
    * "Açık" elementini bekle
    #* 10 saniye bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Ayarlar alanina tiklanir
    * 3 saniye bekle
    * Bildirim tercihlerine gidilir
    * 10 saniye bekle
    * CM Kapi acik uyarisi off yapilir
    * 10 saniye bekle
    * Bildirim kaydet butonuna basilir
    * 10 saniye bekle
    * Uygulama kill edilip 30 sn sonra acilir
    * 5 saniye bekle
    * Mutfak odasina gidilir
    * 5 saniye bekle
    * "CM Digital Pro" detayina gidilir
    * "Açık" elementini bekle
    * 10 saniye bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Ayarlar alanina tiklanir
    * 3 saniye bekle
    * Bildirim tercihlerine gidilir
    * 3 saniye bekle
    * CM Kapi acik uyarisinin off oldugu kontrol edilir
    * 3 saniye bekle
    * CM Kapi acik uyarisi on yapilir
    * 3 saniye bekle
    * Bildirim kaydet butonuna basilir
    * 10 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * Cihaz off konumuna getirilir
    * 3 saniye bekle
    * "Program seçebilmek için cihazı açmanız gerekiyor." yazisi kontrol edilir
    * Ekrani "up" kaydir
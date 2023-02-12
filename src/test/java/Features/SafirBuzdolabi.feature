@TumSenaryolar
Feature: SafirBuzdolabi
  Author: Hayri Odabas
  Date: 2021
  NOT: Bu test scriptlerini calistirmadan once uzaktan kontrolun acik olduguna emin olun
  @SafirBuzdolabi
  Scenario:001 Safir Buzdolabi cihazlarım ekranında urun adı ve bolme sicakliklarin kontrolu
    * Uygulama resetlenir
    * Logout yapilir
    * Uygulamaya "mobilotomasyon1@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    * Uygulama resetlenir
    * "Safir Buzdolabi" urun kontrolu
    * "Safir Buzdolabi" detayina gidilir
    * 5 saniye bekle
    * Yardimci fonksiyonlara tiklanir
    * 5 saniye bekle
    * Tum fonksiyonlar off yapilir
    * 10 saniye bekle
    * Dondurucu kabin modu "Dondurucu" olarak seçilir
    * 10 saniye bekle
    * "4 °C" yazisi kontrol edilir
    * "-18 °C" yazisi kontrol edilir
  @SafirBuzdolabi
  Scenario:002 Safir Buzdolabi cihaz ekraninin kontrolu
    * Uygulama resetlenir
    * "Safir Buzdolabi" detayina gidilir
    * 5 saniye bekle
    * "Safir Buzdolabi" yazisi kontrol edilir
    * "oturma odası" yazisi kontrol edilir
    * "SOĞUTUCU" yazisi kontrol edilir
    * "DONDURUCU" yazisi kontrol edilir
    * "4 °C" yazisi kontrol edilir
    * "-18 °C" yazisi kontrol edilir
    @SafirBuzdolabi
  Scenario:003 Safir Buzdolabi uygulama arkaplana atilip geri alindiktan sonra urun sicakliklarinin degistiginin kontrolleri
    * Uygulama resetlenir
    * "Oturma Odası" adi kontrol edilir
    * "Safir Buzdolabi" detayina gidilir
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * 10 saniye bekle
    * "4 °C" yazisi kontrol edilir
    * "-18 °C" yazisi kontrol edilir
    @SafirBuzdolabi
  Scenario:004 Safir buzdolabi dondurucu sicakligi -19 derece ayarlanip tekrar -18 derece set edilmesinin kontrolu
    * Uygulama resetlenir
    * "Safir Buzdolabi" detayina gidilir
    * 10 saniye bekle
    * Dondurucu sicakligi eksi on dokuz olarak setlenir
    * 5 saniye bekle
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
    * "Safir Buzdolabi" detayina gidilir
    * 10 saniye bekle
    * "-19 °C" yazisi kontrol edilir
    * Dondurucu sicakligi eksi on sekiz olarak geri setlenir
    * 10 saniye bekle
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
    @SafirBuzdolabi
  Scenario:005 Safir Buzdolabi yardimci fonksiyonlarin text kontrolleri
    * Uygulama resetlenir
    * "Oturma Odası" adi kontrol edilir
    * "Safir Buzdolabi" detayina gidilir
    * 3 saniye bekle
    * Yardimci fonksiyonlara tiklanir
    * "Hızlı Soğutma" yazisi kontrol edilir
    * "Hızlı Dondurma" yazisi kontrol edilir
    * "Tatil Modu" yazisi kontrol edilir
    * "Eco Fuzzy" yazisi kontrol edilir
    * "Dondurucu Kabin Modu" yazisi kontrol edilir

    @SafirBuzdolabi
  Scenario:006 Safir Buzdolabi hizli sogutma on yapildiktan sonra ve uygulama kill edilip acildiktan sonra hizli sogutma ve derece degisikliklerinin kontrolleri
    * Uygulama resetlenir
    * "Oturma Odası" adi kontrol edilir
    * "Safir Buzdolabi" detayina gidilir
    * 10 saniye bekle
    * Yardimci fonksiyonlara tiklanir
    * Tum fonksiyonlar off yapilir
    * 3 saniye bekle
    * Hizli sogutma on yapilir
    * Hizli sogutmanin on oldugu kontrol edilir
    * Yardimci fonksiyonlar kapatilir
    * 10 saniye bekle
    * "1 °C" yazisi kontrol edilir
    * "-18 °C" yazisi kontrol edilir
    * Uygulama kill edilip 30 sn sonra acilir
    * 10 saniye bekle
    * "Safir Buzdolabi" detayina gidilir
    * 10 saniye bekle
    * Yardimci fonksiyonlara tiklanir
    * Hizli sogutmanin on oldugu kontrol edilir
    * Yardimci fonksiyonlar kapatilir
    * "1 °C" yazisi kontrol edilir
    * "-18 °C" yazisi kontrol edilir
    * Yardimci fonksiyonlara tiklanir
    * Tum fonksiyonlar off yapilir
    * 10 saniye bekle
    * Yardimci fonksiyonlar kapatilir
    * 5 saniye bekle
    * "4 °C" yazisi kontrol edilir
    * "-18 °C" yazisi kontrol edilir

    @SafirBuzdolabi
  Scenario:007 Safir Buzdolabi tatil modu on yapildiktan sonra hizli sogutmanin off oldugunun ve sicakliklarin degistiginin kontrolleri
    * Uygulama resetlenir
    * "Oturma Odası" adi kontrol edilir
    * "Safir Buzdolabi" detayina gidilir
    * 3 saniye bekle
    * Yardimci fonksiyonlara tiklanir
    * Tatil modu on yapilir
    * Hizli sogutmanin off oldugu kontrol edilir
    * Yardimci fonksiyonlar kapatilir
    * "--" yazisi kontrol edilir
    * "-18 °C" yazisi kontrol edilir
    * Uygulama kill edilip 30 sn sonra acilir
    * 10 saniye bekle
    * "Safir Buzdolabi" detayina gidilir
    * 10 saniye bekle
    * "--" yazisi kontrol edilir
    * "-18 °C" yazisi kontrol edilir
    * Yardimci fonksiyonlara tiklanir
    * Tum fonksiyonlar off yapilir
    * 10 saniye bekle
    * Yardimci fonksiyonlar kapatilir
    * 5 saniye bekle
    * "4 °C" yazisi kontrol edilir
    * "-18 °C" yazisi kontrol edilir

  @SafirBuzdolabi
  Scenario:008 Safir Buzdolabı hizli dondurma yardimci fonksiyonun on yapılması ve sıcaklıkların kontrol edilmesi
    * Uygulama resetlenir
    * "Safir Buzdolabi" detayina gidilir
    * 5 saniye bekle
    * Yardimci fonksiyonlara tiklanir
    * 5 saniye bekle
    * Tum fonksiyonlar off yapilir
    * 10 saniye bekle
    * Hizli dondurma modu on yapilir
    * 10 saniye bekle
    * Hizli dondurma modunun on oldugu kontrol edilir
    * Yardimci fonksiyonlar kapatilir
    * 5 saniye bekle
    * "4 °C" yazisi kontrol edilir
    * "-27 °C" yazisi kontrol edilir
    * Uygulama kill edilip 30 sn sonra acilir
    * 20 saniye bekle
    * "Safir Buzdolabi" detayina gidilir
    * 5 saniye bekle
    * "4 °C" yazisi kontrol edilir
    * "-27 °C" yazisi kontrol edilir
    * Yardimci fonksiyonlara tiklanir
    * 5 saniye bekle
    * Hizli dondurma modunun on oldugu kontrol edilir
    * Tum fonksiyonlar off yapilir
    * 10 saniye bekle
    * Yardimci fonksiyonlar kapatilir
    * 5 saniye bekle
    * "4 °C" yazisi kontrol edilir
    * "-18 °C" yazisi kontrol edilir

  @SafirBuzdolabi
  Scenario:009 Safir Buzdolabı eko fuzzy yardımcı fonksiyonun on yapılması ve sıcaklıkların kontrol edilmesi
    * Uygulama resetlenir
    * "Safir Buzdolabi" detayina gidilir
    * 10 saniye bekle
    * Yardimci fonksiyonlara tiklanir
    * 5 saniye bekle
    * Tum fonksiyonlar off yapilir
    * 10 saniye bekle
    * Eko Fuzzy modu on yapilir
    * 5 saniye bekle
    * Eko Fuzzy modu on oldugu kontrol edilir
    * Yardimci fonksiyonlar kapatilir
    * 5 saniye bekle
    * "4 °C" yazisi kontrol edilir
    * "-18 °C" yazisi kontrol edilir
    * Uygulama kill edilip 30 sn sonra acilir
    * 10 saniye bekle
    * "Safir Buzdolabi" detayina gidilir
    * 10 saniye bekle
    * "4 °C" yazisi kontrol edilir
    * "-18 °C" yazisi kontrol edilir
    * Yardimci fonksiyonlara tiklanir
    * 5 saniye bekle
    * Eko Fuzzy modu on oldugu kontrol edilir
    * 5 saniye bekle
    * Tum fonksiyonlar off yapilir
    * 10 saniye bekle
    * Yardimci fonksiyonlar kapatilir
    * 5 saniye bekle
    * "4 °C" yazisi kontrol edilir
    * "-18 °C" yazisi kontrol edilir

  @SafirBuzdolabi
  Scenario:010 Safir Buzdolabı Tatil modu yardımcı fonksyionu acıldığında hızlı sogutma ve Eko fuzzy fonksiyonları kapatılır
    * Uygulama resetlenir
    * "Safir Buzdolabi" detayina gidilir
    * 10 saniye bekle
    * Yardimci fonksiyonlara tiklanir
    * 5 saniye bekle
    * Tum fonksiyonlar off yapilir
    * 10 saniye bekle
    * Hizli sogutma on yapilir
    * 10 saniye bekle
    * Eko Fuzzy modu on yapilir
    * 10 saniye bekle
    * Eko Fuzzy modu on oldugu kontrol edilir
    * Hizli sogutmanin on oldugu kontrol edilir
    * Tatil modu on yapilir
    * 10 saniye bekle
    * Hizli sogutmanin off oldugu kontrol edilir
    * Eko Fuzzy modunun off oldugu kontrol edilir
    * Tatil modu on oldugu kontrol edilir
    * 5 saniye bekle
    * Hizli sogutma on yapilir
    * 10 saniye bekle
    * Hizli sogutmanin on oldugu kontrol edilir
    * Tatil modunun off oldugu kontrol edilir
    * 5 saniye bekle
    * Tum fonksiyonlar off yapilir
    * 10 saniye bekle

  @SafirBuzdolabi
  Scenario:011 Safir Buzdolabı dondurucu kabin modu kapalı olarak ayarlanır
    * Uygulama resetlenir
    * "Safir Buzdolabi" detayina gidilir
    * 10 saniye bekle
    * Yardimci fonksiyonlara tiklanir
    * 5 saniye bekle
    * Dondurucu kabin modu "Kapalı" olarak seçilir
    * 10 saniye bekle
    * Yardimci fonksiyonlara tiklanir
    * 5 saniye bekle
    * "Kapalı" yazisi kontrol edilir
    * Yardimci fonksiyonlar kapatilir
    * 5 saniye bekle
    * "4 °C" yazisi kontrol edilir
    * "-18 °C" yazisi kontrol edilir
    * Uygulama kill edilip 30 sn sonra acilir
    * 10 saniye bekle
    * "Safir Buzdolabi" detayina gidilir
    * 10 saniye bekle
    * "4 °C" yazisi kontrol edilir
    * "-18 °C" yazisi kontrol edilir
    * Yardimci fonksiyonlara tiklanir
    * 5 saniye bekle
    * "Kapalı" yazisi kontrol edilir
    * Dondurucu kabin modu "Dondurucu" olarak seçilir
    * 5 saniye bekle
    * "4 °C" yazisi kontrol edilir
    * "-18 °C" yazisi kontrol edilir

  @SafirBuzdolabi
  Scenario:012 Safir Buzdolabı dondurucu kabin modu sogutucu olarak ayarlanır
    * Uygulama resetlenir
    * "Safir Buzdolabi" detayina gidilir
    * 5 saniye bekle
    * Yardimci fonksiyonlara tiklanir
    * 5 saniye bekle
    * Dondurucu kabin modu "Soğutucu" olarak seçilir
    * 10 saniye bekle
    * Yardimci fonksiyonlara tiklanir
    * 5 saniye bekle
    * "Soğutucu" yazisi kontrol edilir
    * Yardimci fonksiyonlar kapatilir
    * 5 saniye bekle
    * "4 °C" yazisi kontrol edilir
    * "4 °C" yazisi kontrol edilir
    * Uygulama kill edilip 30 sn sonra acilir
    * 10 saniye bekle
    * "Safir Buzdolabi" detayina gidilir
    * 10 saniye bekle
    * "4 °C" yazisi kontrol edilir
    * "4 °C" yazisi kontrol edilir
    * Yardimci fonksiyonlara tiklanir
    * 5 saniye bekle
    * "Soğutucu" yazisi kontrol edilir
    * Dondurucu kabin modu "Dondurucu" olarak seçilir
    * 5 saniye bekle
    * "4 °C" yazisi kontrol edilir
    * "-18 °C" yazisi kontrol edilir

    @SafirBuzdolabi
  Scenario:013 Safir Buzdolabi cihaz bilgilerinin kontrolleri
    * Uygulama resetlenir
    * "Oturma Odası" adi kontrol edilir
    * "Safir Buzdolabi" detayina gidilir
    * 10 saniye bekle
    * Cihaz bilgilerine tiklanir
    * 10 saniye bekle
    * "CİHAZ KİMLİĞİ" yazisi kontrol edilir
    * "Arçelik" markasi kontrol edilir
    * "7294620196" Model numarasi kontrol edilir
    * "F999940065064141857327" Digital kimlik no kontrol edilir
    * "VERSİYON" yazisi kontrol edilir
    * 25 saniye bekle
    * "0.1.26 / - / 2.8.70 / - / -" versiyon numarasi kontrol edilir
    @SafirBuzdolabi
  Scenario:014 Safir Buzdolabi kapi acik bildirimi degistirilip kaydedildikten sonra uygulamanin kill edilip yapilan degisikliklerin kaydedildiginin kontrolleri
    * Uygulama resetlenir
    * "Safir Buzdolabi" detayina gidilir
    * Ayarlar alanina tiklanir
    * Bildirim tercihlerine gidilir
    * 10 saniye bekle
    * Buzdolabı kapi acik uyarisi off yapilir
    * 10 saniye bekle
    * Bildirim kaydet butonuna basilir
    * 10 saniye bekle
    * Uygulama kill edilip 30 sn sonra acilir
    * 10 saniye bekle
    * "Safir Buzdolabi" detayina gidilir
    * 20 saniye bekle
    * Ayarlar alanina tiklanir
    * 10 saniye bekle
    * Bildirim tercihlerine gidilir
    * 10 saniye bekle
    * Buzdolabi kapak acik bildirimi pasif kontrolu
    * 2 saniye bekle
    * Buzdolabi kapak acik bildirimi aktif edilir
    * 20 saniye bekle
    * Bildirim kaydet butonuna basilir
    * 10 saniye bekle
  @SafirBuzdolabi
  Scenario:015 Safir Buzdolabi kapi acik uyarısının kapatılmasının kontrolu
    * Uygulama resetlenir
    * "Safir Buzdolabi" detayina gidilir
    * Ayarlar alanina tiklanir
    * 10 saniye bekle
    * Uyari tercihleri butonuna basilir
    * 10 saniye bekle
    * Buzdolabı kapi acik uyarisi off yapilir
    * 10 saniye bekle
    * Buzdolabi kapak acik bildirimi pasif kontrolu
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
    * Uygulamayi 10 saniye arka planda tut sonra aktive et
    * 30 saniye bekle
    * Ayarlar alanina tiklanir
    * 10 saniye bekle
    * Uyari tercihleri butonuna basilir
    * 10 saniye bekle
    * Buzdolabi kapak acik bildirimi pasif kontrolu
    * 10 saniye bekle
    * Buzdolabi kapak acik bildirimi on edilir
    * 10 saniye bekle
  @SafirBuzdolabi
  Scenario:016 Safir Buzdolabi mutfak odasina tasinip geri alinmasi kontrolleri
    * Uygulama resetlenir
    * "Safir Buzdolabi" detayina gidilir
    * Buzdolabini mutfak odasina tasi
    * 10 saniye bekle
    * Mutfak odasina gidilir
    * 10 saniye bekle
    * "Safir Buzdolabi" detayina gidilir
    * 10 saniye bekle
    * Buzdolabini oturma odasina geri tasi
    * 10 saniye bekle
    * Mutfak odasina geri gidilir
    * "Safir Buzdolabi" urun kontrolu
    * 10 saniye bekle
  @SafirBuzdolabi
  Scenario:017 Safir Buzdolabi kapi acik alarm suresinin bes dk olarak set edildiginin kontrolleri
    * Uygulama resetlenir
    * "Safir Buzdolabi" detayina gidilir
    * Ayarlar alanina tiklanir
    * 10 saniye bekle
    * Cihaz ayarlari secilir
    * 10 saniye bekle
    * Bekleteme suresi bes dakika olarak ayarlanir
    * 10 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * Uygulama kill edilip 30 sn sonra acilir
    * 10 saniye bekle
    * "Safir Buzdolabi" detayina gidilir
    * 10 saniye bekle
    * Ayarlar alanina tiklanir
    * 10 saniye bekle
    * Cihaz ayarlari secilir
    * 10 saniye bekle
    * Bekleme suresinin halen bes dakika oldugu kontrol edilir
    * 5 saniye bekle
    #Burası 1dk'ya set etmiyor kontrol edilmeli
    * Bekleteme suresi bir dakika olarak ayarlanir
    * 10 saniye bekle

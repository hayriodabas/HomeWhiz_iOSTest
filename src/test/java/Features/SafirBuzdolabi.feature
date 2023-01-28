@TumSenaryolar
Feature: SafirBuzdolabi
  Author: Hayri Odabas
  Date: 2021
  NOT: Bu test scriptlerini calistirmadan once uzaktan kontrolun acik olduguna emin olun
  @SafirBuzdolabi
  Scenario:001 Safir Buzdolabi cihazlarım ekranında urun adı ve bolme sicakliklarin kontrolu
    Given Uygulama resetlenir
    Given Logout yapilir
    Given Uygulamaya "mobilotomasyon1@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    Given Uygulama resetlenir
    Then "Safir Buzdolabi" urun kontrolu
    When "Safir Buzdolabi" detayina gidilir
    And 5 saniye bekle
    And Yardimci fonksiyonlara tiklanir
    And 5 saniye bekle
    And Tum fonksiyonlar off yapilir
    And 10 saniye bekle
    And Dondurucu kabin modu "Dondurucu" olarak seçilir
    And 10 saniye bekle
    Then "4 °C" yazisi kontrol edilir
    Then "-18 °C" yazisi kontrol edilir
  @SafirBuzdolabi
  Scenario:002 Safir Buzdolabi cihaz ekraninin kontrolu
    Given Uygulama resetlenir
    When "Safir Buzdolabi" detayina gidilir
    And 5 saniye bekle
    Then "Safir Buzdolabi" yazisi kontrol edilir
    Then "oturma odası" yazisi kontrol edilir
    Then "SOĞUTUCU" yazisi kontrol edilir
    Then "DONDURUCU" yazisi kontrol edilir
    Then "4 °C" yazisi kontrol edilir
    Then "-18 °C" yazisi kontrol edilir
    @SafirBuzdolabi
  Scenario:003 Safir Buzdolabi uygulama arkaplana atilip geri alindiktan sonra urun sicakliklarinin degistiginin kontrolleri
    Given Uygulama resetlenir
    Then "Oturma Odası" adi kontrol edilir
    When "Safir Buzdolabi" detayina gidilir
    And Uygulamayi 30 saniye arka planda tut sonra aktive et
    And 10 saniye bekle
    Then "4 °C" yazisi kontrol edilir
    Then "-18 °C" yazisi kontrol edilir
    @SafirBuzdolabi
  Scenario:004 Safir buzdolabi dondurucu sicakligi -19 derece ayarlanip tekrar -18 derece set edilmesinin kontrolu
    Given Uygulama resetlenir
    When "Safir Buzdolabi" detayina gidilir
    And 10 saniye bekle
    Then Dondurucu sicakligi eksi on dokuz olarak setlenir
    And 5 saniye bekle
    Then navigasyondan geri tusuna basilir
    And 5 saniye bekle
    When "Safir Buzdolabi" detayina gidilir
    And 10 saniye bekle
    Then "-19 °C" yazisi kontrol edilir
    Then Dondurucu sicakligi eksi on sekiz olarak geri setlenir
    And 10 saniye bekle
    Then navigasyondan geri tusuna basilir
    And 5 saniye bekle
    @SafirBuzdolabi
  Scenario:005 Safir Buzdolabi yardimci fonksiyonlarin text kontrolleri
    Given Uygulama resetlenir
    Then "Oturma Odası" adi kontrol edilir
    When "Safir Buzdolabi" detayina gidilir
    And 3 saniye bekle
    And Yardimci fonksiyonlara tiklanir
    Then "Hızlı Soğutma" yazisi kontrol edilir
    Then "Hızlı Dondurma" yazisi kontrol edilir
    Then "Tatil Modu" yazisi kontrol edilir
    Then "Eco Fuzzy" yazisi kontrol edilir
    Then "Dondurucu Kabin Modu" yazisi kontrol edilir

    @SafirBuzdolabi
  Scenario:006 Safir Buzdolabi hizli sogutma on yapildiktan sonra ve uygulama kill edilip acildiktan sonra hizli sogutma ve derece degisikliklerinin kontrolleri
    Given Uygulama resetlenir
    Then "Oturma Odası" adi kontrol edilir
    When "Safir Buzdolabi" detayina gidilir
    And 10 saniye bekle
    And Yardimci fonksiyonlara tiklanir
    And Tum fonksiyonlar off yapilir
    And 3 saniye bekle
    And Hizli sogutma on yapilir
    Then Hizli sogutmanin on oldugu kontrol edilir
    And Yardimci fonksiyonlar kapatilir
    And 10 saniye bekle
    Then "1 °C" yazisi kontrol edilir
    Then "-18 °C" yazisi kontrol edilir
    And Uygulama kill edilip 30 sn sonra acilir
    And 10 saniye bekle
    When "Safir Buzdolabi" detayina gidilir
    And 10 saniye bekle
    And Yardimci fonksiyonlara tiklanir
    Then Hizli sogutmanin on oldugu kontrol edilir
    And Yardimci fonksiyonlar kapatilir
    Then "1 °C" yazisi kontrol edilir
    Then "-18 °C" yazisi kontrol edilir
    And Yardimci fonksiyonlara tiklanir
    And Tum fonksiyonlar off yapilir
    And 10 saniye bekle
    And Yardimci fonksiyonlar kapatilir
    And 5 saniye bekle
    And "4 °C" yazisi kontrol edilir
    And "-18 °C" yazisi kontrol edilir

    @SafirBuzdolabi
  Scenario:007 Safir Buzdolabi tatil modu on yapildiktan sonra hizli sogutmanin off oldugunun ve sicakliklarin degistiginin kontrolleri
    Given Uygulama resetlenir
    Then "Oturma Odası" adi kontrol edilir
    When "Safir Buzdolabi" detayina gidilir
    And 3 saniye bekle
    And Yardimci fonksiyonlara tiklanir
    And Tatil modu on yapilir
    Then Hizli sogutmanin off oldugu kontrol edilir
    And Yardimci fonksiyonlar kapatilir
    Then "--" yazisi kontrol edilir
    Then "-18 °C" yazisi kontrol edilir
    And Uygulama kill edilip 30 sn sonra acilir
    And 10 saniye bekle
    When "Safir Buzdolabi" detayina gidilir
    And 10 saniye bekle
    Then "--" yazisi kontrol edilir
    Then "-18 °C" yazisi kontrol edilir
    And Yardimci fonksiyonlara tiklanir
    And Tum fonksiyonlar off yapilir
    And 10 saniye bekle
    And Yardimci fonksiyonlar kapatilir
    And 5 saniye bekle
    And "4 °C" yazisi kontrol edilir
    And "-18 °C" yazisi kontrol edilir

  @SafirBuzdolabi
  Scenario:008 Safir Buzdolabı hizli dondurma yardimci fonksiyonun on yapılması ve sıcaklıkların kontrol edilmesi
    Given Uygulama resetlenir
    When "Safir Buzdolabi" detayina gidilir
    And 5 saniye bekle
    And Yardimci fonksiyonlara tiklanir
    And 5 saniye bekle
    And Tum fonksiyonlar off yapilir
    And 10 saniye bekle
    And Hizli dondurma modu on yapilir
    And 10 saniye bekle
    Then Hizli dondurma modunun on oldugu kontrol edilir
    And Yardimci fonksiyonlar kapatilir
    And 5 saniye bekle
    Then "4 °C" yazisi kontrol edilir
    Then "-27 °C" yazisi kontrol edilir
    And Uygulama kill edilip 30 sn sonra acilir
    And 20 saniye bekle
    When "Safir Buzdolabi" detayina gidilir
    And 5 saniye bekle
    Then "4 °C" yazisi kontrol edilir
    Then "-27 °C" yazisi kontrol edilir
    And Yardimci fonksiyonlara tiklanir
    And 5 saniye bekle
    Then Hizli dondurma modunun on oldugu kontrol edilir
    And Tum fonksiyonlar off yapilir
    And 10 saniye bekle
    And Yardimci fonksiyonlar kapatilir
    And 5 saniye bekle
    Then "4 °C" yazisi kontrol edilir
    Then "-18 °C" yazisi kontrol edilir

  @SafirBuzdolabi
  Scenario:009 Safir Buzdolabı eko fuzzy yardımcı fonksiyonun on yapılması ve sıcaklıkların kontrol edilmesi
    Given Uygulama resetlenir
    When "Safir Buzdolabi" detayina gidilir
    And 10 saniye bekle
    And Yardimci fonksiyonlara tiklanir
    And 5 saniye bekle
    And Tum fonksiyonlar off yapilir
    And 10 saniye bekle
    And Eko Fuzzy modu on yapilir
    And 5 saniye bekle
    Then Eko Fuzzy modu on oldugu kontrol edilir
    And Yardimci fonksiyonlar kapatilir
    And 5 saniye bekle
    Then "4 °C" yazisi kontrol edilir
    Then "-18 °C" yazisi kontrol edilir
    And Uygulama kill edilip 30 sn sonra acilir
    And 10 saniye bekle
    When "Safir Buzdolabi" detayina gidilir
    And 10 saniye bekle
    Then "4 °C" yazisi kontrol edilir
    Then "-18 °C" yazisi kontrol edilir
    And Yardimci fonksiyonlara tiklanir
    And 5 saniye bekle
    Then Eko Fuzzy modu on oldugu kontrol edilir
    And 5 saniye bekle
    And Tum fonksiyonlar off yapilir
    And 10 saniye bekle
    And Yardimci fonksiyonlar kapatilir
    And 5 saniye bekle
    Then "4 °C" yazisi kontrol edilir
    Then "-18 °C" yazisi kontrol edilir

  @SafirBuzdolabi
  Scenario:010 Safir Buzdolabı Tatil modu yardımcı fonksyionu acıldığında hızlı sogutma ve Eko fuzzy fonksiyonları kapatılır
    Given Uygulama resetlenir
    When "Safir Buzdolabi" detayina gidilir
    And 10 saniye bekle
    And Yardimci fonksiyonlara tiklanir
    And 5 saniye bekle
    And Tum fonksiyonlar off yapilir
    And 10 saniye bekle
    And Hizli sogutma on yapilir
    And 10 saniye bekle
    And Eko Fuzzy modu on yapilir
    And 10 saniye bekle
    Then Eko Fuzzy modu on oldugu kontrol edilir
    Then Hizli sogutmanin on oldugu kontrol edilir
    And Tatil modu on yapilir
    And 10 saniye bekle
    Then Hizli sogutmanin off oldugu kontrol edilir
    Then Eko Fuzzy modunun off oldugu kontrol edilir
    Then Tatil modu on oldugu kontrol edilir
    And 5 saniye bekle
    Then Hizli sogutma on yapilir
    And 10 saniye bekle
    Then Hizli sogutmanin on oldugu kontrol edilir
    Then Tatil modunun off oldugu kontrol edilir
    And 5 saniye bekle
    And Tum fonksiyonlar off yapilir
    And 10 saniye bekle

  @SafirBuzdolabi
  Scenario:011 Safir Buzdolabı dondurucu kabin modu kapalı olarak ayarlanır
    Given Uygulama resetlenir
    When "Safir Buzdolabi" detayina gidilir
    And 10 saniye bekle
    And Yardimci fonksiyonlara tiklanir
    And 5 saniye bekle
    And Dondurucu kabin modu "Kapalı" olarak seçilir
    And 10 saniye bekle
    And Yardimci fonksiyonlara tiklanir
    And 5 saniye bekle
    Then "Kapalı" yazisi kontrol edilir
    And Yardimci fonksiyonlar kapatilir
    And 5 saniye bekle
    Then "4 °C" yazisi kontrol edilir
    Then "-18 °C" yazisi kontrol edilir
    And Uygulama kill edilip 30 sn sonra acilir
    And 10 saniye bekle
    When "Safir Buzdolabi" detayina gidilir
    And 10 saniye bekle
    Then "4 °C" yazisi kontrol edilir
    Then "-18 °C" yazisi kontrol edilir
    And Yardimci fonksiyonlara tiklanir
    And 5 saniye bekle
    Then "Kapalı" yazisi kontrol edilir
    And Dondurucu kabin modu "Dondurucu" olarak seçilir
    And 5 saniye bekle
    Then "4 °C" yazisi kontrol edilir
    Then "-18 °C" yazisi kontrol edilir

  @SafirBuzdolabi
  Scenario:012 Safir Buzdolabı dondurucu kabin modu sogutucu olarak ayarlanır
    Given Uygulama resetlenir
    When "Safir Buzdolabi" detayina gidilir
    And 5 saniye bekle
    And Yardimci fonksiyonlara tiklanir
    And 5 saniye bekle
    And Dondurucu kabin modu "Soğutucu" olarak seçilir
    And 10 saniye bekle
    And Yardimci fonksiyonlara tiklanir
    And 5 saniye bekle
    Then "Soğutucu" yazisi kontrol edilir
    And Yardimci fonksiyonlar kapatilir
    And 5 saniye bekle
    Then "4 °C" yazisi kontrol edilir
    Then "4 °C" yazisi kontrol edilir
    And Uygulama kill edilip 30 sn sonra acilir
    And 10 saniye bekle
    When "Safir Buzdolabi" detayina gidilir
    And 10 saniye bekle
    Then "4 °C" yazisi kontrol edilir
    Then "4 °C" yazisi kontrol edilir
    And Yardimci fonksiyonlara tiklanir
    And 5 saniye bekle
    Then "Soğutucu" yazisi kontrol edilir
    And Dondurucu kabin modu "Dondurucu" olarak seçilir
    And 5 saniye bekle
    Then "4 °C" yazisi kontrol edilir
    Then "-18 °C" yazisi kontrol edilir

    @SafirBuzdolabi
  Scenario:013 Safir Buzdolabi cihaz bilgilerinin kontrolleri
    Given Uygulama resetlenir
    Then "Oturma Odası" adi kontrol edilir
    When "Safir Buzdolabi" detayina gidilir
    And 10 saniye bekle
    And Cihaz bilgilerine tiklanir
    And 10 saniye bekle
    Then "CİHAZ KİMLİĞİ" yazisi kontrol edilir
    Then "Arçelik" markasi kontrol edilir
    Then "7294620196" Model numarasi kontrol edilir
    Then "F999940065064141857327" Digital kimlik no kontrol edilir
    Then "VERSİYON" yazisi kontrol edilir
    And 25 saniye bekle
    Then "0.1.26 / - / 2.8.70 / - / -" versiyon numarasi kontrol edilir
    @SafirBuzdolabi
  Scenario:014 Safir Buzdolabi kapi acik bildirimi degistirilip kaydedildikten sonra uygulamanin kill edilip yapilan degisikliklerin kaydedildiginin kontrolleri
    Given Uygulama resetlenir
    When "Safir Buzdolabi" detayina gidilir
    And Ayarlar alanina tiklanir
    And Bildirim tercihlerine gidilir
    And 10 saniye bekle
    And Buzdolabı kapi acik uyarisi off yapilir
    And 10 saniye bekle
    And Bildirim kaydet butonuna basilir
    And 10 saniye bekle
    And Uygulama kill edilip 30 sn sonra acilir
    And 10 saniye bekle
    When "Safir Buzdolabi" detayina gidilir
    When 20 saniye bekle
    And Ayarlar alanina tiklanir
    And 10 saniye bekle
    And Bildirim tercihlerine gidilir
    And 10 saniye bekle
    Then Buzdolabi kapak acik bildirimi pasif kontrolu
    And 2 saniye bekle
    Then Buzdolabi kapak acik bildirimi aktif edilir
    And 20 saniye bekle
    And Bildirim kaydet butonuna basilir
    And 10 saniye bekle
  @SafirBuzdolabi
  Scenario:015 Safir Buzdolabi kapi acik uyarısının kapatılmasının kontrolu
    Given Uygulama resetlenir
    When "Safir Buzdolabi" detayina gidilir
    And Ayarlar alanina tiklanir
    And 10 saniye bekle
    Then Uyari tercihleri butonuna basilir
    And 10 saniye bekle
    Then Buzdolabı kapi acik uyarisi off yapilir
    And 10 saniye bekle
    Then Buzdolabi kapak acik bildirimi pasif kontrolu
    Then navigasyondan geri tusuna basilir
    Then 5 saniye bekle
    Then navigasyondan geri tusuna basilir
    Then 5 saniye bekle
    Then Uygulamayi 10 saniye arka planda tut sonra aktive et
    And 30 saniye bekle
    And Ayarlar alanina tiklanir
    And 10 saniye bekle
    Then Uyari tercihleri butonuna basilir
    And 10 saniye bekle
    Then Buzdolabi kapak acik bildirimi pasif kontrolu
    And 10 saniye bekle
    Then Buzdolabi kapak acik bildirimi on edilir
    And 10 saniye bekle
  @SafirBuzdolabi
  Scenario:016 Safir Buzdolabi mutfak odasina tasinip geri alinmasi kontrolleri
    Given Uygulama resetlenir
    When "Safir Buzdolabi" detayina gidilir
    When Buzdolabini mutfak odasina tasi
    And 10 saniye bekle
    And Mutfak odasina gidilir
    And 10 saniye bekle
    When "Safir Buzdolabi" detayina gidilir
    And 10 saniye bekle
    And Buzdolabini oturma odasina geri tasi
    And 10 saniye bekle
    And Mutfak odasina geri gidilir
    Then "Safir Buzdolabi" urun kontrolu
    And 10 saniye bekle
  @SafirBuzdolabi
  Scenario:017 Safir Buzdolabi kapi acik alarm suresinin bes dk olarak set edildiginin kontrolleri
    Given Uygulama resetlenir
    When "Safir Buzdolabi" detayina gidilir
    And Ayarlar alanina tiklanir
    And 10 saniye bekle
    And Cihaz ayarlari secilir
    And 10 saniye bekle
    And Bekleteme suresi bes dakika olarak ayarlanir
    And 10 saniye bekle
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
    And Uygulama kill edilip 30 sn sonra acilir
    And 10 saniye bekle
    When "Safir Buzdolabi" detayina gidilir
    And 10 saniye bekle
    And Ayarlar alanina tiklanir
    And 10 saniye bekle
    And Cihaz ayarlari secilir
    And 10 saniye bekle
    Then Bekleme suresinin halen bes dakika oldugu kontrol edilir
    And 5 saniye bekle
    #Burası 1dk'ya set etmiyor kontrol edilmeli
    And Bekleteme suresi bir dakika olarak ayarlanir
    And 10 saniye bekle

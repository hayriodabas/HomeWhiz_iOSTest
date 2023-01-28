@TumSenaryolar
Feature: SmartPlug
  Author: Hayri Odabaş
  Date: 2022
  @SmartPlug
  Scenario: 001 Login sonrasi Smartplug bagli oldugunun kontrolleri
    Given Uygulama resetlenir
    And 30 saniye bekle
    Given Logout yapilir
    Given Uygulamaya "mobilotomasyon3@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    Given Uygulama resetlenir
    Given 30 saniye bekle
    Then "CİHAZLAR" yazisi kontrol edilir
    Then "Oturma Odası" adi kontrol edilir
    Then "Priz" urun kontrolu
    Then Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et
    And Cihazlar ekraninda priz on ise off yapilir
    Given 10 saniye bekle
    And Cihazlar ekraninda priz off oldugu kontrol edilir
  @SmartPlug
  Scenario: 002 Smartplug "cihazlar" sayfasındaki switch ile açılır
    Given Uygulama resetlenir
    And 30 saniye bekle
    Then "Oturma Odası" adi kontrol edilir
    Then "Priz" urun kontrolu
    And Cihazlar ekraninda priz off ise on yapilir
    Given 10 saniye bekle
    And Cihazlar ekraninda priz on oldugu kontrol edilir
    And Cihazlar ekraninda priz on ise off yapilir
    Given 10 saniye bekle
    And Cihazlar ekraninda priz off oldugu kontrol edilir
  @SmartPlug
  Scenario: 003 Smartplug'ın cihaz sayfası plug kapalı iken kontrol edilmesi
    Given Uygulama resetlenir
    And 30 saniye bekle
    And Cihazlar ekraninda priz on ise off yapilir
    Given 5 saniye bekle
    And Cihazlar ekraninda priz off oldugu kontrol edilir
    When "Priz" detayina gidilir
    Given 10 saniye bekle
    Then Appbar "Priz" texti kontrol edilir
    And Appbar subtitle "oturma odası" texti kontrol edilir
    Then "AKILLI PRIZ:" yazisi kontrol edilir
    Then "KAPALI" yazisi kontrol edilir
    Then Plug cihaz ekranında kapalı oldugunu kontrol et
    Then "CİHAZ GEÇMİŞİ" yazisi kontrol edilir
    Then "CİHAZA TANIMLI KURALLAR" texti bulunup kontrol edilir
    Then "Henüz kural oluşturmadınız." yazisi kontrol edilir
    Then "KURAL EKLE" yazisi kontrol edilir
    Given Uygulamayi 30 saniye arka planda tut sonra aktive et
    Given 10 saniye bekle
    Then Appbar "Priz" texti kontrol edilir
    Then Appbar subtitle "oturma odası" texti kontrol edilir
    Then "AKILLI PRIZ:" texti bulunup kontrol edilir
    Then "KAPALI" yazisi kontrol edilir
    Then Plug cihaz ekranında kapalı oldugunu kontrol et
    Then "CİHAZ GEÇMİŞİ" yazisi kontrol edilir
    Then "CİHAZA TANIMLI KURALLAR" texti bulunup kontrol edilir
    Then "Henüz kural oluşturmadınız." yazisi kontrol edilir
    Then "KURAL EKLE" yazisi kontrol edilir
    And navigasyondan geri tusuna basilir
    Given 5 saniye bekle
    Then "Oturma Odası" adi kontrol edilir
    Then "Priz" urun kontrolu
    And Cihazlar ekraninda priz off oldugu kontrol edilir
  @SmartPlug
  Scenario: 004 Smartplug'ın cihaz sayfasındaki buton ile açılması ve sayfa iceriginin kontrol edilmesi
    Given Uygulama resetlenir
    And 30 saniye bekle
    Then "Oturma Odası" adi kontrol edilir
    Then "Priz" urun kontrolu
    And Cihazlar ekraninda priz on ise off yapilir
    Given 5 saniye bekle
    And Cihazlar ekraninda priz off oldugu kontrol edilir
    When "Priz" detayina gidilir
    Given 10 saniye bekle
    Then Plug cihaz ekranında kapalı oldugunu kontrol et
    Then Guc butonuna basılır
    Given 10 saniye bekle
    Then Appbar "Priz" texti kontrol edilir
    Then Appbar subtitle "oturma odası" texti kontrol edilir
    Then "ANLIK GÜÇ TÜKETİMİ:" yazisi kontrol edilir
    Then "CİHAZ GEÇMİŞİ" yazisi kontrol edilir
    Then "CİHAZA TANIMLI KURALLAR" texti bulunup kontrol edilir
    Then "Henüz kural oluşturmadınız." yazisi kontrol edilir
    Then "KURAL EKLE" yazisi kontrol edilir
    Given Uygulamayi 30 saniye arka planda tut sonra aktive et
    Given 10 saniye bekle
    Then Appbar "Priz" texti kontrol edilir
    Then Appbar subtitle "oturma odası" texti kontrol edilir
    Then "ANLIK GÜÇ TÜKETİMİ:" texti bulunup kontrol edilir
    Then "CİHAZ GEÇMİŞİ" yazisi kontrol edilir
    Then "CİHAZA TANIMLI KURALLAR" texti bulunup kontrol edilir
    Then "Henüz kural oluşturmadınız." yazisi kontrol edilir
    Then "KURAL EKLE" yazisi kontrol edilir
    Then Guc butonuna basılır
    Given 10 saniye bekle
    And navigasyondan geri tusuna basilir
    And Cihazlar ekraninda priz off oldugu kontrol edilir
    Given 5 saniye bekle
    Then "Oturma Odası" adi kontrol edilir
    Then "Priz" urun kontrolu
    And Cihazlar ekraninda priz off oldugu kontrol edilir
  @SmartPlug
  Scenario: 005 Smartplug sayfasında ekranın aşağı yukarı kaydırılması
    Given Uygulama resetlenir
    And 30 saniye bekle
    And Cihazlar ekraninda priz on ise off yapilir
    Given 5 saniye bekle
    When "Priz" detayina gidilir
    When 10 saniye bekle
    Then Plug cihaz ekranında kapalı oldugunu kontrol et
    Then Guc butonuna basılır
    When 5 saniye bekle
    Then Plug cihaz ekraninda acik oldugunu kontrol et
    And Ekrani "up" kaydir
    And Ekrani "up" kaydir
    And Ekrani "up" kaydir
    Given 5 saniye bekle
    And Ekrani "down" kaydir
    And Ekrani "down" kaydir
    And Ekrani "down" kaydir
    And Ekrani "down" kaydir
    And Ekrani "down" kaydir
    Given 5 saniye bekle
    Then Plug cihaz ekraninda acik oldugunu kontrol et
    Then Guc butonuna basılır
    When 5 saniye bekle
    Then Plug cihaz ekranında kapalı oldugunu kontrol et
    And navigasyondan geri tusuna basilir
    Given 5 saniye bekle
    And Cihazlar ekraninda priz off oldugu kontrol edilir
  @SmartPlug
  Scenario: 006 Smartplug'ın cihazlar ve cihaz ekranında açılıp kapatılması ve uygulama kapatıldığında açık kalıp kalmadığının kontrol edilmesi
    Given Uygulama resetlenir
    And 30 saniye bekle
    Then "Oturma Odası" adi kontrol edilir
    Then "Priz" urun kontrolu
    And Cihazlar ekraninda priz on ise off yapilir
    Given 5 saniye bekle
    And Cihazlar ekraninda priz off oldugu kontrol edilir
    When "Priz" detayina gidilir
    Given 5 saniye bekle
    Then Plug cihaz ekranında kapalı oldugunu kontrol et
    Then Guc butonuna basılır
    Given 5 saniye bekle
    Then Plug cihaz ekraninda acik oldugunu kontrol et
    And navigasyondan geri tusuna basilir
    Given 5 saniye bekle
    And Cihazlar ekraninda priz on oldugu kontrol edilir
    Given Uygulama kill edilip 30 sn sonra acilir
    Given 10 saniye bekle
    Then "Oturma Odası" adi kontrol edilir
    Then "Priz" urun kontrolu
    Then Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et
    And Cihazlar ekraninda priz on oldugu kontrol edilir
    When "Priz" detayina gidilir
    Given 5 saniye bekle
    Then Plug cihaz ekraninda acik oldugunu kontrol et
    And navigasyondan geri tusuna basilir
    Given 5 saniye bekle
    And Cihazlar ekraninda priz on oldugu kontrol edilir
    And Cihazlar ekraninda priz on ise off yapilir
    Given 5 saniye bekle
    And Cihazlar ekraninda priz off oldugu kontrol edilir
    When "Priz" detayina gidilir
    Given 5 saniye bekle
    Then Plug cihaz ekranında kapalı oldugunu kontrol et
  @SmartPlug
  Scenario: 007 Cihaz sayfasında Smartplug detaylarının kontrol edilmesi
    Given Uygulama resetlenir
    And 30 saniye bekle
    Then "Oturma Odası" adi kontrol edilir
    Then "Priz" urun kontrolu
    Then Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et
    And Cihazlar ekraninda priz on ise off yapilir
    Given 5 saniye bekle
    When "Priz" detayina gidilir
    Given 5 saniye bekle
    And Cihaz bilgilerine tiklanir
    Then "Arçelik" markasi kontrol edilir
    Then "9950071100" Model numarasi kontrol edilir
    Then "S999908599913469126697" Digital kimlik no kontrol edilir
    And navigasyondan geri tusuna basilir
    Given 5 saniye bekle
    And navigasyondan geri tusuna basilir
    Given 5 saniye bekle
  @SmartPlug
  Scenario: 008 Smartplug sayfasına Akıllı erişim sayfasından gidilmesinin kontrol edilmesi
    Given Uygulama resetlenir
    And 30 saniye bekle
    Then "Oturma Odası" adi kontrol edilir
    Then "Priz" urun kontrolu
    Then Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et
    And Cihazlar ekraninda priz on ise off yapilir
    Given 5 saniye bekle
    And "Akıllı Erişim" butonuna basilir
    And 5 saniye bekle
    And "AKILLI ERIŞIM" yazisi kontrol edilir
    And Akilli erisimden priz sayfasi acilir
    Given 5 saniye bekle
    And "AKILLI ERIŞIM" yazisi kontrol edilir
    Then "Priz" urun kontrolu
    When "Priz" detayina gidilir
    Given 5 saniye bekle
    Then Appbar "Priz" texti kontrol edilir
    And Appbar subtitle "oturma odası" texti kontrol edilir
    Then "AKILLI PRIZ:" yazisi kontrol edilir
    Then "CİHAZ GEÇMİŞİ" yazisi kontrol edilir
    Then "CİHAZA TANIMLI KURALLAR" texti bulunup kontrol edilir
    And navigasyondan geri tusuna basilir
    Given 5 saniye bekle
    And "AKILLI ERIŞIM" yazisi kontrol edilir
    Then "Priz" urun kontrolu
  @SmartPlug
  Scenario: 009 Smartplug Akıllı erişim sayfasından plug açılması ve kapanması kontol edilmesi
    Given Uygulama resetlenir
    And 30 saniye bekle
    Then "Oturma Odası" adi kontrol edilir
    Then "Priz" urun kontrolu
    Then Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et
    And Cihazlar ekraninda priz on ise off yapilir
    Given 5 saniye bekle
    And "Akıllı Erişim" butonuna basilir
    And 5 saniye bekle
    And Akilli erisimden priz sayfasi acilir
    Given 5 saniye bekle
    Then "Priz" urun kontrolu
    Then Akilli erisim priz sayfasinda kapali oldugu kontrol edilir
    Then Akilli erisim priz sayfasindan priz acma butonuna basilir
    Given 5 saniye bekle
    Then Akilli erisim priz sayfasinda acik oldugu kontrol edilir
    When "Priz" detayina gidilir
    Given 5 saniye bekle
    Then Plug cihaz ekraninda acik oldugunu kontrol et
    Then Appbar "Priz" texti kontrol edilir
    And Appbar subtitle "oturma odası" texti kontrol edilir
    And navigasyondan geri tusuna basilir
    Given 5 saniye bekle
    And "AKILLI ERIŞIM" yazisi kontrol edilir
    Then "Priz" urun kontrolu
    Then Akilli erisim priz sayfasinda acik oldugu kontrol edilir
    Then Akilli erisim priz sayfasindan priz kapama butonuna basilir
    Given 5 saniye bekle
    Then Akilli erisim priz sayfasinda kapali oldugu kontrol edilir
  @SmartPlug
  Scenario: 010 Smartplug mutfağa taşınır ve geri alınır
    Given Uygulama resetlenir
    And 30 saniye bekle
    When "Priz" detayina gidilir
    Given 10 saniye bekle
    When SmartPlug cihazini mutfak odasina tasi
    And 5 saniye bekle
    Given Uygulama resetlenir
    And 30 saniye bekle
    And Mutfak odasina gidilir
    And 10 saniye bekle
    And "Mutfak" yazisi kontrol edilir
    Then "Priz" detayina gidilir
    Then 10 saniye bekle
    And SmartPlug cihazini oturma odasina geri tasi
    And 10 saniye bekle
    And Ekrani "right" kaydir
    And 3 saniye bekle
  @SmartPlug
  Scenario: 011 Smartplug sayfasında tüketim detayları ekranının kontrol edilmesi
    Given Uygulama resetlenir
    And 30 saniye bekle
    And Cihazlar ekraninda priz on ise off yapilir
    Given 5 saniye bekle
    When "Priz" detayina gidilir
    Given 5 saniye bekle
    And Sag ust uc nokta butonuna basilir
    Given 5 saniye bekle
    And "Tüketim" butonuna basilir
    Given 5 saniye bekle
    Then "Tüketim" yazisi kontrol edilir
    Then "Cihazınızın toplam çalışma süresini, harcadığı enerji miktarını ve bu miktara bağlı harcama tutarını görüntüleyin." yazisi kontrol edilir
    Then "YILLIK GRAFİK" yazisi kontrol edilir
    And "Tüketim Ücreti" textine basilir
    Then 5 saniye bekle
    #Then "0.0 TRY" yazisi kontrol edilir
    And "Enerji Tüketimi" textine basilir
    Then 5 saniye bekle
    #Then "0.0 kWh" yazisi kontrol edilir
    Then "SON GÜNCELLEME:" yazisi kontrol edilir
    Then "Anlık güç tüketimi" yazisi kontrol edilir
    Then "Cihaz şuan çalışmıyor. " yazisi kontrol edilir
    Then "Priz ne kadar harcadı?" texti bulunup kontrol edilir
    Then "Başlangıç Tarihi" texti bulunup kontrol edilir
    Then "Bitiş Tarihi" yazisi kontrol edilir
    Then "HESAPLA" yazisi kontrol edilir
    Given Uygulamayi 30 saniye arka planda tut sonra aktive et
    Given 10 saniye bekle
    Then "Tüketim" yazisi kontrol edilir
    Then "Cihazınızın toplam çalışma süresini, harcadığı enerji miktarını ve bu miktara bağlı harcama tutarını görüntüleyin." texti bulunup kontrol edilir
    Then "YILLIK GRAFİK" yazisi kontrol edilir
    And "Tüketim Ücreti" textine basilir
    Then 5 saniye bekle
    #Then "0.0 TRY" yazisi kontrol edilir
    And "Enerji Tüketimi" textine basilir
    Then 5 saniye bekle
    #Then "0.0 kWh" yazisi kontrol edilir
    Then "SON GÜNCELLEME:" yazisi kontrol edilir
    Then "Anlık güç tüketimi" yazisi kontrol edilir
    Then "Cihaz şuan çalışmıyor. " texti bulunup kontrol edilir
    Then "Priz ne kadar harcadı?" texti bulunup kontrol edilir
    Then "Başlangıç Tarihi" texti bulunup kontrol edilir
    Then "Bitiş Tarihi" yazisi kontrol edilir
    Then "HESAPLA" yazisi kontrol edilir
    Given 5 saniye bekle
    And navigasyondan geri tusuna basilir
    Given 5 saniye bekle
    And navigasyondan geri tusuna basilir
    Given 5 saniye bekle
  @SmartPlug
  Scenario: 012 Smartplug sayfasında cihaz işlevselliğini kontrol et seçeneğine tıklanır
    Given Uygulama resetlenir
    And 30 saniye bekle
    And Cihazlar ekraninda priz on ise off yapilir
    Given 5 saniye bekle
    When "Priz" detayina gidilir
    Given 5 saniye bekle
    Then Sag ust uc nokta butonuna basilir
    And "Cihaz İşlevselliğini kontrol et" textine basilir
    Given 3 saniye bekle
    Then "Cihaz İşlevselliğini kontrol et" yazisi kontrol edilir
    Then "CİHAZI BELİRLE" butonuna basilir
    Given 5 saniye bekle
    And Carpı isaretine basilip ekran kapatilir
    Given 5 saniye bekle
    Then Appbar "Priz" texti kontrol edilir
    And Appbar subtitle "oturma odası" texti kontrol edilir
    And navigasyondan geri tusuna basilir
    Given 3 saniye bekle
    And Cihazlar ekraninda priz on ise off yapilir
    Given 3 saniye bekle
    Then Cihazlar ekraninda priz off oldugu kontrol edilir
  @SmartPlug
  Scenario: 013 Smartplug tüketim detaylarında harcama hesaplaması yapılması
    Given Uygulama resetlenir
    And 30 saniye bekle
    And Cihazlar ekraninda priz on ise off yapilir
    Given 5 saniye bekle
    When "Priz" detayina gidilir
    Given 5 saniye bekle
    Then Sag ust uc nokta butonuna basilir
    Given 5 saniye bekle
    And "Tüketim" textine basilir
    Given 5 saniye bekle
    And Ekrani "up" kaydir
    Given 3 saniye bekle
    And Plug başlangıç tarih günü "28" olarak degistirilir
    Given 3 saniye bekle
    And "HESAPLA" textine basilir
    Given 5 saniye bekle
    Then "Toplam harcama tutarı" yazisi kontrol edilir
    Then "TRY" yazisi icerdigi kontrol edilir
    Then "YENİDEN HESAPLA" yazisi kontrol edilir
    And navigasyondan geri tusuna basilir
    Given 5 saniye bekle
    And navigasyondan geri tusuna basilir
    Given 5 saniye bekle
  @SmartPlug
  Scenario: 014 Smartplug sayfasında plug on/off sonrası cihaz geçmişinin kontrol edilmesi
    Given Uygulama resetlenir
    And 30 saniye bekle
    And Cihazlar ekraninda priz on ise off yapilir
    Given 5 saniye bekle
    When "Priz" detayina gidilir
    Given 5 saniye bekle
    Then Plug cihaz ekranında kapalı oldugunu kontrol et
    Then Guc butonuna basılır
    Given 10 saniye bekle
    Then Plug cihaz ekraninda acik oldugunu kontrol et
    And Ekrani "up" kaydir
    And 3 saniye bekle
    Then Plug cihaz ekraninda acik oldugunu kontrol et
    And Ekrani "down" kaydir
    Given 3 saniye bekle
    Then Guc butonuna basılır
    Given 10 saniye bekle
    Then Plug cihaz ekranında kapalı oldugunu kontrol et
    And Ekrani "up" kaydir
    And 3 saniye bekle
    Then Plug cihaz ekranında kapalı oldugunu kontrol et
  @SmartPlug
  Scenario: 015 Smartplug sayfasında tüketim detayları ekranının kontrol edilmesi
    Given Uygulama resetlenir
    And 30 saniye bekle
    And Cihazlar ekraninda priz off ise on yapilir
    Given 5 saniye bekle
    When "Priz" detayina gidilir
    Given 5 saniye bekle
    And Cihaz ve tuketim ekranlarindaki tuketim ayni oldugu kontrol edilir
    And navigasyondan geri tusuna basilir
    Given 5 saniye bekle
    And navigasyondan geri tusuna basilir
    Given 5 saniye bekle
    And Cihazlar ekraninda priz on ise off yapilir
    Given 10 saniye bekle
  @SmartPlug
  Scenario: 016 Smartplug açık ise test kapalı olarak sonlandırılır
    Given Uygulama resetlenir
    And 30 saniye bekle
    And Cihazlar ekraninda priz on ise off yapilir
    Given 10 saniye bekle



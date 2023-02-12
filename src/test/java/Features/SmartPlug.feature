@TumSenaryolar
Feature: SmartPlug
  Author: Hayri Odabaş
  Date: 2022
  @SmartPlug
  Scenario: 001 Login sonrasi Smartplug bagli oldugunun kontrolleri
    * Uygulama resetlenir
    * 30 saniye bekle
    * Logout yapilir
    * Uygulamaya "mobilotomasyon3@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    * Uygulama resetlenir
    * 30 saniye bekle
    * "CİHAZLAR" yazisi kontrol edilir
    * "Oturma Odası" adi kontrol edilir
    * "Priz" urun kontrolu
    * Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et
    * Cihazlar ekraninda priz on ise off yapilir
    * 10 saniye bekle
    * Cihazlar ekraninda priz off oldugu kontrol edilir
  @SmartPlug
  Scenario: 002 Smartplug "cihazlar" sayfasındaki switch ile açılır
    * Uygulama resetlenir
    * 30 saniye bekle
    * "Oturma Odası" adi kontrol edilir
    * "Priz" urun kontrolu
    * Cihazlar ekraninda priz off ise on yapilir
    * 10 saniye bekle
    * Cihazlar ekraninda priz on oldugu kontrol edilir
    * Cihazlar ekraninda priz on ise off yapilir
    * 10 saniye bekle
    * Cihazlar ekraninda priz off oldugu kontrol edilir
  @SmartPlug
  Scenario: 003 Smartplug'ın cihaz sayfası plug kapalı iken kontrol edilmesi
    * Uygulama resetlenir
    * 30 saniye bekle
    * Cihazlar ekraninda priz on ise off yapilir
    * 5 saniye bekle
    * Cihazlar ekraninda priz off oldugu kontrol edilir
    * "Priz" detayina gidilir
    * 10 saniye bekle
    * Appbar "Priz" texti kontrol edilir
    * Appbar subtitle "oturma odası" texti kontrol edilir
    * "AKILLI PRIZ:" yazisi kontrol edilir
    * "KAPALI" yazisi kontrol edilir
    * Plug cihaz ekranında kapalı oldugunu kontrol et
    * "CİHAZ GEÇMİŞİ" yazisi kontrol edilir
    * "CİHAZA TANIMLI KURALLAR" texti bulunup kontrol edilir
    * "Henüz kural oluşturmadınız." yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * 10 saniye bekle
    * Appbar "Priz" texti kontrol edilir
    * Appbar subtitle "oturma odası" texti kontrol edilir
    * "AKILLI PRIZ:" texti bulunup kontrol edilir
    * "KAPALI" yazisi kontrol edilir
    * Plug cihaz ekranında kapalı oldugunu kontrol et
    * "CİHAZ GEÇMİŞİ" yazisi kontrol edilir
    * "CİHAZA TANIMLI KURALLAR" texti bulunup kontrol edilir
    * "Henüz kural oluşturmadınız." yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
    * "Oturma Odası" adi kontrol edilir
    * "Priz" urun kontrolu
    * Cihazlar ekraninda priz off oldugu kontrol edilir
  @SmartPlug
  Scenario: 004 Smartplug'ın cihaz sayfasındaki buton ile açılması ve sayfa iceriginin kontrol edilmesi
    * Uygulama resetlenir
    * 30 saniye bekle
    * "Oturma Odası" adi kontrol edilir
    * "Priz" urun kontrolu
    * Cihazlar ekraninda priz on ise off yapilir
    * 5 saniye bekle
    * Cihazlar ekraninda priz off oldugu kontrol edilir
    * "Priz" detayina gidilir
    * 10 saniye bekle
    * Plug cihaz ekranında kapalı oldugunu kontrol et
    * Guc butonuna basılır
    * 10 saniye bekle
    * Appbar "Priz" texti kontrol edilir
    * Appbar subtitle "oturma odası" texti kontrol edilir
    * "ANLIK GÜÇ TÜKETİMİ:" yazisi kontrol edilir
    * "CİHAZ GEÇMİŞİ" yazisi kontrol edilir
    * "CİHAZA TANIMLI KURALLAR" texti bulunup kontrol edilir
    * "Henüz kural oluşturmadınız." yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * 10 saniye bekle
    * Appbar "Priz" texti kontrol edilir
    * Appbar subtitle "oturma odası" texti kontrol edilir
    * "ANLIK GÜÇ TÜKETİMİ:" texti bulunup kontrol edilir
    * "CİHAZ GEÇMİŞİ" yazisi kontrol edilir
    * "CİHAZA TANIMLI KURALLAR" texti bulunup kontrol edilir
    * "Henüz kural oluşturmadınız." yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * Guc butonuna basılır
    * 10 saniye bekle
    * navigasyondan geri tusuna basilir
    * Cihazlar ekraninda priz off oldugu kontrol edilir
    * 5 saniye bekle
    * "Oturma Odası" adi kontrol edilir
    * "Priz" urun kontrolu
    * Cihazlar ekraninda priz off oldugu kontrol edilir
  @SmartPlug
  Scenario: 005 Smartplug sayfasında ekranın aşağı yukarı kaydırılması
    * Uygulama resetlenir
    * 30 saniye bekle
    * Cihazlar ekraninda priz on ise off yapilir
    * 5 saniye bekle
    * "Priz" detayina gidilir
    * 10 saniye bekle
    * Plug cihaz ekranında kapalı oldugunu kontrol et
    * Guc butonuna basılır
    * 5 saniye bekle
    * Plug cihaz ekraninda acik oldugunu kontrol et
    * Ekrani "up" kaydir
    * Ekrani "up" kaydir
    * Ekrani "up" kaydir
    * 5 saniye bekle
    * Ekrani "down" kaydir
    * Ekrani "down" kaydir
    * Ekrani "down" kaydir
    * Ekrani "down" kaydir
    * Ekrani "down" kaydir
    * 5 saniye bekle
    * Plug cihaz ekraninda acik oldugunu kontrol et
    * Guc butonuna basılır
    * 5 saniye bekle
    * Plug cihaz ekranında kapalı oldugunu kontrol et
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
    * Cihazlar ekraninda priz off oldugu kontrol edilir
  @SmartPlug
  Scenario: 006 Smartplug'ın cihazlar ve cihaz ekranında açılıp kapatılması ve uygulama kapatıldığında açık kalıp kalmadığının kontrol edilmesi
    * Uygulama resetlenir
    * 30 saniye bekle
    * "Oturma Odası" adi kontrol edilir
    * "Priz" urun kontrolu
    * Cihazlar ekraninda priz on ise off yapilir
    * 5 saniye bekle
    * Cihazlar ekraninda priz off oldugu kontrol edilir
    * "Priz" detayina gidilir
    * 5 saniye bekle
    * Plug cihaz ekranında kapalı oldugunu kontrol et
    * Guc butonuna basılır
    * 5 saniye bekle
    * Plug cihaz ekraninda acik oldugunu kontrol et
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
    * Cihazlar ekraninda priz on oldugu kontrol edilir
    * Uygulama kill edilip 30 sn sonra acilir
    * 10 saniye bekle
    * "Oturma Odası" adi kontrol edilir
    * "Priz" urun kontrolu
    * Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et
    * Cihazlar ekraninda priz on oldugu kontrol edilir
    * "Priz" detayina gidilir
    * 5 saniye bekle
    * Plug cihaz ekraninda acik oldugunu kontrol et
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
    * Cihazlar ekraninda priz on oldugu kontrol edilir
    * Cihazlar ekraninda priz on ise off yapilir
    * 5 saniye bekle
    * Cihazlar ekraninda priz off oldugu kontrol edilir
    * "Priz" detayina gidilir
    * 5 saniye bekle
    * Plug cihaz ekranında kapalı oldugunu kontrol et
  @SmartPlug
  Scenario: 007 Cihaz sayfasında Smartplug detaylarının kontrol edilmesi
    * Uygulama resetlenir
    * 30 saniye bekle
    * "Oturma Odası" adi kontrol edilir
    * "Priz" urun kontrolu
    * Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et
    * Cihazlar ekraninda priz on ise off yapilir
    * 5 saniye bekle
    * "Priz" detayina gidilir
    * 5 saniye bekle
    * Cihaz bilgilerine tiklanir
    * "Arçelik" markasi kontrol edilir
    * "9950071100" Model numarasi kontrol edilir
    * "S999908599913469126697" Digital kimlik no kontrol edilir
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
  @SmartPlug
  Scenario: 008 Smartplug sayfasına Akıllı erişim sayfasından gidilmesinin kontrol edilmesi
    * Uygulama resetlenir
    * 30 saniye bekle
    * "Oturma Odası" adi kontrol edilir
    * "Priz" urun kontrolu
    * Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et
    * Cihazlar ekraninda priz on ise off yapilir
    * 5 saniye bekle
    * "Akıllı Erişim" butonuna basilir
    * 5 saniye bekle
    * "AKILLI ERIŞIM" yazisi kontrol edilir
    * Akilli erisimden priz sayfasi acilir
    * 5 saniye bekle
    * "AKILLI ERIŞIM" yazisi kontrol edilir
    * "Priz" urun kontrolu
    * "Priz" detayina gidilir
    * 5 saniye bekle
    * Appbar "Priz" texti kontrol edilir
    * Appbar subtitle "oturma odası" texti kontrol edilir
    * "AKILLI PRIZ:" yazisi kontrol edilir
    * "CİHAZ GEÇMİŞİ" yazisi kontrol edilir
    * "CİHAZA TANIMLI KURALLAR" texti bulunup kontrol edilir
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
    * "AKILLI ERIŞIM" yazisi kontrol edilir
    * "Priz" urun kontrolu
  @SmartPlug
  Scenario: 009 Smartplug Akıllı erişim sayfasından plug açılması ve kapanması kontol edilmesi
    * Uygulama resetlenir
    * 30 saniye bekle
    * "Oturma Odası" adi kontrol edilir
    * "Priz" urun kontrolu
    * Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et
    * Cihazlar ekraninda priz on ise off yapilir
    * 5 saniye bekle
    * "Akıllı Erişim" butonuna basilir
    * 5 saniye bekle
    * Akilli erisimden priz sayfasi acilir
    * 5 saniye bekle
    * "Priz" urun kontrolu
    * Akilli erisim priz sayfasinda kapali oldugu kontrol edilir
    * Akilli erisim priz sayfasindan priz acma butonuna basilir
    * 5 saniye bekle
    * Akilli erisim priz sayfasinda acik oldugu kontrol edilir
    * "Priz" detayina gidilir
    * 5 saniye bekle
    * Plug cihaz ekraninda acik oldugunu kontrol et
    * Appbar "Priz" texti kontrol edilir
    * Appbar subtitle "oturma odası" texti kontrol edilir
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
    * "AKILLI ERIŞIM" yazisi kontrol edilir
    * "Priz" urun kontrolu
    * Akilli erisim priz sayfasinda acik oldugu kontrol edilir
    * Akilli erisim priz sayfasindan priz kapama butonuna basilir
    * 5 saniye bekle
    * Akilli erisim priz sayfasinda kapali oldugu kontrol edilir
  @SmartPlug
  Scenario: 010 Smartplug mutfağa taşınır ve geri alınır
    * Uygulama resetlenir
    * 30 saniye bekle
    * "Priz" detayina gidilir
    * 10 saniye bekle
    * SmartPlug cihazini mutfak odasina tasi
    * 5 saniye bekle
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * 10 saniye bekle
    * "Mutfak" yazisi kontrol edilir
    * "Priz" detayina gidilir
    * 10 saniye bekle
    * SmartPlug cihazini oturma odasina geri tasi
    * 10 saniye bekle
    * Ekrani "right" kaydir
    * 3 saniye bekle
  @SmartPlug
  Scenario: 011 Smartplug sayfasında tüketim detayları ekranının kontrol edilmesi
    * Uygulama resetlenir
    * 30 saniye bekle
    * Cihazlar ekraninda priz on ise off yapilir
    * 5 saniye bekle
    * "Priz" detayina gidilir
    * 5 saniye bekle
    * Sag ust uc nokta butonuna basilir
    * 5 saniye bekle
    * "Tüketim" butonuna basilir
    * 5 saniye bekle
    * "Tüketim" yazisi kontrol edilir
    * "Cihazınızın toplam çalışma süresini, harcadığı enerji miktarını ve bu miktara bağlı harcama tutarını görüntüleyin." yazisi kontrol edilir
    * "YILLIK GRAFİK" yazisi kontrol edilir
    * "Tüketim Ücreti" textine basilir
    * 5 saniye bekle
    #* "0.0 TRY" yazisi kontrol edilir
    * "Enerji Tüketimi" textine basilir
    * 5 saniye bekle
    #* "0.0 kWh" yazisi kontrol edilir
    * "SON GÜNCELLEME:" yazisi kontrol edilir
    * "Anlık güç tüketimi" yazisi kontrol edilir
    * "Cihaz şuan çalışmıyor. " yazisi kontrol edilir
    * "Priz ne kadar harcadı?" texti bulunup kontrol edilir
    * "Başlangıç Tarihi" texti bulunup kontrol edilir
    * "Bitiş Tarihi" yazisi kontrol edilir
    * "HESAPLA" yazisi kontrol edilir
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * 10 saniye bekle
    * "Tüketim" yazisi kontrol edilir
    * "Cihazınızın toplam çalışma süresini, harcadığı enerji miktarını ve bu miktara bağlı harcama tutarını görüntüleyin." texti bulunup kontrol edilir
    * "YILLIK GRAFİK" yazisi kontrol edilir
    * "Tüketim Ücreti" textine basilir
    * 5 saniye bekle
    #* "0.0 TRY" yazisi kontrol edilir
    * "Enerji Tüketimi" textine basilir
    * 5 saniye bekle
    #* "0.0 kWh" yazisi kontrol edilir
    * "SON GÜNCELLEME:" yazisi kontrol edilir
    * "Anlık güç tüketimi" yazisi kontrol edilir
    * "Cihaz şuan çalışmıyor. " texti bulunup kontrol edilir
    * "Priz ne kadar harcadı?" texti bulunup kontrol edilir
    * "Başlangıç Tarihi" texti bulunup kontrol edilir
    * "Bitiş Tarihi" yazisi kontrol edilir
    * "HESAPLA" yazisi kontrol edilir
    * 5 saniye bekle
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
  @SmartPlug
  Scenario: 012 Smartplug sayfasında cihaz işlevselliğini kontrol et seçeneğine tıklanır
    * Uygulama resetlenir
    * 30 saniye bekle
    * Cihazlar ekraninda priz on ise off yapilir
    * 5 saniye bekle
    * "Priz" detayina gidilir
    * 5 saniye bekle
    * Sag ust uc nokta butonuna basilir
    * "Cihaz İşlevselliğini kontrol et" textine basilir
    * 3 saniye bekle
    * "Cihaz İşlevselliğini kontrol et" yazisi kontrol edilir
    * "CİHAZI BELİRLE" butonuna basilir
    * 5 saniye bekle
    * Carpı isaretine basilip ekran kapatilir
    * 5 saniye bekle
    * Appbar "Priz" texti kontrol edilir
    * Appbar subtitle "oturma odası" texti kontrol edilir
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * Cihazlar ekraninda priz on ise off yapilir
    * 3 saniye bekle
    * Cihazlar ekraninda priz off oldugu kontrol edilir
  @SmartPlug
  Scenario: 013 Smartplug tüketim detaylarında harcama hesaplaması yapılması
    * Uygulama resetlenir
    * 30 saniye bekle
    * Cihazlar ekraninda priz on ise off yapilir
    * 5 saniye bekle
    * "Priz" detayina gidilir
    * 5 saniye bekle
    * Sag ust uc nokta butonuna basilir
    * 5 saniye bekle
    * "Tüketim" textine basilir
    * 5 saniye bekle
    * Ekrani "up" kaydir
    * 3 saniye bekle
    * Plug başlangıç tarih günü "28" olarak degistirilir
    * 3 saniye bekle
    * "HESAPLA" textine basilir
    * 5 saniye bekle
    * "Toplam harcama tutarı" yazisi kontrol edilir
    * "TRY" yazisi icerdigi kontrol edilir
    * "YENİDEN HESAPLA" yazisi kontrol edilir
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
  @SmartPlug
  Scenario: 014 Smartplug sayfasında plug on/off sonrası cihaz geçmişinin kontrol edilmesi
    * Uygulama resetlenir
    * 30 saniye bekle
    * Cihazlar ekraninda priz on ise off yapilir
    * 5 saniye bekle
    * "Priz" detayina gidilir
    * 5 saniye bekle
    * Plug cihaz ekranında kapalı oldugunu kontrol et
    * Guc butonuna basılır
    * 10 saniye bekle
    * Plug cihaz ekraninda acik oldugunu kontrol et
    * Ekrani "up" kaydir
    * 3 saniye bekle
    * Plug cihaz ekraninda acik oldugunu kontrol et
    * Ekrani "down" kaydir
    * 3 saniye bekle
    * Guc butonuna basılır
    * 10 saniye bekle
    * Plug cihaz ekranında kapalı oldugunu kontrol et
    * Ekrani "up" kaydir
    * 3 saniye bekle
    * Plug cihaz ekranında kapalı oldugunu kontrol et
  @SmartPlug
  Scenario: 015 Smartplug sayfasında tüketim detayları ekranının kontrol edilmesi
    * Uygulama resetlenir
    * 30 saniye bekle
    * Cihazlar ekraninda priz off ise on yapilir
    * 5 saniye bekle
    * "Priz" detayina gidilir
    * 5 saniye bekle
    * Cihaz ve tuketim ekranlarindaki tuketim ayni oldugu kontrol edilir
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
    * Cihazlar ekraninda priz on ise off yapilir
    * 10 saniye bekle
  @SmartPlug
  Scenario: 016 Smartplug açık ise test kapalı olarak sonlandırılır
    * Uygulama resetlenir
    * 30 saniye bekle
    * Cihazlar ekraninda priz on ise off yapilir
    * 10 saniye bekle



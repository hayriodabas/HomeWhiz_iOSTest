@TumSenaryolar
Feature: Smartlamp
Author: Hayri Odabas
Date: 2022
  @SmartLamp
  Scenario:001 SmartLamp Login sonrasi cihazlarin bagli oldugunun kontrolleri
    Given Uygulama resetlenir
    Given Logout yapilir
    Given Uygulamaya "mobilotomasyon3@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    Given Uygulama resetlenir
    Given 30 saniye bekle
    Then "Oturma Odası" adi kontrol edilir
    Then "Lamba" urun kontrolu
    Then Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et
  @SmartLamp
  Scenario:002 SmartLamp cihaz detaylarinin kontrolu
    Given Uygulama resetlenir
    And 30 saniye bekle
    Then "Lambaaaaaa" detayina gidilir
    And 5 saniye bekle
    And Cihaz bilgilerine tiklanir
    And 5 saniye bekle
    Then "CİHAZ KİMLİĞİ" yazisi kontrol edilir
    And "Arçelik" markasi kontrol edilir
    And "9950091100" Model numarasi kontrol edilir
    And "S999971863053519766183" Digital kimlik no kontrol edilir
    And "0.10.51" versiyon numarasi kontrol edilir
    And "C8:B4:22:6E:33:10" yazisi kontrol edilir
    And navigasyondan geri tusuna basilir
    Given 5 saniye bekle
    And navigasyondan geri tusuna basilir
    Given 5 saniye bekle
  @SmartLamp
  Scenario:003 SmartLamp cihazlar ekranindan lamba cihazını acma kapama kontrolu
    Given Uygulama resetlenir
    And 30 saniye bekle
    Then Cihazlarim ekraninda lamba on ise off konumuna getirilir
    Then Cihazlarim ekraninda lamba off oldugu kontrol edilir
    Then Lamba cihazlarim ekraninda on yapilir
    Then 10 saniye bekle
    And Cihazlarim ekraninda lamba on oldugu kontrol edilir
    And 10 saniye bekle
    Then Lamba cihazlarim ekraninda off yapilir
    And 5 saniye bekle
    Then Cihazlarim ekraninda lamba off oldugu kontrol edilir
    And 5 saniye bekle
  @SmartLamp
  Scenario:004 SmartLamp cihaz ekranının kontrolu
    Given Uygulama resetlenir
    And 30 saniye bekle
    Then Lamba cihazlarim ekraninda on yapilir
    Then 10 saniye bekle
    Then "Lamba" detayina gidilir
    And 5 saniye bekle
    And "Liste" butonuna basilir
    And 5 saniye bekle
    Then "Sıcak" elementini bekle
    Then "Lamba" yazisi kontrol edilir
    Then "oturma odası" yazisi kontrol edilir
    Then "Liste" yazisi kontrol edilir
    Then "Çember" yazisi kontrol edilir
    Then "Sıcak" yazisi kontrol edilir
    Then "Gün Işığı" yazisi kontrol edilir
    Then "Soğuk" yazisi kontrol edilir
    Then "CİHAZ GEÇMİŞİ" yazisi kontrol edilir
    Then "Bugün" yazisi icerdigi kontrol edilir
    Then "Cihaz durumu: Kapalı " yazisi kontrol edilir
    Then "Cihaz durumu: Açık " yazisi kontrol edilir
    Then "CİHAZA TANIMLI KURALLAR" yazisi kontrol edilir
    Then "Henüz kural oluşturmadınız." yazisi kontrol edilir
    Then "KURAL EKLE" yazisi kontrol edilir
    Then "İPUÇLARI" yazisi kontrol edilir
    And "Akıllı Ampülünüzü 7W ve 4000Kelvin özelliği ile enerji verimli kullanabilirsiniz." yazisi kontrol edilir
    Then Lamba power butonu ile kapatilir
    Then 10 saniye bekle

  @SmartLamp
  Scenario:005 SmartLamp lamba ekranindan cihaz acma kapama kontrolu
    Given Uygulama resetlenir
    Then 30 saniye bekle
    Then Cihazlarim ekraninda lamba on ise off konumuna getirilir
    Then Cihazlarim ekraninda lamba off oldugu kontrol edilir
    Then "Lamba" detayina gidilir
    And 5 saniye bekle
    Then Lamba power butonu ile acilir
    And 10 saniye bekle
    And "Liste" butonuna basilir
    And 5 saniye bekle
    Then "Cihaz durumu: Açık " yazisi kontrol edilir
    And navigasyondan geri tusuna basilir
    And 5 saniye bekle
    Then Cihazlarim ekraninda lamba on oldugu kontrol edilir
    Given Uygulama resetlenir
    And 10 saniye bekle
    And "Lamba" detayina gidilir
    And 5 saniye bekle
    Then "Cihaz durumu: Açık " yazisi kontrol edilir
    Then Lamba power butonu ile kapatilir
    And 10 saniye bekle
    Then "Cihaz durumu: Kapalı " yazisi kontrol edilir
#    And navigasyondan geri tusuna basilir
#    And 5 saniye bekle
#    Then Cihazlarim ekraninda lamba off oldugu kontrol edilir
  @SmartLamp
  Scenario:006 SmartLamp power butonu ile acildiktan sonra uygulama arka plana atilip acilinca lambanin acik kalmasi kontrolu
    Given Uygulama resetlenir
    And 30 saniye bekle
    Then "Lamba" detayina gidilir
    And 5 saniye bekle
    And Lamba power butonu ile acilir
    And 10 saniye bekle
    And "Liste" butonuna basilir
    And 5 saniye bekle
    And Ekrani "up" kaydir
    Then "Cihaz durumu: Açık " yazisi kontrol edilir
    Then Uygulamayi 30 saniye arka planda tut sonra aktive et
    And 5 saniye bekle
    And Ekrani "down" kaydir
    And 5 saniye bekle
    Then "Cihaz durumu: Açık " yazisi kontrol edilir
    And navigasyondan geri tusuna basilir
    And 5 saniye bekle
    And Cihazlarim ekraninda lamba on oldugu kontrol edilir
    Given Uygulama resetlenir
    And 10 saniye bekle
    Then "Lamba" detayina gidilir
    And 5 saniye bekle
    Then Lamba power butonu ile kapatilir
    And 10 saniye bekle
#    And navigasyondan geri tusuna basilir
#    And 5 saniye bekle
#    Then Cihazlarim ekraninda lamba off oldugu kontrol edilir
  @SmartLamp
  Scenario: 007 SmartLamp cihazi cember gorunumune geçiş ve ekran bilgilerinin kontrolu
    Given Uygulama resetlenir
    And 30 saniye bekle
    Then "Lamba" detayina gidilir
    And 5 saniye bekle
    And Lamba power butonu ile acilir
    And 10 saniye bekle
    And "Liste" butonuna basilir
    And 5 saniye bekle
    Then "oturma odası" adi kontrol edilir
    Then "Lamba" detayina gidilir
    And 5 saniye bekle
    Then "Çember" textine basilir
    Then Appbar "Lamba" texti kontrol edilir
    And Appbar subtitle "oturma odası" texti kontrol edilir
    And "Liste" yazisi kontrol edilir
    And "Çember" yazisi kontrol edilir
    And Ekrani "up" kaydir
    And "CİHAZ GEÇMİŞİ" yazisi kontrol edilir
    And "Bugün" icerigi konrol edilir
    Then "Cihaz durumu: Kapalı " yazisi kontrol edilir
    Then "Cihaz durumu: Açık " yazisi kontrol edilir
    And "CİHAZA TANIMLI KURALLAR" yazisi kontrol edilir
    Then "Henüz kural oluşturmadınız." yazisi kontrol edilir
    And "KURAL EKLE" yazisi kontrol edilir
    And "İPUÇLARI" yazisi kontrol edilir
    And "Akıllı Ampülünüzü 7W ve 4000Kelvin özelliği ile enerji verimli kullanabilirsiniz." texti sayfa kaydirmadan bulunur
    Then Lamba power butonu ile kapatilir
    And 10 saniye bekle

  @SmartLamp
  Scenario:008 SmartLamp Liste gorunumu uzerinden lamba cihazının renk ve parlaklık degisim kontrolu
    Given Uygulama resetlenir
    And 30 saniye bekle
    Then "Lamba" detayina gidilir
    And 5 saniye bekle
    And Lamba power butonu ile acilir
    And 10 saniye bekle
    And "Liste" butonuna basilir
    And 5 saniye bekle
    Then Soguk renk secilir
    And 10 saniye bekle
    Then Parlaklik "0.5" secilir
    Then 10 saniye bekle
    Then Kirmizi renk secilir
    And 10 saniye bekle
    Then Parlaklik "0.3" secilir
    Then 10 saniye bekle
    Then Parlaklik "1.0" secilir
    Then 10 saniye bekle
    Then Mor renk secilir
    And 10 saniye bekle
    Then Sicak renk secilir
    Then 10 saniye bekle
    And Ekrani "up" kaydir
    Then "Cihaz durumu: Açık " yazisi kontrol edilir
    Then Lamba power butonu ile kapatilir
    And 10 saniye bekle
    Then "Cihaz durumu: Kapalı " yazisi kontrol edilir
    And navigasyondan geri tusuna basilir
    And 5 saniye bekle
  @SmartLamp
  Scenario:009 SmartLamp Cember gorunumu uzerinden lambanin renk degisim kontrolu
    Given Uygulama resetlenir
    And 30 saniye bekle
    Then Lamba cihazlarim ekraninda on yapilir
    Then 10 saniye bekle
    Then Cihazlarim ekraninda lamba on oldugu kontrol edilir
    And "Lamba" detayina gidilir
    And 5 saniye bekle
    Then "Çember" textine basilir
    And 5 saniye bekle
    Then Cember uzerinden renk degistirilir
    And 5 saniye bekle
    Then Parlaklik "0.3" secilir
    And 5 saniye bekle
    Then Parlaklik "1.0" secilir
    And 5 saniye bekle
    And Ekrani "up" kaydir
    Then "Cihaz durumu: Açık " yazisi kontrol edilir
    Then Lamba power butonu ile kapatilir
    And 10 saniye bekle
    And Ekrani "up" kaydir
    Then "Cihaz durumu: Kapalı " yazisi kontrol edilir
    And navigasyondan geri tusuna basilir
    And 5 saniye bekle
  @SmartLamb
  Scenario:010 SmartLamb cihazini odalar arasinda tasima kontrolu
    Given Uygulama resetlenir
    And 30 saniye bekle
    When "Lamba" detayina gidilir
    Given 10 saniye bekle
    Then Lamba cihazini mutfak odasina tasi
    And 5 saniye bekle
    Given Uygulama resetlenir
    And 30 saniye bekle
    And Mutfak odasina gidilir
    And 5 saniye bekle
    And "Mutfak" yazisi kontrol edilir
    Then "Lamba" urun kontrolu
    When "Lamba" detayina gidilir
    Given 10 saniye bekle
    Then Lamba cihazini oturma odasina geri tasi
    And 10 saniye bekle
    And Ekrani "right" kaydir
    And 3 saniye bekle
  @SmartLamp
  Scenario:011 SmartLamp cihazi secenekler menusunun acılması ve seçimlerin kontrolu
    Given Uygulama resetlenir
    And 30 saniye bekle
    Then "Lamba" detayina gidilir
    And 5 saniye bekle
    Then Cihaz menusune tiklanir
    And 5 saniye bekle
    Then "Cihaz Bilgileri" yazisi kontrol edilir
    And "Cihaz İşlevselliğini kontrol et" yazisi kontrol edilir
    And "Oda Değiştir" yazisi kontrol edilir
    And "Yeniden Adlandır" yazisi kontrol edilir
    And "Tüketim" yazisi kontrol edilir
    And "Ürünü sil" yazisi kontrol edilir
    And "İptal" yazisi kontrol edilir
    And 5 saniye bekle
  @SmartLamp
  Scenario: 012 SmartLamp cihazi tuketim ekrani kontrolu
    Given Uygulama resetlenir
    And 30 saniye bekle
    Then "Lamba" detayina gidilir
    And 5 saniye bekle
    Then Cihaz menusune tiklanir
    And 5 saniye bekle
    And "Tüketim" textine basilir
    And 5 saniye bekle
    Then "Tüketim" yazisi kontrol edilir
    Then "Cihazınızın toplam çalışma süresini, harcadığı enerji miktarını ve bu miktara bağlı harcama tutarını görüntüleyin." yazisi kontrol edilir
    And "YILLIK GRAFİK" yazisi kontrol edilir
    And "SON GÜNCELLEME:" yazisi kontrol edilir
    And "Anlık güç tüketimi" yazisi kontrol edilir
    Then "Cihaz şuan çalışmıyor. " yazisi kontrol edilir
    And "Enerji Tüketimi" yazisi kontrol edilir
    And "Tüketim Ücreti" yazisi kontrol edilir
    And "Birim elektrik fiyatı (kWh)" yazisi kontrol edilir
    Then "Lamba ne kadar harcadı?" yazisi kontrol edilir
    And "Başlangıç Tarihi" yazisi kontrol edilir
    And "Bitiş Tarihi" yazisi kontrol edilir
    Then "HESAPLA" yazisi kontrol edilir
    Given Uygulamayi 30 saniye arka planda tut sonra aktive et
    Given 10 saniye bekle
    Then "Tüketim" yazisi kontrol edilir
    Then "Cihazınızın toplam çalışma süresini, harcadığı enerji miktarını ve bu miktara bağlı harcama tutarını görüntüleyin." yazisi kontrol edilir
    And "YILLIK GRAFİK" yazisi kontrol edilir
    And "SON GÜNCELLEME:" yazisi kontrol edilir
    And "Anlık güç tüketimi" yazisi kontrol edilir
    Then "Cihaz şuan çalışmıyor. " yazisi kontrol edilir
    And "Enerji Tüketimi" yazisi kontrol edilir
    And "Tüketim Ücreti" yazisi kontrol edilir
    And "Birim elektrik fiyatı (kWh)" yazisi kontrol edilir
    Then "Lamba ne kadar harcadı?" yazisi kontrol edilir
    And "Başlangıç Tarihi" yazisi kontrol edilir
    And "Bitiş Tarihi" yazisi kontrol edilir
    Then "HESAPLA" yazisi kontrol edilir
    Given 5 saniye bekle
    And navigasyondan geri tusuna basilir
    Given 5 saniye bekle
    And navigasyondan geri tusuna basilir
    Given 5 saniye bekle
    Then "Lamba" urun kontrolu
  @SmartLamp
  Scenario: 013 SmartLamp power butonu ile acildiktan sonra uygulama kill edilip acilinca lambanin acik kalmasi kontrolu
    Given Uygulama resetlenir
    And 30 saniye bekle
    Then "Lamba" detayina gidilir
    And 5 saniye bekle
    And Lamba power butonu ile acilir
    And 10 saniye bekle
    And "Liste" butonuna basilir
    And 5 saniye bekle
    And Ekrani "up" kaydir
    Then "Cihaz durumu: Açık " yazisi kontrol edilir
    Then Uygulama kill edilip 20 sn sonra acilir
    And 10 saniye bekle
    Then "Lamba" urun kontrolu
    And Cihazlarim ekraninda lamba on oldugu kontrol edilir
    Then Cihazlarim ekraninda lamba on ise off konumuna getirilir
    And 5 saniye bekle
    Then Cihazlarim ekraninda lamba off oldugu kontrol edilir
  @SmartLamp
  Scenario: 014 SmartLamp Liste ve cember gorunumleri uzerinden arka arkaya farkli lamba rengi secimleri yapilmasi kontrolu
    Given Uygulama resetlenir
    And 30 saniye bekle
    Then Lamba cihazlarim ekraninda on yapilir
    Then 10 saniye bekle
    And Cihazlarim ekraninda lamba on oldugu kontrol edilir
    Then "Lamba" detayina gidilir
    And 5 saniye bekle
    And "Liste" butonuna basilir
    And 5 saniye bekle
    Then Kirmizi renk secilir
    And 5 saniye bekle
    Then "Çember" textine basilir
    And 5 saniye bekle
    And Cember uzerinden renk degistirilir
    And 5 saniye bekle
    Then "Liste" textine basilir
    Then Mor renk secilir
    And 5 saniye bekle
    Then Sicak renk secilir
    And 5 saniye bekle
    And Ekrani "up" kaydir
    Then Lamba power butonu ile kapatilir
    And 5 saniye bekle
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
  @SmartLamp
  Scenario: 015 SmartLamp sayfasında cihaz işlevselliğini kontrol et seçeneğine tıklanır
    Given Uygulama resetlenir
    And 30 saniye bekle
    Then Cihazlarim ekraninda lamba off oldugu kontrol edilir
    When "Lamba" detayina gidilir
    Given 5 saniye bekle
    Then Cihaz menusune tiklanir
    And "Cihaz İşlevselliğini kontrol et" textine basilir
    Given 3 saniye bekle
    Then "Cihaz İşlevselliğini kontrol et" yazisi kontrol edilir
    Then "CİHAZI BELİRLE" butonuna basilir
    Given 5 saniye bekle
    And Carpı isaretine basilip ekran kapatilir
    Given 5 saniye bekle
    Then Appbar "Lamba" texti kontrol edilir
    And Appbar subtitle "oturma odası" texti kontrol edilir
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
  @SmartLamp
  Scenario: 016 SmartLamp tüketim detaylarında harcama hesaplaması yapılması
    Given Uygulama resetlenir
    And 30 saniye bekle
    When "Lamba" detayina gidilir
    Given 5 saniye bekle
    Then Cihaz menusune tiklanir
    Given 5 saniye bekle
    And "Tüketim" textine basilir
    Given 5 saniye bekle
    And Ekrani "up" kaydir
    And Ekrani "up" kaydir
    Given 3 saniye bekle
    And "Başlangıç Tarihi" textine basilir
    Given 3 saniye bekle
    And Lamba baslangic tarih gunu "17" olarak degistirilir
    Given 3 saniye bekle
    And "Bitti" butonuna basilir
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
  @SmartLamp
  Scenario: 017 SmartLamp sayfasına Akıllı erişim sayfasından gidilmesinin kontrol edilmesi
    Given Uygulama resetlenir
    And 30 saniye bekle
    Then "Oturma Odası" adi kontrol edilir
    Then "Lamba" urun kontrolu
    Then Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et
    Then Cihazlarim ekraninda lamba on ise off konumuna getirilir
    And 5 saniye bekle
    Then Cihazlarim ekraninda lamba off oldugu kontrol edilir
    And "Akıllı Erişim" butonuna basilir
    And 5 saniye bekle
    And "AKILLI ERIŞIM" yazisi kontrol edilir
    And "icon quick access lightning" butonuna basilir
    Given 5 saniye bekle
    And "AKILLI ERIŞIM" yazisi kontrol edilir
    Then "Lamba" urun kontrolu
    When "Lamba" detayina gidilir
    Given 5 saniye bekle
    Then Appbar "Lamba" texti kontrol edilir
    And Appbar subtitle "oturma odası" texti kontrol edilir
    And Lamba power butonu ile acilir
    And 10 saniye bekle
    Then "Liste" yazisi kontrol edilir
    Then "Liste" butonuna basilir
    And 5 saniye bekle
    Then "Çember" yazisi kontrol edilir
    Then "Sıcak" yazisi kontrol edilir
    Then "Gün Işığı" yazisi kontrol edilir
    Then "Soğuk" yazisi kontrol edilir
    Then Ekrani "up" kaydir
    Then "CİHAZ GEÇMİŞİ" yazisi kontrol edilir
    Then "Bugün" yazisi icerdigi kontrol edilir
    Then "Cihaz durumu: Kapalı " yazisi kontrol edilir
    Then "Cihaz durumu: Açık " yazisi kontrol edilir
    Then Lamba power butonu ile kapatilir
    Then 10 saniye bekle
    And navigasyondan geri tusuna basilir
    Given 5 saniye bekle
    And "AKILLI ERIŞIM" yazisi kontrol edilir
    Then "Lamba" urun kontrolu

  @SmartLamp
  Scenario: 018 SmartLamp Akıllı erişim sayfasından lamba açılması ve kapanması kontol edilmesi
    Given Uygulama resetlenir
    And 30 saniye bekle
    Then "Oturma Odası" adi kontrol edilir
    Then "Lamba" urun kontrolu
    Then Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et
    Then Cihazlarim ekraninda lamba on ise off konumuna getirilir
    And 5 saniye bekle
    And "Akıllı Erişim" butonuna basilir
    And 5 saniye bekle
    And "AKILLI ERIŞIM" yazisi kontrol edilir
    And "icon quick access lightning" butonuna basilir
    Given 5 saniye bekle
    Then "Lamba" urun kontrolu
    Then Akilli erisim lamba sayfasinda kapali oldugu kontrol edilir
    Then Akilli erisim lamba sayfasindan lamba on yapilir
    Given 5 saniye bekle
    Then Akilli erisim lamba sayfasinda acik oldugu kontrol edilir
    When "Lamba" detayina gidilir
    Given 5 saniye bekle
    Then Appbar "Lamba" texti kontrol edilir
    And Appbar subtitle "oturma odası" texti kontrol edilir
    Then Ekrani "up" kaydir
    Then "Cihaz durumu: Açık " yazisi kontrol edilir
    And navigasyondan geri tusuna basilir
    Given 5 saniye bekle
    And "AKILLI ERIŞIM" yazisi kontrol edilir
    Then "Lamba" urun kontrolu
    Then Akilli erisim lamba sayfasinda acik oldugu kontrol edilir
    Then Akilli erisim lamba sayfasindan lamba off yapilir
    Given 5 saniye bekle
    Then Akilli erisim lamba sayfasinda kapali oldugu kontrol edilir

    #BU TESTTE TUKETIM OLCUMLERI OLMALIYDI!!!!!
  @SmartLamp
  Scenario: 019 SmartLamp sayfasında tüketim detayları ekranının kontrol edilmesi
    Given Uygulama resetlenir
    And 30 saniye bekle
    Then "Oturma Odası" adi kontrol edilir
    Then "Lamba" urun kontrolu
    Then Lamba cihazlarim ekraninda on yapilir
    Then 10 saniye bekle
    And Cihazlarim ekraninda lamba on oldugu kontrol edilir
    When "Lamba" detayina gidilir
    And 5 saniye bekle
    Then "Liste" butonuna basilir
    And 5 saniye bekle
    Then Soguk renk secilir
    And 5 saniye bekle
    Then Parlaklik "0.5" secilir
    And 5 saniye bekle
    Then Cihaz menusune tiklanir
    Then 5 saniye bekle
    Then "Tüketim" textine basilir
    Then 5 saniye bekle
    Then "kWh" yazisi icerdigi kontrol edilir
    And navigasyondan geri tusuna basilir
    Given 5 saniye bekle
    Then Parlaklik "1.0" secilir
    Given 5 saniye bekle
    Then Sicak renk secilir
    Given 5 saniye bekle
    And Lamba power butonu ile kapatilir
    Given 5 saniye bekle
  @SmartLamp
  Scenario: 020 SmartLamp açık ise test kapalı olarak sonlandırılır
    Given Uygulama resetlenir
    And 30 saniye bekle
    Then Cihazlarim ekraninda lamba on ise off konumuna getirilir
    Given 10 saniye bekle
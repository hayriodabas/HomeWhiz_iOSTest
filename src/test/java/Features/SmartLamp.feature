@TumSenaryolar
Feature: Smartlamp
Author: Hayri Odabas
Date: 2022
  @SmartLamp
  Scenario:001 SmartLamp Login sonrasi cihazlarin bagli oldugunun kontrolleri
    * Uygulama resetlenir
    * Logout yapilir
    * Uygulamaya "mobilotomasyon3@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    * Uygulama resetlenir
    * 30 saniye bekle
    * "Oturma Odası" adi kontrol edilir
    * "Lamba" urun kontrolu
    * Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et
  @SmartLamp
  Scenario:002 SmartLamp cihaz detaylarinin kontrolu
    * Uygulama resetlenir
    * 30 saniye bekle
    * "Lamba" detayina gidilir
    * 5 saniye bekle
    * Cihaz bilgilerine tiklanir
    * 5 saniye bekle
    * "CİHAZ KİMLİĞİ" yazisi kontrol edilir
    * "Arçelik" markasi kontrol edilir
    * "9950091100" Model numarasi kontrol edilir
    * "S999971863053519766183" Digital kimlik no kontrol edilir
    * "0.10.51" versiyon numarasi kontrol edilir
    * "C8:B4:22:6E:33:10" yazisi kontrol edilir
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
  @SmartLamp
  Scenario:003 SmartLamp cihazlar ekranindan lamba cihazını acma kapama kontrolu
    * Uygulama resetlenir
    * 30 saniye bekle
    * Cihazlarim ekraninda lamba on ise off konumuna getirilir
    * Cihazlarim ekraninda lamba off oldugu kontrol edilir
    * Lamba cihazlarim ekraninda on yapilir
    * 10 saniye bekle
    * Cihazlarim ekraninda lamba on oldugu kontrol edilir
    * 10 saniye bekle
    * Lamba cihazlarim ekraninda off yapilir
    * 5 saniye bekle
    * Cihazlarim ekraninda lamba off oldugu kontrol edilir
    * 5 saniye bekle
  @SmartLamp
  Scenario:004 SmartLamp cihaz ekranının kontrolu
    * Uygulama resetlenir
    * 30 saniye bekle
    * Lamba cihazlarim ekraninda on yapilir
    * 10 saniye bekle
    * "Lamba" detayina gidilir
    * 5 saniye bekle
    * "Liste" butonuna basilir
    * 5 saniye bekle
    * "Sıcak" elementini bekle
    * "Lamba" yazisi kontrol edilir
    * "oturma odası" yazisi kontrol edilir
    * "Liste" yazisi kontrol edilir
    * "Çember" yazisi kontrol edilir
    * "Sıcak" yazisi kontrol edilir
    * "Gün Işığı" yazisi kontrol edilir
    * "Soğuk" yazisi kontrol edilir
    * "CİHAZ GEÇMİŞİ" yazisi kontrol edilir
    * "Bugün" yazisi icerdigi kontrol edilir
    * "Cihaz durumu: Kapalı " yazisi kontrol edilir
    * "Cihaz durumu: Açık " yazisi kontrol edilir
    * "CİHAZA TANIMLI KURALLAR" yazisi kontrol edilir
    * "Henüz kural oluşturmadınız." yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "İPUÇLARI" yazisi kontrol edilir
    * "Akıllı Ampülünüzü 7W ve 4000Kelvin özelliği ile enerji verimli kullanabilirsiniz." yazisi kontrol edilir
    * Lamba power butonu ile kapatilir
    * 10 saniye bekle

  @SmartLamp
  Scenario:005 SmartLamp lamba ekranindan cihaz acma kapama kontrolu
    * Uygulama resetlenir
    * 30 saniye bekle
    * Cihazlarim ekraninda lamba on ise off konumuna getirilir
    * Cihazlarim ekraninda lamba off oldugu kontrol edilir
    * "Lamba" detayina gidilir
    * 5 saniye bekle
    * Lamba power butonu ile acilir
    * 10 saniye bekle
    * "Liste" butonuna basilir
    * 5 saniye bekle
    * "Cihaz durumu: Açık " yazisi kontrol edilir
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
    * Cihazlarim ekraninda lamba on oldugu kontrol edilir
    * Uygulama resetlenir
    * 10 saniye bekle
    * "Lamba" detayina gidilir
    * 5 saniye bekle
    * "Cihaz durumu: Açık " yazisi kontrol edilir
    * Lamba power butonu ile kapatilir
    * 10 saniye bekle
    * "Cihaz durumu: Kapalı " yazisi kontrol edilir
#    * navigasyondan geri tusuna basilir
#    * 5 saniye bekle
#    * Cihazlarim ekraninda lamba off oldugu kontrol edilir
  @SmartLamp
  Scenario:006 SmartLamp power butonu ile acildiktan sonra uygulama arka plana atilip acilinca lambanin acik kalmasi kontrolu
    * Uygulama resetlenir
    * 30 saniye bekle
    * "Lamba" detayina gidilir
    * 5 saniye bekle
    * Lamba power butonu ile acilir
    * 10 saniye bekle
    * "Liste" butonuna basilir
    * 5 saniye bekle
    * Ekrani "up" kaydir
    * "Cihaz durumu: Açık " yazisi kontrol edilir
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * 5 saniye bekle
    * Ekrani "down" kaydir
    * 5 saniye bekle
    * "Cihaz durumu: Açık " yazisi kontrol edilir
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
    * Cihazlarim ekraninda lamba on oldugu kontrol edilir
    * Uygulama resetlenir
    * 10 saniye bekle
    * "Lamba" detayina gidilir
    * 5 saniye bekle
    * Lamba power butonu ile kapatilir
    * 10 saniye bekle
#    * navigasyondan geri tusuna basilir
#    * 5 saniye bekle
#    * Cihazlarim ekraninda lamba off oldugu kontrol edilir
  @SmartLamp
  Scenario: 007 SmartLamp cihazi cember gorunumune geçiş ve ekran bilgilerinin kontrolu
    * Uygulama resetlenir
    * 30 saniye bekle
    * "Lamba" detayina gidilir
    * 5 saniye bekle
    * Lamba power butonu ile acilir
    * 10 saniye bekle
    * "Liste" butonuna basilir
    * 5 saniye bekle
    * "oturma odası" adi kontrol edilir
    * "Lamba" detayina gidilir
    * 5 saniye bekle
    * "Çember" textine basilir
    * Appbar "Lamba" texti kontrol edilir
    * Appbar subtitle "oturma odası" texti kontrol edilir
    * "Liste" yazisi kontrol edilir
    * "Çember" yazisi kontrol edilir
    * Ekrani "up" kaydir
    * "CİHAZ GEÇMİŞİ" yazisi kontrol edilir
    * "Bugün" icerigi konrol edilir
    * "Cihaz durumu: Kapalı " yazisi kontrol edilir
    * "Cihaz durumu: Açık " yazisi kontrol edilir
    * "CİHAZA TANIMLI KURALLAR" yazisi kontrol edilir
    * "Henüz kural oluşturmadınız." yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "İPUÇLARI" yazisi kontrol edilir
    * "Akıllı Ampülünüzü 7W ve 4000Kelvin özelliği ile enerji verimli kullanabilirsiniz." texti sayfa kaydirmadan bulunur
    * Lamba power butonu ile kapatilir
    * 10 saniye bekle

  @SmartLamp
  Scenario:008 SmartLamp Liste gorunumu uzerinden lamba cihazının renk ve parlaklık degisim kontrolu
    * Uygulama resetlenir
    * 30 saniye bekle
    * "Lamba" detayina gidilir
    * 5 saniye bekle
    * Lamba power butonu ile acilir
    * 10 saniye bekle
    * "Liste" butonuna basilir
    * 5 saniye bekle
    * Soguk renk secilir
    * 10 saniye bekle
    * Parlaklik "0.5" secilir
    * 10 saniye bekle
    * Kirmizi renk secilir
    * 10 saniye bekle
    * Parlaklik "0.3" secilir
    * 10 saniye bekle
    * Parlaklik "1.0" secilir
    * 10 saniye bekle
    * Mor renk secilir
    * 10 saniye bekle
    * Sicak renk secilir
    * 10 saniye bekle
    * Ekrani "up" kaydir
    * "Cihaz durumu: Açık " yazisi kontrol edilir
    * Lamba power butonu ile kapatilir
    * 10 saniye bekle
    * "Cihaz durumu: Kapalı " yazisi kontrol edilir
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
  @SmartLamp
  Scenario:009 SmartLamp Cember gorunumu uzerinden lambanin renk degisim kontrolu
    * Uygulama resetlenir
    * 30 saniye bekle
    * Lamba cihazlarim ekraninda on yapilir
    * 10 saniye bekle
    * Cihazlarim ekraninda lamba on oldugu kontrol edilir
    * "Lamba" detayina gidilir
    * 5 saniye bekle
    * "Çember" textine basilir
    * 5 saniye bekle
    * Cember uzerinden renk degistirilir
    * 5 saniye bekle
    * Parlaklik "0.3" secilir
    * 5 saniye bekle
    * Parlaklik "1.0" secilir
    * 5 saniye bekle
    * Ekrani "up" kaydir
    * "Cihaz durumu: Açık " yazisi kontrol edilir
    * Lamba power butonu ile kapatilir
    * 10 saniye bekle
    * Ekrani "up" kaydir
    * "Cihaz durumu: Kapalı " yazisi kontrol edilir
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
  @SmartLamb
  Scenario:010 SmartLamb cihazini odalar arasinda tasima kontrolu
    * Uygulama resetlenir
    * 30 saniye bekle
    * "Lamba" detayina gidilir
    * 10 saniye bekle
    * Lamba cihazini mutfak odasina tasi
    * 5 saniye bekle
    * Uygulama resetlenir
    * 30 saniye bekle
    * Mutfak odasina gidilir
    * 5 saniye bekle
    * "Mutfak" yazisi kontrol edilir
    * "Lamba" urun kontrolu
    * "Lamba" detayina gidilir
    * 10 saniye bekle
    * Lamba cihazini oturma odasina geri tasi
    * 10 saniye bekle
    * Ekrani "right" kaydir
    * 3 saniye bekle
  @SmartLamp
  Scenario:011 SmartLamp cihazi secenekler menusunun acılması ve seçimlerin kontrolu
    * Uygulama resetlenir
    * 30 saniye bekle
    * "Lamba" detayina gidilir
    * 5 saniye bekle
    * Cihaz menusune tiklanir
    * 5 saniye bekle
    * "Cihaz Bilgileri" yazisi kontrol edilir
    * "Cihaz İşlevselliğini kontrol et" yazisi kontrol edilir
    * "Oda Değiştir" yazisi kontrol edilir
    * "Yeniden Adlandır" yazisi kontrol edilir
    * "Tüketim" yazisi kontrol edilir
    * "Ürünü sil" yazisi kontrol edilir
    * "İptal" yazisi kontrol edilir
    * 5 saniye bekle
  @SmartLamp
  Scenario: 012 SmartLamp cihazi tuketim ekrani kontrolu
    * Uygulama resetlenir
    * 30 saniye bekle
    * "Lamba" detayina gidilir
    * 5 saniye bekle
    * Cihaz menusune tiklanir
    * 5 saniye bekle
    * "Tüketim" textine basilir
    * 5 saniye bekle
    * "Tüketim" yazisi kontrol edilir
    * "Cihazınızın toplam çalışma süresini, harcadığı enerji miktarını ve bu miktara bağlı harcama tutarını görüntüleyin." yazisi kontrol edilir
    * "YILLIK GRAFİK" yazisi kontrol edilir
    * "SON GÜNCELLEME:" yazisi kontrol edilir
    * "Anlık güç tüketimi" yazisi kontrol edilir
    * "Cihaz şuan çalışmıyor. " yazisi kontrol edilir
    * "Enerji Tüketimi" yazisi kontrol edilir
    * "Tüketim Ücreti" yazisi kontrol edilir
    * "Birim elektrik fiyatı (kWh)" yazisi kontrol edilir
    * "Lamba ne kadar harcadı?" yazisi kontrol edilir
    * "Başlangıç Tarihi" yazisi kontrol edilir
    * "Bitiş Tarihi" yazisi kontrol edilir
    * "HESAPLA" yazisi kontrol edilir
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * 10 saniye bekle
    * "Tüketim" yazisi kontrol edilir
    * "Cihazınızın toplam çalışma süresini, harcadığı enerji miktarını ve bu miktara bağlı harcama tutarını görüntüleyin." yazisi kontrol edilir
    * "YILLIK GRAFİK" yazisi kontrol edilir
    * "SON GÜNCELLEME:" yazisi kontrol edilir
    * "Anlık güç tüketimi" yazisi kontrol edilir
    * "Cihaz şuan çalışmıyor. " yazisi kontrol edilir
    * "Enerji Tüketimi" yazisi kontrol edilir
    * "Tüketim Ücreti" yazisi kontrol edilir
    * "Birim elektrik fiyatı (kWh)" yazisi kontrol edilir
    * "Lamba ne kadar harcadı?" yazisi kontrol edilir
    * "Başlangıç Tarihi" yazisi kontrol edilir
    * "Bitiş Tarihi" yazisi kontrol edilir
    * "HESAPLA" yazisi kontrol edilir
    * 5 saniye bekle
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
    * "Lamba" urun kontrolu
  @SmartLamp
  Scenario: 013 SmartLamp power butonu ile acildiktan sonra uygulama kill edilip acilinca lambanin acik kalmasi kontrolu
    * Uygulama resetlenir
    * 30 saniye bekle
    * "Lamba" detayina gidilir
    * 5 saniye bekle
    * Lamba power butonu ile acilir
    * 10 saniye bekle
    * "Liste" butonuna basilir
    * 5 saniye bekle
    * Ekrani "up" kaydir
    * "Cihaz durumu: Açık " yazisi kontrol edilir
    * Uygulama kill edilip 20 sn sonra acilir
    * 10 saniye bekle
    * "Lamba" urun kontrolu
    * Cihazlarim ekraninda lamba on oldugu kontrol edilir
    * Cihazlarim ekraninda lamba on ise off konumuna getirilir
    * 5 saniye bekle
    * Cihazlarim ekraninda lamba off oldugu kontrol edilir
  @SmartLamp
  Scenario: 014 SmartLamp Liste ve cember gorunumleri uzerinden arka arkaya farkli lamba rengi secimleri yapilmasi kontrolu
    * Uygulama resetlenir
    * 30 saniye bekle
    * Lamba cihazlarim ekraninda on yapilir
    * 10 saniye bekle
    * Cihazlarim ekraninda lamba on oldugu kontrol edilir
    * "Lamba" detayina gidilir
    * 5 saniye bekle
    * "Liste" butonuna basilir
    * 5 saniye bekle
    * Kirmizi renk secilir
    * 5 saniye bekle
    * "Çember" textine basilir
    * 5 saniye bekle
    * Cember uzerinden renk degistirilir
    * 5 saniye bekle
    * "Liste" textine basilir
    * Mor renk secilir
    * 5 saniye bekle
    * Sicak renk secilir
    * 5 saniye bekle
    * Ekrani "up" kaydir
    * Lamba power butonu ile kapatilir
    * 5 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
  @SmartLamp
  Scenario: 015 SmartLamp sayfasında cihaz işlevselliğini kontrol et seçeneğine tıklanır
    * Uygulama resetlenir
    * 30 saniye bekle
    * Cihazlarim ekraninda lamba off oldugu kontrol edilir
    * "Lamba" detayina gidilir
    * 5 saniye bekle
    * Cihaz menusune tiklanir
    * "Cihaz İşlevselliğini kontrol et" textine basilir
    * 3 saniye bekle
    * "Cihaz İşlevselliğini kontrol et" yazisi kontrol edilir
    * "CİHAZI BELİRLE" butonuna basilir
    * 5 saniye bekle
    * Carpı isaretine basilip ekran kapatilir
    * 5 saniye bekle
    * Appbar "Lamba" texti kontrol edilir
    * Appbar subtitle "oturma odası" texti kontrol edilir
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
  @SmartLamp
  Scenario: 016 SmartLamp tüketim detaylarında harcama hesaplaması yapılması
    * Uygulama resetlenir
    * 30 saniye bekle
    * "Lamba" detayina gidilir
    * 5 saniye bekle
    * Cihaz menusune tiklanir
    * 5 saniye bekle
    * "Tüketim" textine basilir
    * 5 saniye bekle
    * Ekrani "up" kaydir
    * Ekrani "up" kaydir
    * 3 saniye bekle
    * "Başlangıç Tarihi" textine basilir
    * 3 saniye bekle
    * Lamba baslangic tarih gunu "17" olarak degistirilir
    * 3 saniye bekle
    * "Bitti" butonuna basilir
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
  @SmartLamp
  Scenario: 017 SmartLamp sayfasına Akıllı erişim sayfasından gidilmesinin kontrol edilmesi
    * Uygulama resetlenir
    * 30 saniye bekle
    * "Oturma Odası" adi kontrol edilir
    * "Lamba" urun kontrolu
    * Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et
    * Cihazlarim ekraninda lamba on ise off konumuna getirilir
    * 5 saniye bekle
    * Cihazlarim ekraninda lamba off oldugu kontrol edilir
    * "Akıllı Erişim" butonuna basilir
    * 5 saniye bekle
    * "AKILLI ERIŞIM" yazisi kontrol edilir
    * "icon quick access lightning" butonuna basilir
    * 5 saniye bekle
    * "AKILLI ERIŞIM" yazisi kontrol edilir
    * "Lamba" urun kontrolu
    * "Lamba" detayina gidilir
    * 5 saniye bekle
    * Appbar "Lamba" texti kontrol edilir
    * Appbar subtitle "oturma odası" texti kontrol edilir
    * Lamba power butonu ile acilir
    * 10 saniye bekle
    * "Liste" yazisi kontrol edilir
    * "Liste" butonuna basilir
    * 5 saniye bekle
    * "Çember" yazisi kontrol edilir
    * "Sıcak" yazisi kontrol edilir
    * "Gün Işığı" yazisi kontrol edilir
    * "Soğuk" yazisi kontrol edilir
    * Ekrani "up" kaydir
    * "CİHAZ GEÇMİŞİ" yazisi kontrol edilir
    * "Bugün" yazisi icerdigi kontrol edilir
    * "Cihaz durumu: Kapalı " yazisi kontrol edilir
    * "Cihaz durumu: Açık " yazisi kontrol edilir
    * Lamba power butonu ile kapatilir
    * 10 saniye bekle
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
    * "AKILLI ERIŞIM" yazisi kontrol edilir
    * "Lamba" urun kontrolu

  @SmartLamp
  Scenario: 018 SmartLamp Akıllı erişim sayfasından lamba açılması ve kapanması kontol edilmesi
    * Uygulama resetlenir
    * 30 saniye bekle
    * "Oturma Odası" adi kontrol edilir
    * "Lamba" urun kontrolu
    * Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et
    * Cihazlarim ekraninda lamba on ise off konumuna getirilir
    * 5 saniye bekle
    * "Akıllı Erişim" butonuna basilir
    * 5 saniye bekle
    * "AKILLI ERIŞIM" yazisi kontrol edilir
    * "icon quick access lightning" butonuna basilir
    * 5 saniye bekle
    * "Lamba" urun kontrolu
    * Akilli erisim lamba sayfasinda kapali oldugu kontrol edilir
    * Akilli erisim lamba sayfasindan lamba on yapilir
    * 5 saniye bekle
    * Akilli erisim lamba sayfasinda acik oldugu kontrol edilir
    * "Lamba" detayina gidilir
    * 5 saniye bekle
    * Appbar "Lamba" texti kontrol edilir
    * Appbar subtitle "oturma odası" texti kontrol edilir
    * Ekrani "up" kaydir
    * "Cihaz durumu: Açık " yazisi kontrol edilir
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
    * "AKILLI ERIŞIM" yazisi kontrol edilir
    * "Lamba" urun kontrolu
    * Akilli erisim lamba sayfasinda acik oldugu kontrol edilir
    * Akilli erisim lamba sayfasindan lamba off yapilir
    * 5 saniye bekle
    * Akilli erisim lamba sayfasinda kapali oldugu kontrol edilir

    #BU TESTTE TUKETIM OLCUMLERI OLMALIYDI!!!!!
  @SmartLamp
  Scenario: 019 SmartLamp sayfasında tüketim detayları ekranının kontrol edilmesi
    * Uygulama resetlenir
    * 30 saniye bekle
    * "Oturma Odası" adi kontrol edilir
    * "Lamba" urun kontrolu
    * Lamba cihazlarim ekraninda on yapilir
    * 10 saniye bekle
    * Cihazlarim ekraninda lamba on oldugu kontrol edilir
    * "Lamba" detayina gidilir
    * 5 saniye bekle
    * "Liste" butonuna basilir
    * 5 saniye bekle
    * Soguk renk secilir
    * 5 saniye bekle
    * Parlaklik "0.5" secilir
    * 5 saniye bekle
    * Cihaz menusune tiklanir
    * 5 saniye bekle
    * "Tüketim" textine basilir
    * 5 saniye bekle
    * "kWh" yazisi icerdigi kontrol edilir
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
    * Parlaklik "1.0" secilir
    * 5 saniye bekle
    * Sicak renk secilir
    * 5 saniye bekle
    * Lamba power butonu ile kapatilir
    * 5 saniye bekle
  @SmartLamp
  Scenario: 020 SmartLamp açık ise test kapalı olarak sonlandırılır
    * Uygulama resetlenir
    * 30 saniye bekle
    * Cihazlarim ekraninda lamba on ise off konumuna getirilir
    * 10 saniye bekle
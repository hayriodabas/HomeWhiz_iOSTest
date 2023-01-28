@TumSenaryolar
Feature: E8LBulasikMakinesi
  Author: Hayri Odabas
  Date: 2021
  NOT: Bu test scriptlerini calistirmadan once uzaktan kontrolun acik olduguna emin olun
  @E8L_BulasikMakinesi
  Scenario: 001 E8L BM kapali iken cihaz ekrani bilgilerini kontrol edilmesi
    Given Uygulama resetlenir
    Given Logout yapilir
    Given Uygulamaya "yazilimtestonay@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    Given Uygulama resetlenir
    And "E8L BM" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz off konumuna getirilir
    Then Appbar "E8L BM" texti kontrol edilir
    Then Appbar subtitle "Oturma Odası" texti kontrol edilir
    Then Uzaktan kontrol "Açık" texti kontrolu
    When "Arçelik" yazisi kontrol edilir
    When "Bulaşık Makinesi" yazisi kontrol edilir
    Then "Program seçebilmek için cihazı açmanız gerekiyor." yazisi kontrol edilir
 #   And 3 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 002 E8L BM cihaz ekraninda standby tusu ile acılmasi ve cihaz ekraninin kontrol edilmesi
    Given Uygulama resetlenir
    And "E8L BM" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    Then Appbar "E8L BM" texti kontrol edilir
    Then "Arçelik" markasi kontrol edilir
    When "Bulaşık Makinesi" yazisi kontrol edilir
    Then Favoriler bolumunun var oldugunu kontrol et
    Then Program secimi bolumnun var oldugunu kontrol et
    Then Sihirbaz bolumnun var oldugunu kontrol et
    Then Program secenekleri bolumunun olmadigi kontrol edilir
    And Cihaz off konumuna getirilir
    And 10 saniye bekle
    Then "Program seçebilmek için cihazı açmanız gerekiyor." yazisi kontrol edilir
  #  And 3 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 003 E8L BM acik iken cihaz sayfasinda uygulama arka plana atilip acildiginda baglanti kontrolu
    Given Uygulama resetlenir
    And "E8L BM" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    Then Appbar "E8L BM" texti kontrol edilir
    Then "Arçelik" markasi kontrol edilir
    When "Bulaşık Makinesi" yazisi kontrol edilir
    Then Favoriler bolumunun var oldugunu kontrol et
    Then Program secimi bolumnun var oldugunu kontrol et
    Then Sihirbaz bolumnun var oldugunu kontrol et
    Then Program secenekleri bolumunun olmadigi kontrol edilir
    And Uygulamayi 30 saniye arka planda tut sonra aktive et
    And 10 saniye bekle
    Then Appbar "E8L BM" texti kontrol edilir
    Then "Arçelik" markasi kontrol edilir
    When "Bulaşık Makinesi" yazisi kontrol edilir
    Then Favoriler bolumunun var oldugunu kontrol et
    Then Program secimi bolumnun var oldugunu kontrol et
    Then Sihirbaz bolumnun var oldugunu kontrol et
    Then Program secenekleri bolumunun olmadigi kontrol edilir
    And Cihaz off konumuna getirilir
    And 10 saniye bekle
    Then "Program seçebilmek için cihazı açmanız gerekiyor." yazisi kontrol edilir
  #  And 3 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 004 E8L BM program secim ekraninin kontrol bilgilerinin kontrolu
    Given Uygulama resetlenir
    And "E8L BM" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    Then Appbar "E8L BM" texti kontrol edilir
    Then "Arçelik" markasi kontrol edilir
    When "Bulaşık Makinesi" yazisi kontrol edilir
    Then Favoriler bolumunun var oldugunu kontrol et
    And Program secimine basilir
    And 10 saniye bekle
    Then Appbar "E8L BM" texti kontrol edilir
    Then Appbar subtitle "oturma odası" texti kontrol edilir
    Then Favori secimi ikonu kontrol edilir
    And 3 saniye bekle
    Then "Eko 50°C" program adi kontrol edilir
    Then "TurboYıkama" yazisi kontrol edilir
    Then "Hızlı" yazisi kontrol edilir
    Then "Mükemmel Kurutma" yazisi kontrol edilir
    Then "Hijyen" yazisi kontrol edilir
    Then "Yarım Yük" yazisi kontrol edilir
    Then "Program Süresi" yazisi kontrol edilir
    Then "03:40" zamani kontrol edilir
    Then "BİTİŞ SAATİ" yazisi kontrol edilir
    And 3 saniye bekle
    Then navigasyondan geri tusuna basilir
    And 3 saniye bekle
    And Cihaz off konumuna getirilir
 #   And 10 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 005 E8L BM Ön Yıkama programinin çaliştirilmasinin kontrol edilmesi
    Given Uygulama resetlenir
    And "E8L BM" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Program secimine basilir
    And 3 saniye bekle
    And Program secimi "Ön Yıkama" olarak ayarlanir
    And 10 saniye bekle
    Then "Program Süresi" yazisi kontrol edilir
    Then "00:15" zamani kontrol edilir
    And Programi baslat butonuna basilir
    And 30 saniye bekle
    Then Appbar "E8L BM" texti kontrol edilir
    Then Appbar subtitle "oturma odası" texti kontrol edilir
    Then Uzaktan kontrol "Açık" texti kontrolu
    Then "Ön Yıkama" program adi kontrol edilir
    Then "00:15" zamani kontrol edilir
    Then Program asamasi "Yıkıyor" texti kontrol edilir
    Then Pause butonu kontrol edilir
    Then El ikonu kontrol edilir
    And Program bekleme moduna alinir
    And 10 saniye bekle
    Then Program asamasi "Program duraklatıldı" texti kontrol edilir
    Then Stop butonuna basilir
    And 10 saniye bekle
    And "Tamam" textine basilir
    And 10 saniye bekle
    Then Program asamasi "İptal ediliyor..." texti kontrol edilir
    And Program sonu home tusuna basilir
 #   And 10 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 006 E8L BM Yogun 70 programi calisirken uygulama arka plana atilip tekrar acilmasinin kontrol edilmesi
    Given Uygulama resetlenir
    And "E8L BM" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Program secimine basilir
    And 3 saniye bekle
    And Program secimi "Yoğun 70 santigrat derece" olarak ayarlanir
    And 10 saniye bekle
    And Bulasik makinesi hizli yardici fonksiyonu on yapilir
    And 10 saniye bekle
    Then Program kalan sure "01:10" kontrol edilir
    Then "Yoğun 70°C" program adi kontrol edilir
    And Programi baslat butonuna basilir
    And 20 saniye bekle
    Then "Yoğun 70°C" program adi kontrol edilir
    Then Program kalan sure "01:10" kontrol edilir
    Then Program asamasi "Yıkıyor" texti kontrol edilir
    And Uygulamayi 30 saniye arka planda tut sonra aktive et
    And 10 saniye bekle
    Then Appbar "E8L BM" texti kontrol edilir
    Then Appbar subtitle "oturma odası" texti kontrol edilir
    Then Uzaktan kontrol "Açık" texti kontrolu
    Then "Yoğun 70°C" program adi kontrol edilir
    Then Program kalan sure "01:09" kontrol edilir
    Then Pause butonu kontrol edilir
    Then El ikonu kontrol edilir
    And Program bekleme moduna alinir
    And 10 saniye bekle
    Then Program asamasi "Program duraklatıldı" texti kontrol edilir
    Then Stop butonuna basilir
    And 10 saniye bekle
    And "Tamam" textine basilir
    And 10 saniye bekle
    Then Program asamasi "İptal ediliyor..." texti kontrol edilir
    And Program sonu home tusuna basilir
#    And 10 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 007 E8L BM Hassas programi calısırken uygulama kapatilip tekrar acilmasinin kontrol edilmesi
    Given Uygulama resetlenir
    And "E8L BM" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Program secimine basilir
    And 3 saniye bekle
    And Program secimi "Otomatik" olarak ayarlanir
    And 5 saniye bekle
    Then Program kalan sure "02:43" kontrol edilir
    And Programi baslat butonuna basilir
    And 10 saniye bekle
    Then "Otomatik" program adi kontrol edilir
    Then Program kalan sure "02:43" kontrol edilir
    Then Program asamasi "Yıkıyor" texti kontrol edilir
    And Uygulama kill edilip 30 sn sonra acilir
    And 10 saniye bekle
    And "E8L BM" detayina gidilir
    And 10 saniye bekle
    Then Appbar "E8L BM" texti kontrol edilir
    Then Appbar subtitle "oturma odası" texti kontrol edilir
    Then Uzaktan kontrol "Açık" texti kontrolu
    Then "Otomatik" program adi kontrol edilir
    Then Program kalan sure "02:42" kontrol edilir
    Then Pause butonu kontrol edilir
    Then El ikonu kontrol edilir
    And Program bekleme moduna alinir
    And 10 saniye bekle
    Then Program asamasi "Program duraklatıldı" texti kontrol edilir
    Then Stop butonuna basilir
    And 10 saniye bekle
    And "Tamam" textine basilir
    And 10 saniye bekle
    Then Program asamasi "İptal ediliyor..." texti kontrol edilir
    And Program sonu home tusuna basilir
#    And 10 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 008 E8L BM Eko50 programi calisirken duzenleme ekranina gecisin kontrol edilmesi
    Given Uygulama resetlenir
    And "E8L BM" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Program secimine basilir
    And 3 saniye bekle
    And Program secimi "Eko 50 santigrat derece" olarak ayarlanir
    And 10 saniye bekle
    And Programi baslat butonuna basilir
    And 10 saniye bekle
    Then "Eko 50°C" program adi kontrol edilir
    Then Program kalan sure "03:40" kontrol edilir
    Then Program asamasi "Yıkıyor" texti kontrol edilir
    Then El ikonuna basilir
    And 5 saniye bekle
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
    Then Appbar "E8L BM" texti kontrol edilir
    Then Appbar subtitle "oturma odası" texti kontrol edilir
    Then Uzaktan kontrol "Açık" texti kontrolu
    Then "Eko 50°C" program adi kontrol edilir
    Then "Kalan Süre" yazisi kontrol edilir
    Then Program kalan sure "03:40" kontrol edilir
    Then Pause butonu kontrol edilir
    Then El ikonu kontrol edilir
    And Program bekleme moduna alinir
    And 10 saniye bekle
    Then Program asamasi "Program duraklatıldı" texti kontrol edilir
    Then Stop butonuna basilir
    And 10 saniye bekle
    And "Tamam" textine basilir
    And 10 saniye bekle
    Then Program asamasi "İptal ediliyor..." texti kontrol edilir
    And Program sonu home tusuna basilir
#    And 10 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 009 E8L BM program calisirken pause ekranindan duzenleme ekranina gecis ve duzenleme ekranindan programi devam ettirme kontrolu
    Given Uygulama resetlenir
    And "E8L BM" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Program secimine basilir
    And 3 saniye bekle
    And Program secimi "Eko 50 santigrat derece" olarak ayarlanir
    And 10 saniye bekle
    And Programi baslat butonuna basilir
    And 10 saniye bekle
    Then "Eko 50°C" program adi kontrol edilir
    Then Program kalan sure "03:40" kontrol edilir
    Then Program asamasi "Yıkıyor" texti kontrol edilir
    And Program bekleme moduna alinir
    And 10 saniye bekle
    Then Program asamasi "Program duraklatıldı" texti kontrol edilir
    And El ikonuna basilir
    And 10 saniye bekle
    And Program devam butonuna basilir
    And 5 saniye bekle
    Then "Eko 50°C" program adi kontrol edilir
    Then Program kalan sure "03:40" kontrol edilir
    Then Program asamasi "Yıkıyor" texti kontrol edilir
    Then Pause butonu kontrol edilir
    Then El ikonu kontrol edilir
    And Program bekleme moduna alinir
    And 10 saniye bekle
    Then Program asamasi "Program duraklatıldı" texti kontrol edilir
    Then Stop butonuna basilir
    And 10 saniye bekle
    And "Tamam" textine basilir
    And 10 saniye bekle
    Then Program asamasi "İptal ediliyor..." texti kontrol edilir
    And Program sonu home tusuna basilir
 #   And 10 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 010 E8L BM zaman ertelemeli calisma programi baslatma ve iptal etme kontrolu
    Given Uygulama resetlenir
    And "E8L BM" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Program secimine basilir
    And 3 saniye bekle
    And Zaman erteleme butonuna basilir
    And 3 saniye bekle
    And Saat bolumune girilir
    And 3 saniye bekle
    And Saati bir adim ilerletilir
    And 10 saniye bekle
    And Dakika on bes adim ilerletilir
    And "Seç" butonuna basilir
    And 5 saniye bekle
    And Programi baslat butonuna basilir
    And 10 saniye bekle
    Then "Eko 50°C" program adi kontrol edilir
    Then "Bitiş zamanı etkin" yazisi kontrol edilir
    And 10 saniye bekle
    And Program bekleme moduna alinir
    And 10 saniye bekle
    Then Stop butonuna basilir
    And 10 saniye bekle
    And "Tamam" textine basilir
    And 5 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 011 E8L BM Sihirbaz uzerinden program basaltilmasinin kontrol edilmesi
    Given Uygulama resetlenir
    And "E8L BM" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Sihirbaz secimine tiklanir
    And 3 saniye bekle
    And Bulasik tipi gunluk secilir
    And 3 saniye bekle
    And Kir seviyesi secin butonuna basilir
    And 3 saniye bekle
    And Kir seviyesi Cok secilir
    And 3 saniye bekle
    And "Önerilen Program seçin" butonuna basilir
    And 3 saniye bekle
    Then "Önerilen Program" yazisi kontrol edilir
    Then "Eko Program" yazisi kontrol edilir
    Then "Hızlı Program" yazisi kontrol edilir
    And Programi baslat butonuna basilir
    And 10 saniye bekle
    Then "Yoğun 70°C" program adi kontrol edilir
    Then Program asamasi "Yıkıyor" texti kontrol edilir
    Then Pause butonu kontrol edilir
    Then El ikonu kontrol edilir
    And Program bekleme moduna alinir
    And 10 saniye bekle
    Then Stop butonuna basilir
    And 10 saniye bekle
    And "Tamam" textine basilir
    And 5 saniye bekle
    And Program sonu home tusuna basilir
 #   And 10 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 012 E8L BM son calistirilan programin cihaz ana ekranındaki son program cihaz gecmisinden başlatılabildiğinin kontrol edilmesi
    Given Uygulama resetlenir
    And "E8L BM" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Program secimine basilir
    And 3 saniye bekle
    And Programi baslat butonuna basilir
    And 10 saniye bekle
    Then "Yoğun 70°C" yazisi kontrol edilir
    Then Program kalan sure "02:26" kontrol edilir
    And 20 saniye bekle
    Then Program asamasi "Yıkıyor" texti kontrol edilir
    And Program bekleme moduna alinir
    And 10 saniye bekle
    Then Stop butonuna basilir
    And 10 saniye bekle
    And "Tamam" textine basilir
    And 5 saniye bekle
    And Program sonu home tusuna basilir
#    And 10 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 013 E8L BM favori program secilmesi ve Favorilere uzerinden programin baslatilmasi
    Given Uygulama resetlenir
    And "E8L BM" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Program secimine basilir
    And 3 saniye bekle
    And Program secimi "Eko 50 santigrat derece" olarak ayarlanir
    And 10 saniye bekle
    And Kalp ikonuna basilir
    And 3 saniye bekle
    And Favori ekle ekraninda program adi Fav Yikama yazilir
    And Favori ekle tamam butonuna basilir
    And 3 saniye bekle
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
    And Favoriler butonuna basilir
    And 3 saniye bekle
    Then "Fav Yikama" program adi kontrol edilir
    And Favori ekraninda Play butonuna basilir
    And 10 saniye bekle
    And Programi baslat butonuna basilir
    And 10 saniye bekle
    Then "Eko 50°C" program adi kontrol edilir
    Then Program kalan sure "03:40" kontrol edilir
    Then Program asamasi "Yıkıyor" texti kontrol edilir
    And 3 saniye bekle
    And Program bekleme moduna alinir
    And 10 saniye bekle
    Then Stop butonuna basilir
    And "Tamam" elementini bekle
    And "Tamam" textine basilir
    And 5 saniye bekle
    And Program sonu home tusuna basilir
    And 10 saniye bekle
    #ikinci kere girildiginde kontrol edilmesi
    Then Uygulama resetlenir
    And "E8L BM" detayina gidilir
    Then "Açık" elementini bekle
    When 10 saniye bekle
    And Cihaz off ise standby tusuna basarak on konumuna getirilir
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
 #   And 10 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 014 E8L BM son calistirilan programin cihaz gecmisinde gosterilmesinin kontrolu
    Given Uygulama resetlenir
    And "E8L BM" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Program secimine basilir
    And 3 saniye bekle
    And Program secimi "Yoğun 70 santigrat derece" olarak ayarlanir
    And 10 saniye bekle
    And Programi baslat butonuna basilir
    And 10 saniye bekle
    Then "Yoğun 70°C" yazisi kontrol edilir
    Then Program kalan sure "02:26" kontrol edilir
    And 20 saniye bekle
    Then Program asamasi "Yıkıyor" texti kontrol edilir
    And Program bekleme moduna alinir
    And 10 saniye bekle
    Then Stop butonuna basilir
    And 3 saniye bekle
    And "Tamam" butonuna basilir
    And 3 saniye bekle
    And Program sonu home tusuna basilir
#    And 3 saniye bekle
#    And "E8L BM" detayina gidilir
#    And 10 saniye bekle
#    And Cihaz off konumuna getirilir
 #   And 10 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 015 E8L BM Cihaz bilgileri menusunun kontrol edilmesi
    Given Uygulama resetlenir
    And "E8L BM" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz bilgilerine tiklanir
    And 10 saniye bekle
    Then "CİHAZ KİMLİĞİ" yazisi kontrol edilir
    Then "Arçelik" markasi kontrol edilir
    Then "7612610200" Model numarasi kontrol edilir
    Then "F999967707317445546187" Digital kimlik no kontrol edilir
    Then "VERSİYON" yazisi kontrol edilir
    Then "1.4.4 / 1.2.5 / 3.6.41 / - / -" versiyon numarasi kontrol edilir
    And navigasyondan geri tusuna basilir
  @E8L_BulasikMakinesi
  Scenario: 016 E8L BM Cihaz Ayarlari menusunde Otomatik kapi acma ve Parlatici seviyesi degistirilmesinin kontrol edilmesi
    Given Uygulama resetlenir
    And "E8L BM" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz off ise standby tusuna basarak on konumuna getirilir
    And 10 saniye bekle
    And Ayarlar alanina tiklanir
    And 3 saniye bekle
    And Cihaz ayarlari secilir
    And 3 saniye bekle
    And Cihaz ayarlari ekraninda otomatik kapi acma Kapali secilir
    And 3 saniye bekle
    And Cihaz ayarlari ekraninda parlatici seviyesini ikinci kademeye ayarlanir
    And 10 saniye bekle
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
    And Uygulamayi 30 saniye arka planda tut sonra aktive et
    And 10 saniye bekle
    And Ayarlar alanina tiklanir
    And 10 saniye bekle
    And Cihaz ayarlari secilir
    And 3 saniye bekle
    Then Otomatik kapi acma kapali oldugu kontrol edilir
    Then Cihaz ayarlari ekraninda parlatici seviyesini 2 kademede oldugunu kontrol et
    And Cihaz ayarlari ekraninda otomatik kapi acma Kapali secilir
    And 3 saniye bekle
    And Cihaz ayarlari ekraninda parlatici seviyesini ilk kademeye geri alinir
    And 10 saniye bekle
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
    And Cihaz off konumuna getirilir
#    And 10 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 017 E8L BM Makine Yıkama download programı indirme ve başlatma'nın kontrol edilmesi
    Given Uygulama resetlenir
    And "E8L BM" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz off ise standby tusuna basarak on konumuna getirilir
    And 10 saniye bekle
    And Ayarlar alanina tiklanir
    And 10 saniye bekle
    And Indirilen program yonetimine tiklanir
    And 3 saniye bekle
    And "Makine Yıkama" textine basilir
    And 10 saniye bekle
    Then Program indir butonuna basilir
    And 15 saniye bekle
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
    Then "Makine Yıkama" program adi kontrol edilir
    Then Program kalan sure "01:15" kontrol edilir
    Then Program asamasi "Yıkıyor" texti kontrol edilir
    And Program bekleme moduna alinir
    And 10 saniye bekle
    Then Stop butonuna basilir
    And 3 saniye bekle
    And "Tamam" butonuna basilir
    And 3 saniye bekle
    And Program sonu home tusuna basilir
    Given 10 saniye bekle
    #ikinci kere girildiginde kontrol edilmesi
    Then Uygulama resetlenir
    And "E8L BM" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz off ise standby tusuna basarak on konumuna getirilir
    When 10 saniye bekle
    And Ayarlar alanina tiklanir
    And 10 saniye bekle
    And Indirilen program yonetimine tiklanir
    And 3 saniye bekle
    And "Ön Yıkama" textine basilir
    And 3 saniye bekle
    Then Program indir butonuna basilir
    And 15 saniye bekle
    Then Program indirildikten sonra tamam butonuna basilir
    And 3 saniye bekle
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
    And Cihaz on ise standby tusuna basarak off konumuna getirilir
#    And 10 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 018 E8L BM oda degistirme kontrolu
    Given Uygulama resetlenir
    And "E8L BM" detayina gidilir
    Then "Açık" elementini bekle
    When Bulasik makinesini mutfak odasina tasi
    And 3 saniye bekle
    And Mutfak odasina gidilir
    And 10 saniye bekle
    And "Mutfak" yazisi kontrol edilir
    Then "E8L BM" detayina gidilir
    Then 10 saniye bekle
    And Bulasik makinesini oturma odasina geri tasi
    And 10 saniye bekle
    And Ekrani "right" kaydir
    And 3 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 019 E8L BM de Tuz Yok uyarisi açildiğinda uyarinin cihaz ekraninda uyarinin gosterilmesi
    Given Uygulama resetlenir
    And "E8L BM" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz off ise standby tusuna basarak on konumuna getirilir
    And 10 saniye bekle
    And Ayarlar alanina tiklanir
    And 3 saniye bekle
    And Uyari tercihleri butonuna basilir
    And 3 saniye bekle
    And Tuz yok uyarisi off yapilir
    And 3 saniye bekle
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
    Then Tuz yok uyarisi kontrol edilir
    And Cihaz on ise standby tusuna basarak off konumuna getirilir
#    And 10 saniye bekle
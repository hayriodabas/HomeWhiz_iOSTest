@TumSenaryolar
Feature: E8LBulasikMakinesi
  Author: Hayri Odabas
  Date: 2021
  NOT: Bu test scriptlerini calistirmadan once uzaktan kontrolun acik olduguna emin olun
  @E8L_BulasikMakinesi
  Scenario: 001 E8L BM kapali iken cihaz ekrani bilgilerini kontrol edilmesi
    * Uygulama resetlenir
    * Logout yapilir
    * Uygulamaya "yazilimtestonay@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    * Uygulama resetlenir
    * "E8L BM" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz off konumuna getirilir
    * Appbar "E8L BM" texti kontrol edilir
    * Appbar subtitle "Oturma Odası" texti kontrol edilir
    * Uzaktan kontrol "Açık" texti kontrolu
    * "Arçelik" yazisi kontrol edilir
    * "Bulaşık Makinesi" yazisi kontrol edilir
    * "Program seçebilmek için cihazı açmanız gerekiyor." yazisi kontrol edilir
 #   * 3 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 002 E8L BM cihaz ekraninda standby tusu ile acılmasi ve cihaz ekraninin kontrol edilmesi
    * Uygulama resetlenir
    * "E8L BM" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Appbar "E8L BM" texti kontrol edilir
    * "Arçelik" markasi kontrol edilir
    * "Bulaşık Makinesi" yazisi kontrol edilir
    * Favoriler bolumunun var oldugunu kontrol et
    * Program secimi bolumnun var oldugunu kontrol et
    * Sihirbaz bolumnun var oldugunu kontrol et
    * Program secenekleri bolumunun olmadigi kontrol edilir
    * Cihaz off konumuna getirilir
    * 10 saniye bekle
    * "Program seçebilmek için cihazı açmanız gerekiyor." yazisi kontrol edilir
  #  * 3 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 003 E8L BM acik iken cihaz sayfasinda uygulama arka plana atilip acildiginda baglanti kontrolu
    * Uygulama resetlenir
    * "E8L BM" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Appbar "E8L BM" texti kontrol edilir
    * "Arçelik" markasi kontrol edilir
    * "Bulaşık Makinesi" yazisi kontrol edilir
    * Favoriler bolumunun var oldugunu kontrol et
    * Program secimi bolumnun var oldugunu kontrol et
    * Sihirbaz bolumnun var oldugunu kontrol et
    * Program secenekleri bolumunun olmadigi kontrol edilir
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * 10 saniye bekle
    * Appbar "E8L BM" texti kontrol edilir
    * "Arçelik" markasi kontrol edilir
    * "Bulaşık Makinesi" yazisi kontrol edilir
    * Favoriler bolumunun var oldugunu kontrol et
    * Program secimi bolumnun var oldugunu kontrol et
    * Sihirbaz bolumnun var oldugunu kontrol et
    * Program secenekleri bolumunun olmadigi kontrol edilir
    * Cihaz off konumuna getirilir
    * 10 saniye bekle
    * "Program seçebilmek için cihazı açmanız gerekiyor." yazisi kontrol edilir
  #  * 3 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 004 E8L BM program secim ekraninin kontrol bilgilerinin kontrolu
    * Uygulama resetlenir
    * "E8L BM" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Appbar "E8L BM" texti kontrol edilir
    * "Arçelik" markasi kontrol edilir
    * "Bulaşık Makinesi" yazisi kontrol edilir
    * Favoriler bolumunun var oldugunu kontrol et
    * Program secimine basilir
    * 10 saniye bekle
    * Appbar "E8L BM" texti kontrol edilir
    * Appbar subtitle "oturma odası" texti kontrol edilir
    * Favori secimi ikonu kontrol edilir
    * 3 saniye bekle
    * "Eko 50°C" program adi kontrol edilir
    * "TurboYıkama" yazisi kontrol edilir
    * "Hızlı" yazisi kontrol edilir
    * "Mükemmel Kurutma" yazisi kontrol edilir
    * "Hijyen" yazisi kontrol edilir
    * "Yarım Yük" yazisi kontrol edilir
    * "Program Süresi" yazisi kontrol edilir
    * "03:40" zamani kontrol edilir
    * "BİTİŞ SAATİ" yazisi kontrol edilir
    * 3 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * Cihaz off konumuna getirilir
 #   * 10 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 005 E8L BM Ön Yıkama programinin çaliştirilmasinin kontrol edilmesi
    * Uygulama resetlenir
    * "E8L BM" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Program secimine basilir
    * 3 saniye bekle
    * Program secimi "Ön Yıkama" olarak ayarlanir
    * 10 saniye bekle
    * "Program Süresi" yazisi kontrol edilir
    * "00:15" zamani kontrol edilir
    * Programi baslat butonuna basilir
    * 30 saniye bekle
    * Appbar "E8L BM" texti kontrol edilir
    * Appbar subtitle "oturma odası" texti kontrol edilir
    * Uzaktan kontrol "Açık" texti kontrolu
    * "Ön Yıkama" program adi kontrol edilir
    * "00:15" zamani kontrol edilir
    * Program asamasi "Yıkıyor" texti kontrol edilir
    * Pause butonu kontrol edilir
    * El ikonu kontrol edilir
    * Program bekleme moduna alinir
    * 10 saniye bekle
    * Program asamasi "Program duraklatıldı" texti kontrol edilir
    * Stop butonuna basilir
    * 10 saniye bekle
    * "Tamam" textine basilir
    * 10 saniye bekle
    * Program asamasi "İptal ediliyor..." texti kontrol edilir
    * Program sonu home tusuna basilir
 #   * 10 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 006 E8L BM Yogun 70 programi calisirken uygulama arka plana atilip tekrar acilmasinin kontrol edilmesi
    * Uygulama resetlenir
    * "E8L BM" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Program secimine basilir
    * 3 saniye bekle
    * Program secimi "Yoğun 70 santigrat derece" olarak ayarlanir
    * 10 saniye bekle
    * Bulasik makinesi hizli yardici fonksiyonu on yapilir
    * 10 saniye bekle
    * Program kalan sure "01:10" kontrol edilir
    * "Yoğun 70°C" program adi kontrol edilir
    * Programi baslat butonuna basilir
    * 20 saniye bekle
    * "Yoğun 70°C" program adi kontrol edilir
    * Program kalan sure "01:10" kontrol edilir
    * Program asamasi "Yıkıyor" texti kontrol edilir
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * 10 saniye bekle
    * Appbar "E8L BM" texti kontrol edilir
    * Appbar subtitle "oturma odası" texti kontrol edilir
    * Uzaktan kontrol "Açık" texti kontrolu
    * "Yoğun 70°C" program adi kontrol edilir
    * Program kalan sure "01:09" kontrol edilir
    * Pause butonu kontrol edilir
    * El ikonu kontrol edilir
    * Program bekleme moduna alinir
    * 10 saniye bekle
    * Program asamasi "Program duraklatıldı" texti kontrol edilir
    * Stop butonuna basilir
    * 10 saniye bekle
    * "Tamam" textine basilir
    * 10 saniye bekle
    * Program asamasi "İptal ediliyor..." texti kontrol edilir
    * Program sonu home tusuna basilir
#    * 10 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 007 E8L BM Hassas programi calısırken uygulama kapatilip tekrar acilmasinin kontrol edilmesi
    * Uygulama resetlenir
    * "E8L BM" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Program secimine basilir
    * 3 saniye bekle
    * Program secimi "Otomatik" olarak ayarlanir
    * 5 saniye bekle
    * Program kalan sure "02:43" kontrol edilir
    * Programi baslat butonuna basilir
    * 10 saniye bekle
    * "Otomatik" program adi kontrol edilir
    * Program kalan sure "02:43" kontrol edilir
    * Program asamasi "Yıkıyor" texti kontrol edilir
    * Uygulama kill edilip 30 sn sonra acilir
    * 10 saniye bekle
    * "E8L BM" detayina gidilir
    * 10 saniye bekle
    * Appbar "E8L BM" texti kontrol edilir
    * Appbar subtitle "oturma odası" texti kontrol edilir
    * Uzaktan kontrol "Açık" texti kontrolu
    * "Otomatik" program adi kontrol edilir
    * Program kalan sure "02:42" kontrol edilir
    * Pause butonu kontrol edilir
    * El ikonu kontrol edilir
    * Program bekleme moduna alinir
    * 10 saniye bekle
    * Program asamasi "Program duraklatıldı" texti kontrol edilir
    * Stop butonuna basilir
    * 10 saniye bekle
    * "Tamam" textine basilir
    * 10 saniye bekle
    * Program asamasi "İptal ediliyor..." texti kontrol edilir
    * Program sonu home tusuna basilir
#    * 10 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 008 E8L BM Eko50 programi calisirken duzenleme ekranina gecisin kontrol edilmesi
    * Uygulama resetlenir
    * "E8L BM" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Program secimine basilir
    * 3 saniye bekle
    * Program secimi "Eko 50 santigrat derece" olarak ayarlanir
    * 10 saniye bekle
    * Programi baslat butonuna basilir
    * 10 saniye bekle
    * "Eko 50°C" program adi kontrol edilir
    * Program kalan sure "03:40" kontrol edilir
    * Program asamasi "Yıkıyor" texti kontrol edilir
    * El ikonuna basilir
    * 5 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * Appbar "E8L BM" texti kontrol edilir
    * Appbar subtitle "oturma odası" texti kontrol edilir
    * Uzaktan kontrol "Açık" texti kontrolu
    * "Eko 50°C" program adi kontrol edilir
    * "Kalan Süre" yazisi kontrol edilir
    * Program kalan sure "03:40" kontrol edilir
    * Pause butonu kontrol edilir
    * El ikonu kontrol edilir
    * Program bekleme moduna alinir
    * 10 saniye bekle
    * Program asamasi "Program duraklatıldı" texti kontrol edilir
    * Stop butonuna basilir
    * 10 saniye bekle
    * "Tamam" textine basilir
    * 10 saniye bekle
    * Program asamasi "İptal ediliyor..." texti kontrol edilir
    * Program sonu home tusuna basilir
#    * 10 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 009 E8L BM program calisirken pause ekranindan duzenleme ekranina gecis ve duzenleme ekranindan programi devam ettirme kontrolu
    * Uygulama resetlenir
    * "E8L BM" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Program secimine basilir
    * 3 saniye bekle
    * Program secimi "Eko 50 santigrat derece" olarak ayarlanir
    * 10 saniye bekle
    * Programi baslat butonuna basilir
    * 10 saniye bekle
    * "Eko 50°C" program adi kontrol edilir
    * Program kalan sure "03:40" kontrol edilir
    * Program asamasi "Yıkıyor" texti kontrol edilir
    * Program bekleme moduna alinir
    * 10 saniye bekle
    * Program asamasi "Program duraklatıldı" texti kontrol edilir
    * El ikonuna basilir
    * 10 saniye bekle
    * Program devam butonuna basilir
    * 5 saniye bekle
    * "Eko 50°C" program adi kontrol edilir
    * Program kalan sure "03:40" kontrol edilir
    * Program asamasi "Yıkıyor" texti kontrol edilir
    * Pause butonu kontrol edilir
    * El ikonu kontrol edilir
    * Program bekleme moduna alinir
    * 10 saniye bekle
    * Program asamasi "Program duraklatıldı" texti kontrol edilir
    * Stop butonuna basilir
    * 10 saniye bekle
    * "Tamam" textine basilir
    * 10 saniye bekle
    * Program asamasi "İptal ediliyor..." texti kontrol edilir
    * Program sonu home tusuna basilir
 #   * 10 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 010 E8L BM zaman ertelemeli calisma programi baslatma ve iptal etme kontrolu
    * Uygulama resetlenir
    * "E8L BM" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Program secimine basilir
    * 3 saniye bekle
    * Zaman erteleme butonuna basilir
    * 3 saniye bekle
    * Saat bolumune girilir
    * 3 saniye bekle
    * Saati bir adim ilerletilir
    * 10 saniye bekle
    * Dakika on bes adim ilerletilir
    * "Seç" butonuna basilir
    * 5 saniye bekle
    * Programi baslat butonuna basilir
    * 10 saniye bekle
    * "Eko 50°C" program adi kontrol edilir
    * "Bitiş zamanı etkin" yazisi kontrol edilir
    * 10 saniye bekle
    * Program bekleme moduna alinir
    * 10 saniye bekle
    * Stop butonuna basilir
    * 10 saniye bekle
    * "Tamam" textine basilir
    * 5 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 011 E8L BM Sihirbaz uzerinden program basaltilmasinin kontrol edilmesi
    * Uygulama resetlenir
    * "E8L BM" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Sihirbaz secimine tiklanir
    * 3 saniye bekle
    * Bulasik tipi gunluk secilir
    * 3 saniye bekle
    * Kir seviyesi secin butonuna basilir
    * 3 saniye bekle
    * Kir seviyesi Cok secilir
    * 3 saniye bekle
    * "Önerilen Program seçin" butonuna basilir
    * 3 saniye bekle
    * "Önerilen Program" yazisi kontrol edilir
    * "Eko Program" yazisi kontrol edilir
    * "Hızlı Program" yazisi kontrol edilir
    * Programi baslat butonuna basilir
    * 10 saniye bekle
    * "Yoğun 70°C" program adi kontrol edilir
    * Program asamasi "Yıkıyor" texti kontrol edilir
    * Pause butonu kontrol edilir
    * El ikonu kontrol edilir
    * Program bekleme moduna alinir
    * 10 saniye bekle
    * Stop butonuna basilir
    * 10 saniye bekle
    * "Tamam" textine basilir
    * 5 saniye bekle
    * Program sonu home tusuna basilir
 #   * 10 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 012 E8L BM son calistirilan programin cihaz ana ekranındaki son program cihaz gecmisinden başlatılabildiğinin kontrol edilmesi
    * Uygulama resetlenir
    * "E8L BM" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Program secimine basilir
    * 3 saniye bekle
    * Programi baslat butonuna basilir
    * 10 saniye bekle
    * "Yoğun 70°C" yazisi kontrol edilir
    * Program kalan sure "02:26" kontrol edilir
    * 20 saniye bekle
    * Program asamasi "Yıkıyor" texti kontrol edilir
    * Program bekleme moduna alinir
    * 10 saniye bekle
    * Stop butonuna basilir
    * 10 saniye bekle
    * "Tamam" textine basilir
    * 5 saniye bekle
    * Program sonu home tusuna basilir
#    * 10 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 013 E8L BM favori program secilmesi ve Favorilere uzerinden programin baslatilmasi
    * Uygulama resetlenir
    * "E8L BM" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Program secimine basilir
    * 3 saniye bekle
    * Program secimi "Eko 50 santigrat derece" olarak ayarlanir
    * 10 saniye bekle
    * Kalp ikonuna basilir
    * 3 saniye bekle
    * Favori ekle ekraninda program adi Fav Yikama yazilir
    * Favori ekle tamam butonuna basilir
    * 3 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * Favoriler butonuna basilir
    * 3 saniye bekle
    * "Fav Yikama" program adi kontrol edilir
    * Favori ekraninda Play butonuna basilir
    * 10 saniye bekle
    * Programi baslat butonuna basilir
    * 10 saniye bekle
    * "Eko 50°C" program adi kontrol edilir
    * Program kalan sure "03:40" kontrol edilir
    * Program asamasi "Yıkıyor" texti kontrol edilir
    * 3 saniye bekle
    * Program bekleme moduna alinir
    * 10 saniye bekle
    * Stop butonuna basilir
    * "Tamam" elementini bekle
    * "Tamam" textine basilir
    * 5 saniye bekle
    * Program sonu home tusuna basilir
    * 10 saniye bekle
    #ikinci kere girildiginde kontrol edilmesi
    * Uygulama resetlenir
    * "E8L BM" detayina gidilir
    * "Açık" elementini bekle
    * 10 saniye bekle
    * Cihaz off ise standby tusuna basarak on konumuna getirilir
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
 #   * 10 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 014 E8L BM son calistirilan programin cihaz gecmisinde gosterilmesinin kontrolu
    * Uygulama resetlenir
    * "E8L BM" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Program secimine basilir
    * 3 saniye bekle
    * Program secimi "Yoğun 70 santigrat derece" olarak ayarlanir
    * 10 saniye bekle
    * Programi baslat butonuna basilir
    * 10 saniye bekle
    * "Yoğun 70°C" yazisi kontrol edilir
    * Program kalan sure "02:26" kontrol edilir
    * 20 saniye bekle
    * Program asamasi "Yıkıyor" texti kontrol edilir
    * Program bekleme moduna alinir
    * 10 saniye bekle
    * Stop butonuna basilir
    * 3 saniye bekle
    * "Tamam" butonuna basilir
    * 3 saniye bekle
    * Program sonu home tusuna basilir
#    * 3 saniye bekle
#    * "E8L BM" detayina gidilir
#    * 10 saniye bekle
#    * Cihaz off konumuna getirilir
 #   * 10 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 015 E8L BM Cihaz bilgileri menusunun kontrol edilmesi
    * Uygulama resetlenir
    * "E8L BM" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz bilgilerine tiklanir
    * 10 saniye bekle
    * "CİHAZ KİMLİĞİ" yazisi kontrol edilir
    * "Arçelik" markasi kontrol edilir
    * "7612610200" Model numarasi kontrol edilir
    * "F999967707317445546187" Digital kimlik no kontrol edilir
    * "VERSİYON" yazisi kontrol edilir
    * "1.4.4 / 1.2.5 / 3.6.41 / - / -" versiyon numarasi kontrol edilir
    * navigasyondan geri tusuna basilir
  @E8L_BulasikMakinesi
  Scenario: 016 E8L BM Cihaz Ayarlari menusunde Otomatik kapi acma ve Parlatici seviyesi degistirilmesinin kontrol edilmesi
    * Uygulama resetlenir
    * "E8L BM" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz off ise standby tusuna basarak on konumuna getirilir
    * 10 saniye bekle
    * Ayarlar alanina tiklanir
    * 3 saniye bekle
    * Cihaz ayarlari secilir
    * 3 saniye bekle
    * Cihaz ayarlari ekraninda otomatik kapi acma Kapali secilir
    * 3 saniye bekle
    * Cihaz ayarlari ekraninda parlatici seviyesini ikinci kademeye ayarlanir
    * 10 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * 10 saniye bekle
    * Ayarlar alanina tiklanir
    * 10 saniye bekle
    * Cihaz ayarlari secilir
    * 3 saniye bekle
    * Otomatik kapi acma kapali oldugu kontrol edilir
    * Cihaz ayarlari ekraninda parlatici seviyesini 2 kademede oldugunu kontrol et
    * Cihaz ayarlari ekraninda otomatik kapi acma Kapali secilir
    * 3 saniye bekle
    * Cihaz ayarlari ekraninda parlatici seviyesini ilk kademeye geri alinir
    * 10 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * Cihaz off konumuna getirilir
#    * 10 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 017 E8L BM Makine Yıkama download programı indirme ve başlatma'nın kontrol edilmesi
    * Uygulama resetlenir
    * "E8L BM" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz off ise standby tusuna basarak on konumuna getirilir
    * 10 saniye bekle
    * Ayarlar alanina tiklanir
    * 10 saniye bekle
    * Indirilen program yonetimine tiklanir
    * 3 saniye bekle
    * "Makine Yıkama" textine basilir
    * 10 saniye bekle
    * Program indir butonuna basilir
    * 15 saniye bekle
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
    * "Makine Yıkama" program adi kontrol edilir
    * Program kalan sure "01:15" kontrol edilir
    * Program asamasi "Yıkıyor" texti kontrol edilir
    * Program bekleme moduna alinir
    * 10 saniye bekle
    * Stop butonuna basilir
    * 3 saniye bekle
    * "Tamam" butonuna basilir
    * 3 saniye bekle
    * Program sonu home tusuna basilir
    * 10 saniye bekle
    #ikinci kere girildiginde kontrol edilmesi
    * Uygulama resetlenir
    * "E8L BM" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz off ise standby tusuna basarak on konumuna getirilir
    * 10 saniye bekle
    * Ayarlar alanina tiklanir
    * 10 saniye bekle
    * Indirilen program yonetimine tiklanir
    * 3 saniye bekle
    * "Ön Yıkama" textine basilir
    * 3 saniye bekle
    * Program indir butonuna basilir
    * 15 saniye bekle
    * Program indirildikten sonra tamam butonuna basilir
    * 3 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
#    * 10 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 018 E8L BM oda degistirme kontrolu
    * Uygulama resetlenir
    * "E8L BM" detayina gidilir
    * "Açık" elementini bekle
    * Bulasik makinesini mutfak odasina tasi
    * 3 saniye bekle
    * Mutfak odasina gidilir
    * 10 saniye bekle
    * "Mutfak" yazisi kontrol edilir
    * "E8L BM" detayina gidilir
    * 10 saniye bekle
    * Bulasik makinesini oturma odasina geri tasi
    * 10 saniye bekle
    * Ekrani "right" kaydir
    * 3 saniye bekle
  @E8L_BulasikMakinesi
  Scenario: 019 E8L BM de Tuz Yok uyarisi açildiğinda uyarinin cihaz ekraninda uyarinin gosterilmesi
    * Uygulama resetlenir
    * "E8L BM" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz off ise standby tusuna basarak on konumuna getirilir
    * 10 saniye bekle
    * Ayarlar alanina tiklanir
    * 3 saniye bekle
    * Uyari tercihleri butonuna basilir
    * 3 saniye bekle
    * Tuz yok uyarisi off yapilir
    * 3 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * Tuz yok uyarisi kontrol edilir
    * Cihaz on ise standby tusuna basarak off konumuna getirilir
#    * 10 saniye bekle
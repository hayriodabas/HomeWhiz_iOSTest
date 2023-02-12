@TumSenaryolar
Feature: Kurallar
  Author: Hayri Odabaş
  Date: 2022

  @Kurallar
  Scenario: 001 Kurallar Kurallar ekran bilgilerinin kontrol edilmesi
    * Uygulama resetlenir
    * Logout yapilir
    * Uygulamaya "hayri.odabas@arcelik.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    * Uygulama resetlenir
    * "Oturma Odası" yazisi kontrol edilir
    * "KURALLAR" butonuna basilir
    * 5 saniye bekle
    * "KURALLAR" yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "Kural bulunamadı" yazisi icerdigi kontrol edilir

  @Kurallar
  Scenario: 002 Kurallar Kural ekle ekranı bilgilerinin kontrol edilmesi
    * Uygulama resetlenir
    * "KURALLAR" butonuna basilir
    * 5 saniye bekle
    * "KURAL EKLE" textine basilir
    * Appbar "Kural Ekle" texti kontrol edilir
    * "Oluşturacağınız kuralın çeşidini" yazisi icerdigi kontrol edilir
    * "Konum Bazlı" yazisi kontrol edilir
    * "Cihaz Bazlı" yazisi kontrol edilir
    * "Zaman Bazlı" yazisi kontrol edilir

  @Kurallar
  Scenario: 003 Kurallar Cihaz bazlı kural olusturma seçim ekrani kontrolü
    * Uygulama resetlenir
    * "KURALLAR" butonuna basilir
    * 5 saniye bekle
    * "KURAL EKLE" textine basilir
    * "Cihaz Bazlı" textine basilir
    * "Gelişmiş Kural Oluştur" yazisi kontrol edilir
    * "Başlangıç" yazisi kontrol edilir
    * "Sonuç" yazisi kontrol edilir
    * "Kayıt" yazisi kontrol edilir
    * "01" yazisi kontrol edilir
    * "02" yazisi kontrol edilir
    * "03" yazisi kontrol edilir
    * "Kuralınızın hangi durumda etkin olacağını seçin" yazisi kontrol edilir
    * "Tetikleyici Cihaz" yazisi kontrol edilir
    * "SONRAKİ ADIM" yazisi kontrol edilir

  @Kurallar @Deneme
  Scenario: 004 Kurallar cihaz bazlı kural oluşturma ilk adımda iptal edilmesi
    * Uygulama resetlenir
    * "KURALLAR" butonuna basilir
    * 5 saniye bekle
    * "KURAL EKLE" textine basilir
    * "Cihaz Bazlı" textine basilir
    * "Tetikleyici Cihaz" textine basilir
    * 5 saniye bekle
#    * "Co2" textine basilir
#    * 5 saniye bekle
#    * "Tetikleyici Durum" textine basilir
#    * 5 saniye bekle
#    * "Bağıl nem belli bir yüzdenin altına düştüğünde" texti listeden seçilir
#    * 5 saniye bekle
#    * "Tetikleme Nem Listesi" textine basilir
#    * 5 saniye bekle
#    * "35 %" texti listeden seçilir
#    * navigasyondan geri tusuna basilir
#    * "İptal etmek istiyor musunuz?" yazisi kontrol edilir
#    * "HAYIR" yazisi kontrol edilir
#    * "EVET" yazisi kontrol edilir
#    * "EVET" yazili buttona basilir
#    * Appbar "Kural Ekle" texti kontrol edilir
#    * "Oluşturacağınız kuralın çeşidini belirleyiniz." yazisi kontrol edilir
#    * "Belirlediğiniz senaryoya göre cihazlara yönelik aksiyon alabiliriz." yazisi kontrol edilir
#    * "Konuma Bağlı" yazisi kontrol edilir
#    * "Cihaz" yazisi kontrol edilir
#    * "Zamanlama" yazisi kontrol edilir
#
#  @Kuralla
#  Scenario: 005 Kurallar cihaz bazlı kural sonucun iptal edilerek tekrar eklenmesinin kontrol edilmesi
#    * Uygulamaya "mobilotomasyon2@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
#    * 20 saniye bekle
#    * "KURALLAR" butonuna basilir
#    * 5 saniye bekle
#    * "KURAL EKLE" textine basilir
#    * "Cihaz" textine basilir
#    * "Tetikleyici Cihaz" textine basilir
#    * 5 saniye bekle
#    * "Co2" textine basilir
#    * 5 saniye bekle
#    * "Tetikleyici Durum" textine basilir
#    * 5 saniye bekle
#    * "Bağıl nem belli bir yüzdenin altına düştüğünde" texti listeden seçilir
#    * 5 saniye bekle
#    * "Tetikleme Nem Listesi" textine basilir
#    * 5 saniye bekle
#    * "35 %" texti listeden seçilir
#    * "SONRAKİ" yazili buttona basilir
#    * "Cihaz Seçin" textine basilir
#    * "Co2" textine basilir
#    * "Cihaz Sonucunu Seçin" textine basilir
#    * 5 saniye bekle
#    * "Uyku modunu kapat" texti listeden seçilir
#    * "KAYDET" yazili buttona basilir
#    * "Kuralınızın sonucunu belirleyin." yazisi kontrol edilir
#    * "Sonuç 1: Co2" yazisi kontrol edilir
#    * Kural için oluşturulan sonuça çarpı işareti ile silinir
#    * "Sonuç Ekle" yazisi kontrol edilir
#    * "Sonuç Ekle" textine basilir
#    * "Sonuç 1" yazisi kontrol edilir
#    * "Cihaz Seçin" yazisi kontrol edilir
#    * "Cihaz Seçin" textine basilir
#    * "Co2" textine basilir
#    * "Cihaz Sonucunu Seçin" textine basilir
#    * 5 saniye bekle
#    * "Uyku modunu kapat" texti listeden seçilir
#    * "KAYDET" yazili buttona basilir
#    * "Kuralınızın sonucunu belirleyin." yazisi kontrol edilir
#    * "Sonuç 1: Co2" yazisi kontrol edilir
#    * "Sonuç Ekle" yazisi kontrol edilir
#    * navigasyondan geri tusuna basilir
#    * "İptal etmek istiyor musunuz?" yazisi kontrol edilir
#    * "HAYIR" yazisi kontrol edilir
#    * "EVET" yazisi kontrol edilir
#    * "EVET" yazili buttona basilir
#    * Appbar "Kural Ekle" texti kontrol edilir
#    * "Oluşturacağınız kuralın çeşidini belirleyiniz." yazisi kontrol edilir
#    * "Belirlediğiniz senaryoya göre cihazlara yönelik aksiyon alabiliriz." yazisi kontrol edilir
#    * "Konuma Bağlı" yazisi kontrol edilir
#    * "Cihaz" yazisi kontrol edilir
#    * "Zamanlama" yazisi kontrol edilir
#
#  @Kurallar
#  Scenario: 006 Kurallar Co2 cihazı için cihaz bazlı kural seçimlerinin ve kuralun olusturmasının kontrolü
#    * Uygulamaya "mobilotomasyon2@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
#    * 20 saniye bekle
#    * "KURALLAR" butonuna basilir
#    * 5 saniye bekle
#    * "KURAL EKLE" textine basilir
#    * "Cihaz" textine basilir
#    * "Sonuç" yazisi kontrol edilir
#    * "Tetikleyici Cihaz" textine basilir
#    * 5 saniye bekle
#    * "Co2" textine basilir
#    * 5 saniye bekle
#    * "Tetikleyici Durum" yazisi kontrol edilir
#    * "Tetikleyici Durum" textine basilir
#    * 5 saniye bekle
#    * "CO2 miktarı belli bir seviyeye ulaştığında" yazisi kontrol edilir
#    * "Sıcaklık belirli bir dereceyi geçtiğinde" yazisi kontrol edilir
#    * "Sıcaklık belirli bir derecenin altına düştüğünde" yazisi kontrol edilir
#    * "Bağıl nem belli bir yüzdeyi geçtiğinde" yazisi kontrol edilir
#    * "Bağıl nem belli bir yüzdenin altına düştüğünde" yazisi kontrol edilir
#    * "CO2 miktarı belli bir seviyeye ulaştığında" texti listeden seçilir
#    * 5 saniye bekle
#    * "Tetikleme CO2 Seviye Listesi" yazisi kontrol edilir
#    * "Tetikleme CO2 Seviye Listesi" textine basilir
#    * 5 saniye bekle
#    * "Çok İyi" yazisi kontrol edilir
#    * "İyi" yazisi kontrol edilir
#    * "Orta" yazisi kontrol edilir
#    * "Sağlıksız" yazisi kontrol edilir
#    * "Zararlı" yazisi kontrol edilir
#    * "Sağlıksız" texti listeden seçilir
#    * "SONRAKİ" yazisi kontrol edilir
#    * "SONRAKİ" yazili buttona basilir
#    * "Kuralınızın sonucunu belirleyin." yazisi kontrol edilir
#    * "Sonuç 1" yazisi kontrol edilir
#    * "Cihaz Seçin" yazisi kontrol edilir
#    * "Cihaz Seçin" textine basilir
#    * "Co2" textine basilir
#    * "Cihaz Sonucunu Seçin" yazisi kontrol edilir
#    * "Cihaz Sonucunu Seçin" textine basilir
#    * 5 saniye bekle
#    * "Uyku modunu aç" yazisi kontrol edilir
#    * "Uyku modunu kapat" yazisi kontrol edilir
#    * "Uyku modunu kapat" texti listeden seçilir
#    * "KAYDET" yazisi kontrol edilir
#    * "KAYDET" yazili buttona basilir
#    * "Kuralınızın sonucunu belirleyin." yazisi kontrol edilir
#    * "Sonuç 1: Co2" yazisi kontrol edilir
#    * "Sonuç Ekle" yazisi kontrol edilir
#    * "SONRAKİ" yazili buttona basilir
#    * "Kayıt" textine basilir
#    * "Kuralınıza isim verin" yazisi kontrol edilir
#    * "Kural İsmi" yazisi kontrol edilir
#    * "Kuralı şimdi etkinleştirin" yazisi kontrol edilir
#    * Kural adi "sagliksiz co2" girilir
#    * "KAYDET" yazili buttona basilir
#    * 5 saniye bekle
#    * "sagliksiz co2 kuralı oluşturuldu!" yazisi kontrol edilir
#    * "TAMAM" yazili buttona basilir
#    * 5 saniye bekle
#    * "Kurallar" yazisi kontrol edilir
#    * "1 AKTİF" yazisi kontrol edilir
#    * "1 KURAL" yazisi kontrol edilir
#    * "KURAL EKLE" yazisi kontrol edilir
#    * "sagliksiz co2" yazisi kontrol edilir
#    * "CO2 miktarı sağlıksız seviyeye ulaştığında" yazisi kontrol edilir
#
#  @Kurallar
#  Scenario: 007 Kurallar Co2 için oluşturulan kuralın kayıt edildiğinin ve uygulama tekrar açıldığında kontrol edilmesi
#    * Uygulamaya "mobilotomasyon2@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
#    * 20 saniye bekle
#    * "KURALLAR" butonuna basilir
#    * 5 saniye bekle
#    * "1 AKTİF" yazisi kontrol edilir
#    * "1 KURAL" yazisi kontrol edilir
#    * "sagliksiz co2" yazisi kontrol edilir
#    * "KURAL EKLE" yazisi kontrol edilir
#    * "CO2 miktarı sağlıksız seviyeye ulaştığında" yazisi kontrol edilir
#    * Uygulamayi 30 saniye arka planda tut sonra aktive et
#    * 10 saniye bekle
#    * "Kurallar" yazisi kontrol edilir
#    * "KURAL EKLE" yazisi kontrol edilir
#    * "1 AKTİF" yazisi kontrol edilir
#    * "1 KURAL" yazisi kontrol edilir
#    * "sagliksiz co2" yazisi kontrol edilir
#    * "KURAL EKLE" yazisi kontrol edilir
#    * "CO2 miktarı sağlıksız seviyeye ulaştığında" yazisi kontrol edilir
#    * Kural "1" için asagı ok tusuna basilir
#    * "Gece modu kapalı" yazisi kontrol edilir
#    * "Düzenle" yazisi kontrol edilir
#    * "Sil" yazisi kontrol edilir
#
#  @Kurallar
#  Scenario: 008 Kurallar Co2 cihazı için pasif ikinci cihaz bazlı kuralın oluşturulduğunun kontrol edilmesi
#    * Uygulamaya "mobilotomasyon2@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
#    * 20 saniye bekle
#    * "KURALLAR" butonuna basilir
#    * 5 saniye bekle
#    * "KURAL EKLE" textine basilir
#    * "Cihaz" textine basilir
#    * "Sonuç" yazisi kontrol edilir
#    * "Tetikleyici Cihaz" textine basilir
#    * 5 saniye bekle
#    * "Co2" textine basilir
#    * 5 saniye bekle
#    * "Tetikleyici Durum" yazisi kontrol edilir
#    * "Tetikleyici Durum" textine basilir
#    * 5 saniye bekle
#    * "CO2 miktarı belli bir seviyeye ulaştığında" yazisi kontrol edilir
#    * "Sıcaklık belirli bir dereceyi geçtiğinde" yazisi kontrol edilir
#    * "Sıcaklık belirli bir derecenin altına düştüğünde" yazisi kontrol edilir
#    * "Bağıl nem belli bir yüzdeyi geçtiğinde" yazisi kontrol edilir
#    * "Bağıl nem belli bir yüzdenin altına düştüğünde" yazisi kontrol edilir
#    * "Sıcaklık belirli bir dereceyi geçtiğinde" texti listeden seçilir
#    * 5 saniye bekle
#    * "Tetikleme Sıcaklık Listesi" yazisi kontrol edilir
#    * "Tetikleme Sıcaklık Listesi" textine basilir
#    * 5 saniye bekle
#    * "3 C°" texti listeden seçilir
#    * "SONRAKİ" yazisi kontrol edilir
#    * "SONRAKİ" yazili buttona basilir
#    * "Kuralınızın sonucunu belirleyin." yazisi kontrol edilir
#    * "Sonuç 1" yazisi kontrol edilir
#    * "Cihaz Seçin" yazisi kontrol edilir
#    * "Cihaz Seçin" textine basilir
#    * "Co2" textine basilir
#    * "Cihaz Sonucunu Seçin" yazisi kontrol edilir
#    * "Cihaz Sonucunu Seçin" textine basilir
#    * 5 saniye bekle
#    * "Uyku modunu aç" yazisi kontrol edilir
#    * "Uyku modunu kapat" yazisi kontrol edilir
#    * "Uyku modunu aç" texti listeden seçilir
#    * "KAYDET" yazisi kontrol edilir
#    * "KAYDET" yazili buttona basilir
#    * "Kuralınızın sonucunu belirleyin." yazisi kontrol edilir
#    * "Sonuç 1: Co2" yazisi kontrol edilir
#    * "Sonuç Ekle" yazisi kontrol edilir
#    * "SONRAKİ" yazili buttona basilir
#    * "Kayıt" textine basilir
#    * "Kuralınıza isim verin" yazisi kontrol edilir
#    * "Kural İsmi" yazisi kontrol edilir
#    * "Kuralı şimdi etkinleştirin" yazisi kontrol edilir
#    * Kural adi "düsük sicaklik" girilir
#    * Kurali simdi etkinlestirin tusuna basilir
#    * "KAYDET" yazili buttona basilir
#    * 5 saniye bekle
#    * "düsük sicaklik kuralı oluşturuldu!" yazisi kontrol edilir
#    * "TAMAM" yazili buttona basilir
#    * 5 saniye bekle
#    * "Kurallar" yazisi kontrol edilir
#    * "1 AKTİF" yazisi kontrol edilir
#    * "2 KURAL" yazisi kontrol edilir
#    * "KURAL EKLE" yazisi kontrol edilir
#    * "sagliksiz co2" yazisi kontrol edilir
#    * "CO2 miktarı sağlıksız seviyeye ulaştığında" yazisi kontrol edilir
#    * "düsük sicaklik" yazisi kontrol edilir
#    * "Sıcaklık belirli bir dereceyi geçtiğinde" yazisi kontrol edilir
#
#  @Kurallar
#  Scenario: 009 Kurallar Co2 için olusturulan ikinci kuralın aktive edilmesinin kontrolu
#    * Uygulamaya "mobilotomasyon2@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
#    * 20 saniye bekle
#    * "KURALLAR" butonuna basilir
#    * 5 saniye bekle
#    * Kural "2" için aktivasyon butonuna basilir
#    * "2 AKTİF" yazisi kontrol edilir
#    * "2 KURAL" yazisi kontrol edilir
#    * "KURAL EKLE" yazisi kontrol edilir
#    * "sagliksiz co2" yazisi kontrol edilir
#    * "CO2 miktarı sağlıksız seviyeye ulaştığında" yazisi kontrol edilir
#    * "düsük sicaklik" yazisi kontrol edilir
#    * "Sıcaklık belirli bir dereceyi geçtiğinde" yazisi kontrol edilir
#    * Uygulamayi 30 saniye arka planda tut sonra aktive et
#    * 10 saniye bekle
#    * "2 AKTİF" yazisi kontrol edilir
#    * "2 KURAL" yazisi kontrol edilir
#    * "KURAL EKLE" yazisi kontrol edilir
#    * "sagliksiz co2" yazisi kontrol edilir
#    * "CO2 miktarı sağlıksız seviyeye ulaştığında" yazisi kontrol edilir
#    * "düsük sicaklik" yazisi kontrol edilir
#    * "Sıcaklık belirli bir dereceyi geçtiğinde" yazisi kontrol edilir
#    * Kural "2" için asagı ok tusuna basilir
#    * "Gece modu açık" yazisi kontrol edilir
#    * "Düzenle" yazisi kontrol edilir
#    * "Sil" yazisi kontrol edilir
#
#  @Kurallar
#  Scenario: 010 Kurallar Co2 için olusturulan kuralın isminin düzenlenmesi
#    * Uygulamaya "mobilotomasyon2@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
#    * 20 saniye bekle
#    * "KURALLAR" butonuna basilir
#    * 5 saniye bekle
#    * "2 AKTİF" yazisi kontrol edilir
#    * "2 KURAL" yazisi kontrol edilir
#    * "KURAL EKLE" yazisi kontrol edilir
#    * "sagliksiz co2" yazisi kontrol edilir
#    * "CO2 miktarı sağlıksız seviyeye ulaştığında" yazisi kontrol edilir
#    * "düsük sicaklik" yazisi kontrol edilir
#    * "Sıcaklık belirli bir dereceyi geçtiğinde" yazisi kontrol edilir
#    * Kural "2" için asagı ok tusuna basilir
#    * "Düzenle" textine basilir
#    * 5 saniye bekle
#    * "Yeniden Adlandır" yazisi kontrol edilir
#    * "düsük sicaklik" yazisi kontrol edilir
#    * "YENİDEN ADLANDIR" yazisi kontrol edilir
#    * "İPTAL" yazisi kontrol edilir
#    * Kural adi "Düşük Sıcaklık" olarak değiştirilir
#    * "YENİDEN ADLANDIR" yazili buttona basilir
#    * 5 saniye bekle
#    * "2 AKTİF" yazisi kontrol edilir
#    * "2 KURAL" yazisi kontrol edilir
#    * "KURAL EKLE" yazisi kontrol edilir
#    * "sagliksiz co2" yazisi kontrol edilir
#    * "CO2 miktarı sağlıksız seviyeye ulaştığında" yazisi kontrol edilir
#    * "Düşük Sıcaklık" yazisi kontrol edilir
#    * "Sıcaklık belirli bir dereceyi geçtiğinde" yazisi kontrol edilir
#
#  @Kurallar
#  Scenario: 011 Kurallar Co2 için olusturulan kuralların ana ekrandan erişilebildiğinin kontrol edilmesi
#    * Uygulamaya "mobilotomasyon2@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
#    * 20 saniye bekle
#    * Home ikonuna basilir
#    * "KURAL SETLERİ" yazisi kontrol edilir
#    * "Kural Listesi" yazisi kontrol edilir
#    * "2 AKTİF" yazisi kontrol edilir
#    * "2 KURAL" yazisi kontrol edilir
#    * "Kural Listesi" textine basilir
#    * 5 saniye bekle
#    * "2 AKTİF" yazisi kontrol edilir
#    * "2 KURAL" yazisi kontrol edilir
#    * "KURAL EKLE" yazisi kontrol edilir
#    * "sagliksiz co2" yazisi kontrol edilir
#    * "CO2 miktarı sağlıksız seviyeye ulaştığında" yazisi kontrol edilir
#    * "Düşük Sıcaklık" yazisi kontrol edilir
#    * "Sıcaklık belirli bir dereceyi geçtiğinde" yazisi kontrol edilir
#
#  @Kurallar
#  Scenario: 012 Kurallar Co2 için olusturulan kuralların cihaz ekranından erişilebildiğinin kontrol edilmesi
#    * Uygulamaya "mobilotomasyon2@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
#    * 30 saniye bekle
#    * "Co2" detayina gidilir
#    * 10 saniye bekle
#    * "CİHAZA TANIMLI KURALLAR" yazisi kontrol edilir
#    * "sagliksiz co2" yazisi kontrol edilir
#    * "CO2 miktarı sağlıksız seviyeye ulaştığında" yazisi kontrol edilir
#    * 5 saniye bekle
#    * "sagliksiz co2" textine basilir
#    * 5 saniye bekle
#    * "2 AKTİF" yazisi kontrol edilir
#    * "2 KURAL" yazisi kontrol edilir
#    * "KURAL EKLE" yazisi kontrol edilir
#    * "sagliksiz co2" yazisi kontrol edilir
#    * "CO2 miktarı sağlıksız seviyeye ulaştığında" yazisi kontrol edilir
#    * "Düşük Sıcaklık" yazisi kontrol edilir
#    * "Sıcaklık belirli bir dereceyi geçtiğinde" yazisi kontrol edilir
#
#  @Kurallar
#  Scenario: 013 Kurallar Co2 için oluşturulan kuralların tamamen silinmesinin kontrolu
#    * Uygulamaya "mobilotomasyon2@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
#    * 20 saniye bekle
#    * "KURALLAR" butonuna basilir
#    * 5 saniye bekle
#    * "2 AKTİF" yazisi kontrol edilir
#    * "2 KURAL" yazisi kontrol edilir
#    * "KURAL EKLE" yazisi kontrol edilir
#    * "sagliksiz co2" yazisi kontrol edilir
#    * "CO2 miktarı sağlıksız seviyeye ulaştığında" yazisi kontrol edilir
#    * "Düşük Sıcaklık" yazisi kontrol edilir
#    * "Sıcaklık belirli bir dereceyi geçtiğinde" yazisi kontrol edilir
#    * Kural "2" için asagı ok tusuna basilir
#    * Kural "2" için sil tusuna basilir
#    * 5 saniye bekle
#    * "1 AKTİF" yazisi kontrol edilir
#    * "1 KURAL" yazisi kontrol edilir
#    * "KURAL EKLE" yazisi kontrol edilir
#    * "sagliksiz co2" yazisi kontrol edilir
#    * "CO2 miktarı sağlıksız seviyeye ulaştığında" yazisi kontrol edilir
#    * Kural "1" için asagı ok tusuna basilir
#    * Kural "1" için sil tusuna basilir
#    * 5 saniye bekle
#    * "Henüz kural oluşturmadınız." yazisi kontrol edilir
#    * "Bu bölümden, cihazlarınızın belirlediğiniz konum, zaman ve cihaz bazlı senaryolara göre çalışmasını sağlayabilirsiniz." yazisi kontrol edilir
#
#  @Kurallar
#  Scenario: 014 Kurallar Co2 cihazı için cihaz bazlı iki sonuçlu kural olusturma kontrolü
#    * Uygulamaya "mobilotomasyon2@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
#    * 20 saniye bekle
#    * "KURALLAR" butonuna basilir
#    * 5 saniye bekle
#    * "KURAL EKLE" textine basilir
#    * "Cihaz" textine basilir
#    * "Tetikleyici Cihaz" textine basilir
#    * 5 saniye bekle
#    * "Co2" textine basilir
#    * "Tetikleyici Durum" textine basilir
#    * 5 saniye bekle
#    * "CO2 miktarı belli bir seviyeye ulaştığında" texti listeden seçilir
#    * 5 saniye bekle
#    * "Tetikleme CO2 Seviye Listesi" textine basilir
#    * 5 saniye bekle
#    * "Çok İyi" texti listeden seçilir
#    * "SONRAKİ" yazili buttona basilir
#    * "Cihaz Seçin" textine basilir
#    * "Co2" textine basilir
#    * "Cihaz Sonucunu Seçin" textine basilir
#    * 5 saniye bekle
#    * "Uyku modunu aç" texti listeden seçilir
#    * "KAYDET" yazili buttona basilir
#    * "Kuralınızın sonucunu belirleyin." yazisi kontrol edilir
#    * "Sonuç 1: Co2" yazisi kontrol edilir
#    * "Sonuç Ekle" yazisi kontrol edilir
#    * "Sonuç Ekle" textine basilir
#    * "Sonuç 2" yazisi kontrol edilir
#    * "Cihaz Seçin" textine basilir
#    * "Co2" textine basilir
#    * "Cihaz Sonucunu Seçin" textine basilir
#    * 5 saniye bekle
#    * "Uyku modunu kapat" texti listeden seçilir
#    * "KAYDET" yazili buttona basilir
#    * "Kuralınızın sonucunu belirleyin." yazisi kontrol edilir
#    * "Sonuç 1: Co2" yazisi kontrol edilir
#    * "Sonuç 2: Co2" yazisi kontrol edilir
#    * "Sonuç Ekle" yazisi kontrol edilir
#    * "SONRAKİ" yazili buttona basilir
#    * "Kayıt" textine basilir
#    * "Kuralınıza isim verin" yazisi kontrol edilir
#    * "Kural İsmi" yazisi kontrol edilir
#    * "Kuralı şimdi etkinleştirin" yazisi kontrol edilir
#    * Kural adi "İki sonuçlu kural" girilir
#    * "KAYDET" yazili buttona basilir
#    * 5 saniye bekle
#    * "İki sonuçlu kural kuralı oluşturuldu!" yazisi kontrol edilir
#    * "TAMAM" yazili buttona basilir
#    * 5 saniye bekle
#    * "Kurallar" yazisi kontrol edilir
#    * "1 AKTİF" yazisi kontrol edilir
#    * "1 KURAL" yazisi kontrol edilir
#    * "KURAL EKLE" yazisi kontrol edilir
#    * "İki sonuçlu kural" yazisi kontrol edilir
#    * "CO2 miktarı çok iyi seviyeye ulaştuğında" yazisi kontrol edilir
#    * Kural "1" için asagı ok tusuna basilir
#    * "Gece modu açık" yazisi kontrol edilir
#    * "Gece modu kapalı" yazisi kontrol edilir
#    * Kural "1" için sil tusuna basilir
#    * 5 saniye bekle
#    * "Henüz kural oluşturmadınız." yazisi kontrol edilir
#    * "Bu bölümden, cihazlarınızın belirlediğiniz konum, zaman ve cihaz bazlı senaryolara göre çalışmasını sağlayabilirsiniz." yazisi kontrol edilir
#
#  @Kurallar
#  Scenario:015 Kurallar Gateway Cihazı için tetikleyici durumların kontrolü
#    * Uygulamaya "mobilotomasyon3@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
#    * 20 saniye bekle
#    * "KURALLAR" butonuna basilir
#    * 5 saniye bekle
#    * "KURAL EKLE" textine basilir
#    * "Cihaz" textine basilir
#    * "Sonuç" yazisi kontrol edilir
#    * "Tetikleyici Cihaz" textine basilir
#    * 5 saniye bekle
#    * "Gateway" textine basilir
#    * 5 saniye bekle
#    * "Tetikleyici Durum" yazisi kontrol edilir
#    * "Tetikleyici Durum" textine basilir
#    * 5 saniye bekle
#    * "Sıcaklık belirli bir dereceyi geçtiğinde" yazisi kontrol edilir
#    * "Sıcaklık belirli bir derecenin altına düştüğünde" yazisi kontrol edilir
#    * "Bağıl nem belli bir yüzdeyi geçtiğinde" yazisi kontrol edilir
#    * "Bağıl nem belli bir yüzdenin altına düştüğünde" yazisi kontrol edilir
#    * 5 saniye bekle
#    * "Sıcaklık belirli bir dereceyi geçtiğinde" texti listeden seçilir
#    * 5 saniye bekle
#    * "Tetikleme Sıcaklık Listesi" yazisi kontrol edilir
#    * "Tetikleme Sıcaklık Listesi" textine basilir
#    * 5 saniye bekle
#    * "0 C°" yazisi kontrol edilir
#    * "1 C°" yazisi kontrol edilir
#    * "2 C°" yazisi kontrol edilir
#    * "3 C°" yazisi kontrol edilir
#    * "2 C°" texti listeden seçilir
#    * 5 saniye bekle
#    * "2 C°" yazisi kontrol edilir
#    * "Sıcaklık belirli bir dereceyi geçtiğinde" textine basilir
#    * 5 saniye bekle
#    * "Sıcaklık belirli bir derecenin altına düştüğünde" texti listeden seçilir
#    * 5 saniye bekle
#    * "Tetikleme Sıcaklık Listesi" yazisi kontrol edilir
#    * "Tetikleme Sıcaklık Listesi" textine basilir
#    * 5 saniye bekle
#    * "0 C°" yazisi kontrol edilir
#    * "1 C°" yazisi kontrol edilir
#    * "2 C°" yazisi kontrol edilir
#    * "3 C°" yazisi kontrol edilir
#    * "4 C°" texti listeden seçilir
#    * 5 saniye bekle
#    * "4 C°" yazisi kontrol edilir
#    * "Sıcaklık belirli bir derecenin altına düştüğünde" textine basilir
#    * 5 saniye bekle
#    * "Bağıl nem belli bir yüzdeyi geçtiğinde" texti listeden seçilir
#    * 5 saniye bekle
#    * "Tetikleme Nem Listesi" yazisi kontrol edilir
#    * "Tetikleme Nem Listesi" textine basilir
#    * 5 saniye bekle
#    * "10 %" yazisi kontrol edilir
#    * "15 %" yazisi kontrol edilir
#    * "20 %" yazisi kontrol edilir
#    * "25 %" yazisi kontrol edilir
#    * "30 %" texti listeden seçilir
#    * 5 saniye bekle
#    * "30 %" yazisi kontrol edilir
#    * "Bağıl nem belli bir yüzdeyi geçtiğinde" textine basilir
#    * 5 saniye bekle
#    * "Bağıl nem belli bir yüzdenin altına düştüğünde" texti listeden seçilir
#    * 5 saniye bekle
#    * "Tetikleme Nem Listesi" yazisi kontrol edilir
#    * "Tetikleme Nem Listesi" textine basilir
#    * 5 saniye bekle
#    * "10 %" yazisi kontrol edilir
#    * "15 %" yazisi kontrol edilir
#    * "20 %" yazisi kontrol edilir
#    * "25 %" yazisi kontrol edilir
#    * "10 %" texti listeden seçilir
#    * 5 saniye bekle
#    * "10 %" yazisi kontrol edilir
#    * "SONRAKİ" yazisi kontrol edilir
#
#  @Kurallar
#  Scenario: 016 Kurallar Gateway sıcaklık tetiklemesi ile lamba aç kuralının oluşturulması
#    * Uygulamaya "mobilotomasyon3@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
#    * 20 saniye bekle
#    * "KURALLAR" butonuna basilir
#    * 5 saniye bekle
#    * "KURAL EKLE" textine basilir
#    * "Cihaz" textine basilir
#    * "Tetikleyici Cihaz" textine basilir
#    * 5 saniye bekle
#    * "Gateway" textine basilir
#    * 5 saniye bekle
#    * "Tetikleyici Durum" textine basilir
#    * 5 saniye bekle
#    * "Sıcaklık belirli bir derecenin altına düştüğünde" texti listeden seçilir
#    * 5 saniye bekle
#    * "Tetikleme Sıcaklık Listesi" textine basilir
#    * 5 saniye bekle
#    * "3 C°" texti listeden seçilir
#    * "SONRAKİ" yazili buttona basilir
#    * 5 saniye bekle
#    * "Cihaz Seçin" textine basilir
#    * 5 saniye bekle
#    * "Lamba" textine basilir
#    * "Cihaz Sonucunu Seçin" textine basilir
#    * 5 saniye bekle
#    * "Açık" yazisi kontrol edilir
#    * "Kapalı" yazisi kontrol edilir
#    * "Açık" texti listeden seçilir
#    * "KAYDET" yazisi kontrol edilir
#    * "KAYDET" yazili buttona basilir
#    * "Sonuç 1: Lamba" yazisi kontrol edilir
#    * "Sonuç Ekle" yazisi kontrol edilir
#    * "SONRAKİ" yazili buttona basilir
#    * "Kayıt" textine basilir
#    * "Kuralınıza isim verin" yazisi kontrol edilir
#    * "Kural İsmi" yazisi kontrol edilir
#    * "Kuralı şimdi etkinleştirin" yazisi kontrol edilir
#    * Kural adi "Sıcaklık düşünce lamba aç" girilir
#    * "KAYDET" yazili buttona basilir
#    * 5 saniye bekle
#    * "Sıcaklık düşünce lamba aç kuralı oluşturuldu!" yazisi kontrol edilir
#    * "TAMAM" yazili buttona basilir
#    * 5 saniye bekle
#    * "Kurallar" yazisi kontrol edilir
#    * "1 AKTİF" yazisi kontrol edilir
#    * "1 KURAL" yazisi kontrol edilir
#    * "KURAL EKLE" yazisi kontrol edilir
#    * "Sıcaklık düşünce lamba aç" yazisi kontrol edilir
#    * "Gateway" yazisi kontrol edilir
#    * "Sıcaklık belirli bir derecenin altına düştüğünde" yazisi kontrol edilir
#    * Kural "1" için asagı ok tusuna basilir
#    * "Lamba" yazisi kontrol edilir
#    * "Açık" yazisi kontrol edilir
#    * Kural "1" için sil tusuna basilir
#    * 5 saniye bekle
#    * "Henüz kural oluşturmadınız." yazisi kontrol edilir
#    * "Bu bölümden, cihazlarınızın belirlediğiniz konum, zaman ve cihaz bazlı senaryolara göre çalışmasını sağlayabilirsiniz." yazisi kontrol edilir
#
#  @Kurallar
#  Scenario: 017 Kurallar Gateway nem tetiklemesi ile smartplug aç kuralının oluşturulması
#    * Uygulamaya "mobilotomasyon3@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
#    * 20 saniye bekle
#    * "KURALLAR" butonuna basilir
#    * 5 saniye bekle
#    * "KURAL EKLE" textine basilir
#    * "Cihaz" textine basilir
#    * "Tetikleyici Cihaz" textine basilir
#    * 5 saniye bekle
#    * "Gateway" textine basilir
#    * 5 saniye bekle
#    * "Tetikleyici Durum" textine basilir
#    * 5 saniye bekle
#    * "Bağıl nem belli bir yüzdeyi geçtiğinde" texti listeden seçilir
#    * 5 saniye bekle
#    * "Tetikleme Nem Listesi" textine basilir
#    * 5 saniye bekle
#    * "30 %" texti listeden seçilir
#    * "SONRAKİ" yazili buttona basilir
#    * 5 saniye bekle
#    * "Cihaz Seçin" textine basilir
#    * 5 saniye bekle
#    * "Priz" textine basilir
#    * "Cihaz Sonucunu Seçin" textine basilir
#    * 5 saniye bekle
#    * "Açık" yazisi kontrol edilir
#    * "Kapalı" yazisi kontrol edilir
#    * "Kapalı" texti listeden seçilir
#    * "KAYDET" yazisi kontrol edilir
#    * "KAYDET" yazili buttona basilir
#    * "Sonuç 1: Priz" yazisi kontrol edilir
#    * "Sonuç Ekle" yazisi kontrol edilir
#    * "SONRAKİ" yazili buttona basilir
#    * "Kayıt" textine basilir
#    * "Kuralınıza isim verin" yazisi kontrol edilir
#    * "Kural İsmi" yazisi kontrol edilir
#    * "Kuralı şimdi etkinleştirin" yazisi kontrol edilir
#    * Kural adi "Nem artıca priz kapa" girilir
#    * "KAYDET" yazili buttona basilir
#    * 5 saniye bekle
#    * "Nem artıca priz kapa kuralı oluşturuldu!" yazisi kontrol edilir
#    * "TAMAM" yazili buttona basilir
#    * 5 saniye bekle
#    * "Kurallar" yazisi kontrol edilir
#    * "1 AKTİF" yazisi kontrol edilir
#    * "1 KURAL" yazisi kontrol edilir
#    * "KURAL EKLE" yazisi kontrol edilir
#    * "Nem artıca priz kapa" yazisi kontrol edilir
#    * "Gateway" yazisi kontrol edilir
#    * "Bağıl nem belli bir yüzdeyi geçtiğinde" yazisi kontrol edilir
#    * Kural "1" için asagı ok tusuna basilir
#    * "Priz" yazisi kontrol edilir
#    * "Kapalı" yazisi kontrol edilir
#    * Kural "1" için sil tusuna basilir
#    * 5 saniye bekle
#    * "Henüz kural oluşturmadınız." yazisi kontrol edilir
#    * "Bu bölümden, cihazlarınızın belirlediğiniz konum, zaman ve cihaz bazlı senaryolara göre çalışmasını sağlayabilirsiniz." yazisi kontrol edilir
#
#  @Kurallar
#  Scenario: 018 Kurallar Gateway cihaz ekranından başlatılarak cihaz bazlı kural oluşturulması
#    * Uygulamaya "mobilotomasyon3@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
#    * 30 saniye bekle
#    * "Gateway" detayina gidilir
#    * 10 saniye bekle
#    * "KURAL EKLE" yazisi kontrol edilir
#    * 5 saniye bekle
#    * "KURAL EKLE" yazili buttona basilir
#    * 5 saniye bekle
#    * "Cihaz" textine basilir
#    * "Tetikleyici Cihaz" textine basilir
#    * 5 saniye bekle
#    * "Gateway" textine basilir
#    * 5 saniye bekle
#    * "Tetikleyici Durum" textine basilir
#    * 5 saniye bekle
#    * "Bağıl nem belli bir yüzdenin altına düştüğünde" texti listeden seçilir
#    * 5 saniye bekle
#    * "Tetikleme Nem Listesi" textine basilir
#    * 5 saniye bekle
#    * "10 %" texti listeden seçilir
#    * "SONRAKİ" yazili buttona basilir
#    * 5 saniye bekle
#    * "Cihaz Seçin" textine basilir
#    * 5 saniye bekle
#    * "Priz" textine basilir
#    * "Cihaz Sonucunu Seçin" textine basilir
#    * 5 saniye bekle
#    * "Açık" texti listeden seçilir
#    * "KAYDET" yazili buttona basilir
#    * "Sonuç 1: Priz" yazisi kontrol edilir
#    * "SONRAKİ" yazili buttona basilir
#    * "Kuralı şimdi etkinleştirin" yazisi kontrol edilir
#    * Kural adi "Nem düşünce priz aç" girilir
#    * "KAYDET" yazili buttona basilir
#    * 5 saniye bekle
#    * "Nem düşünce priz aç kuralı oluşturuldu!" yazisi kontrol edilir
#    * "TAMAM" yazili buttona basilir
#    * 5 saniye bekle
#    * "Gateway" yazisi kontrol edilir
#    * "Oturma Odası" yazisi kontrol edilir
#    * "CİHAZ YÖNETİMİ" yazisi kontrol edilir
#    * "CİHAZ GEÇMİŞİ" yazisi kontrol edilir
#    * "CİHAZA TANIMLI KURALLAR" yazisi kontrol edilir
#    #* "Bağıl nem belli bir yüzdenin altına düştüğ..." yazisi kontrol edilir
#    * "Nem düşünce priz aç" yazisi kontrol edilir
#    * "Nem düşünce priz aç" textine basilir
#    * 5 saniye bekle
#    * "1 AKTİF" yazisi kontrol edilir
#    * "1 KURAL" yazisi kontrol edilir
#    * "KURAL EKLE" yazisi kontrol edilir
#    * "Nem düşünce priz aç" yazisi kontrol edilir
#    #* "Bağıl nem belli bir yüzdenin altına düştüğ..." yazisi kontrol edilir
#    * "Priz" yazisi kontrol edilir
#    * "Açık" yazisi kontrol edilir
#    * "Sil" textine basilir
#    * 5 saniye bekle
#    * "Henüz kural oluşturmadınız." yazisi kontrol edilir
#    * "Bu bölümden, cihazlarınızın belirlediğiniz konum, zaman ve cihaz bazlı senaryolara göre çalışmasını sağlayabilirsiniz." yazisi kontrol edilir
#
#    @Kurallar
#    Scenario: XXX Kurallar cihaz bazlı kural için tetikleyici cihaz yok uyarısı
#      * Uygulamaya "yazilimtestonay@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
#      * 20 saniye bekle
#      * "KURALLAR" butonuna basilir
#      * 5 saniye bekle
#      * "KURAL EKLE" textine basilir
#      * 5 saniye bekle
#      * "Cihaz" textine basilir
#      * 5 saniye bekle
#      * "Bir kural için tetiklenebilecek bir uygulamanız yok." yazisi kontrol edilir
#      * "TAMAM" yazili buttona basilir
#      * 5 saniye bekle
#      * "Oluşturacağınız kuralın çeşidini belirleyiniz." yazisi kontrol edilir
#      * "Belirlediğiniz senaryoya göre cihazlara yönelik aksiyon alabiliriz." yazisi kontrol edilir
#      * "Konuma Bağlı" yazisi kontrol edilir
#      * "Cihaz" yazisi kontrol edilir
#      * "Zamanlama" yazisi kontrol edilir
#
#    @Kurallar
#    Scenario: 019 Kurallar zamanlama kuralı oluşturma ilk ekranının kontrolü
#    * Uygulamaya "mobilotomasyon3@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
#    * 20 saniye bekle
#    * "KURALLAR" butonuna basilir
#    * 5 saniye bekle
#    * "KURAL EKLE" textine basilir
#    * "Zamanlama" textine basilir
#    * "Gelişmiş Kural Oluştur" yazisi kontrol edilir
#    * "BAŞLAT" yazisi kontrol edilir
#    * "Sonuç" yazisi kontrol edilir
#    * "Kayıt" yazisi kontrol edilir
#    * "01" yazisi kontrol edilir
#    * "02" yazisi kontrol edilir
#    * "03" yazisi kontrol edilir
#    * "Kuralınızın ne zaman başlamasını istediğinizi seçin" yazisi kontrol edilir
#    * "BAŞLANGIÇ SAATİ" yazisi kontrol edilir
#    * "GÜN SEÇİMİ" yazisi kontrol edilir
#    * "SONRAKİ" yazisi kontrol edilir
#
#
#  @Kurallar
#  Scenario: 020 Kurallar zamanlama kuralı oluşturma ilk adımda iptal edilmenin kontrol edilmesi
#    * Uygulamaya "mobilotomasyon3@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
#    * 20 saniye bekle
#    * "KURALLAR" butonuna basilir
#    * 5 saniye bekle
#    * "KURAL EKLE" textine basilir
#    * "Zamanlama" textine basilir
#    * Kural başlangıç saati 3 saat ileri set edilir
#    * 5 saniye bekle
#    * Kural başlangıç saati 5 dakika ileri set edilir
#    * 5 saniye bekle
#    * Kural gününü "Fri" olarak ayarlanır
#    * 5 saniye bekle
#    * Kural gününü "Mon" olarak ayarlanır
#    * 5 saniye bekle
#    * Kural gününü "Sat" olarak ayarlanır
#    * 5 saniye bekle
#    * "SONRAKİ" yazisi kontrol edilir
#    * navigasyondan geri tusuna basilir
#    * "İptal etmek istiyor musunuz?" yazisi kontrol edilir
#    * "HAYIR" yazisi kontrol edilir
#    * "EVET" yazisi kontrol edilir
#    * "EVET" yazili buttona basilir
#    * Appbar "Kural Ekle" texti kontrol edilir
#    * "Oluşturacağınız kuralın çeşidini belirleyiniz." yazisi kontrol edilir
#    * "Belirlediğiniz senaryoya göre cihazlara yönelik aksiyon alabiliriz." yazisi kontrol edilir
#    * "Konuma Bağlı" yazisi kontrol edilir
#    * "Cihaz" yazisi kontrol edilir
#    * "Zamanlama" yazisi kontrol edilir
#
#  @Kurallar
#  Scenario: 021 Kurallar zamanlama kuralı ikinci adımda iptal edilmesinin kontrol edilmesi
#    * Uygulamaya "mobilotomasyon3@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
#    * 20 saniye bekle
#    * "KURALLAR" butonuna basilir
#    * 5 saniye bekle
#    * "KURAL EKLE" textine basilir
#    * "Zamanlama" textine basilir
#    * Kural başlangıç saati 1 saat ileri set edilir
#    * 5 saniye bekle
#    * Kural başlangıç saati 1 dakika ileri set edilir
#    * 5 saniye bekle
#    * Kural gününü "Thu" olarak ayarlanır
#    * 5 saniye bekle
#    * "SONRAKİ" yazisi kontrol edilir
#    * "SONRAKİ" yazili buttona basilir
#    * "Kuralınızın sonucunu belirleyin." yazisi kontrol edilir
#    * "Sonuç 1" yazisi kontrol edilir
#    * "Cihaz Seçin" yazisi kontrol edilir
#    * "Cihaz Seçin" textine basilir
#    * 5 saniye bekle
#    * "Lamba" textine basilir
#    * "Cihaz Sonucunu Seçin" textine basilir
#    * 5 saniye bekle
#    * "Açık" texti listeden seçilir
#    * "KAYDET" yazili buttona basilir
#    * "Sonuç 1: Lamba" yazisi kontrol edilir
#    * "Sonuç Ekle" yazisi kontrol edilir
#    * navigasyondan geri tusuna basilir
#    * 5 saniye bekle
#    * "İptal etmek istiyor musunuz?" yazisi kontrol edilir
#    * "HAYIR" yazisi kontrol edilir
#    * "EVET" yazisi kontrol edilir
#    * "EVET" yazili buttona basilir
#    * Appbar "Kural Ekle" texti kontrol edilir
#    * "Oluşturacağınız kuralın çeşidini belirleyiniz." yazisi kontrol edilir
#    * "Belirlediğiniz senaryoya göre cihazlara yönelik aksiyon alabiliriz." yazisi kontrol edilir
#    * "Konuma Bağlı" yazisi kontrol edilir
#    * "Cihaz" yazisi kontrol edilir
#    * "Zamanlama" yazisi kontrol edilir
#
#  @Kurallar
#  Scenario: 022 Kurallar zamanlama kuralı isim verme adımında iptal edilmesi
#    * Uygulamaya "mobilotomasyon3@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
#    * 20 saniye bekle
#    * "KURALLAR" butonuna basilir
#    * 5 saniye bekle
#    * "KURAL EKLE" textine basilir
#    * "Zamanlama" textine basilir
#    * Kural başlangıç saati 1 saat ileri set edilir
#    * 5 saniye bekle
#    * Kural başlangıç saati 2 dakika ileri set edilir
#    * 5 saniye bekle
#    * Kural gününü "Mon" olarak ayarlanır
#    * 5 saniye bekle
#    * Kural gününü "Tue" olarak ayarlanır
#    * 5 saniye bekle
#    * "SONRAKİ" yazisi kontrol edilir
#    * "SONRAKİ" yazili buttona basilir
#    * "Kuralınızın sonucunu belirleyin." yazisi kontrol edilir
#    * "Sonuç 1" yazisi kontrol edilir
#    * "Cihaz Seçin" yazisi kontrol edilir
#    * "Cihaz Seçin" textine basilir
#    * 5 saniye bekle
#    * "Priz" textine basilir
#    * "Cihaz Sonucunu Seçin" textine basilir
#    * 5 saniye bekle
#    * "Açık" texti listeden seçilir
#    * "KAYDET" yazili buttona basilir
#    * "Sonuç 1: Priz" yazisi kontrol edilir
#    * "Sonuç Ekle" yazisi kontrol edilir
#    * "SONRAKİ" yazili buttona basilir
#    * "Kuralı şimdi etkinleştirin" yazisi kontrol edilir
#    * Kural adi "İptal edilecek kural" girilir
#    * navigasyondan geri tusuna basilir
#    * 5 saniye bekle
#    * "İptal etmek istiyor musunuz?" yazisi kontrol edilir
#    * "HAYIR" yazisi kontrol edilir
#    * "EVET" yazisi kontrol edilir
#    * "EVET" yazili buttona basilir
#    * Appbar "Kural Ekle" texti kontrol edilir
#    * "Oluşturacağınız kuralın çeşidini belirleyiniz." yazisi kontrol edilir
#    * "Belirlediğiniz senaryoya göre cihazlara yönelik aksiyon alabiliriz." yazisi kontrol edilir
#    * "Konuma Bağlı" yazisi kontrol edilir
#    * "Cihaz" yazisi kontrol edilir
#    * "Zamanlama" yazisi kontrol edilir
#
#  @Kurallar
#  Scenario: 023 Kurallar zamanlama kuralı oluşturmanın kontrol edilmesi
#    * Uygulamaya "mobilotomasyon3@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
#    * 20 saniye bekle
#    * "KURALLAR" butonuna basilir
#    * 5 saniye bekle
#    * "KURAL EKLE" textine basilir
#    * "Zamanlama" textine basilir
#    * Kural başlangıç saati 1 saat ileri set edilir
#    * 5 saniye bekle
#    * Kural başlangıç saati 2 dakika ileri set edilir
#    * 5 saniye bekle
#    * Kural gününü "Mon" olarak ayarlanır
#    * 5 saniye bekle
#    * Kural gününü "Tue" olarak ayarlanır
#    * 5 saniye bekle
#    * "SONRAKİ" yazisi kontrol edilir
#    * "SONRAKİ" yazili buttona basilir
#    * "Kuralınızın sonucunu belirleyin." yazisi kontrol edilir
#    * "Sonuç 1" yazisi kontrol edilir
#    * "Cihaz Seçin" yazisi kontrol edilir
#    * "Cihaz Seçin" textine basilir
#    * 5 saniye bekle
#    * "Priz" textine basilir
#    * "Cihaz Sonucunu Seçin" textine basilir
#    * 5 saniye bekle
#    * "Açık" texti listeden seçilir
#    * "KAYDET" yazili buttona basilir
#    * "Sonuç 1: Priz" yazisi kontrol edilir
#    * "Sonuç Ekle" yazisi kontrol edilir
#    * "SONRAKİ" yazili buttona basilir
#    * "Kuralı şimdi etkinleştirin" yazisi kontrol edilir
#    * Kural adi "Zaman Gelince Priz Aç" girilir
#    * "KAYDET" yazili buttona basilir
#    * 5 saniye bekle
#    * "Zaman Gelince Priz Aç kuralı oluşturuldu!" yazisi kontrol edilir
#    * "TAMAM" yazili buttona basilir
#    * 5 saniye bekle
#    * "Kurallar" yazisi kontrol edilir
#    * "1 AKTİF" yazisi kontrol edilir
#    * "1 KURAL" yazisi kontrol edilir
#    * "KURAL EKLE" yazisi kontrol edilir
#    * "Zaman Gelince Priz Aç" yazisi kontrol edilir
#    * "Zaman Bazlı" yazisi kontrol edilir
#    * Kural "1" için asagı ok tusuna basilir
#    * "Priz" yazisi kontrol edilir
#    * "Açık" yazisi kontrol edilir
#    * Kural "1" için sil tusuna basilir
#    * 5 saniye bekle
#    * "Henüz kural oluşturmadınız." yazisi kontrol edilir
#    * "Bu bölümden, cihazlarınızın belirlediğiniz konum, zaman ve cihaz bazlı senaryolara göre çalışmasını sağlayabilirsiniz." yazisi kontrol edilir
#
#  @Kurallar
#  Scenario: 024 Kurallar Apollo Pro D7S için zamanlama kuralı oluşturmanın kontrol edilmesi
#    * Uygulamaya "hayri.odabas@arcelik.com" mail hesabiyla ve "12345678" sifresiyle login olunur
#    * 20 saniye bekle
#    * "KURALLAR" butonuna basilir
#    * 5 saniye bekle
#    * "KURAL EKLE" textine basilir
#    * "Zamanlama" textine basilir
#    * Kural başlangıç saati 2 saat ileri set edilir
#    * 5 saniye bekle
#    * Kural başlangıç saati 1 dakika ileri set edilir
#    * 5 saniye bekle
#    * Kural gününü "Mon" olarak ayarlanır
#    * 5 saniye bekle
#    * "SONRAKİ" yazili buttona basilir
#    * "Kuralınızın sonucunu belirleyin." yazisi kontrol edilir
#    * "Sonuç 1" yazisi kontrol edilir
#    * "Cihaz Seçin" yazisi kontrol edilir
#    * "Cihaz Seçin" textine basilir
#    * 5 saniye bekle
#    * "Apollo Pro D7S" textine basilir
#    * "Cihaz Sonucunu Seçin" textine basilir
#    * 5 saniye bekle
#    * "Açık" yazisi kontrol edilir
#    * "Kapalı" yazisi kontrol edilir
#    * "Açık" texti listeden seçilir
#    * "KAYDET" yazili buttona basilir
#    * "Sonuç 1: Apollo Pro D7S" yazisi kontrol edilir
#    * "Sonuç Ekle" yazisi kontrol edilir
#    * "SONRAKİ" yazili buttona basilir
#    * "Kuralı şimdi etkinleştirin" yazisi kontrol edilir
#    * Kural adi "Apollo Aç" girilir
#    * "KAYDET" yazili buttona basilir
#    * 5 saniye bekle
#    * "Apollo Aç kuralı oluşturuldu!" yazisi kontrol edilir
#    * "TAMAM" yazili buttona basilir
#    * 5 saniye bekle
#    * "Kurallar" yazisi kontrol edilir
#    * "1 AKTİF" yazisi kontrol edilir
#    * "1 KURAL" yazisi kontrol edilir
#    * "KURAL EKLE" yazisi kontrol edilir
#    * "Apollo Aç" yazisi kontrol edilir
#    * "Zaman Bazlı" yazisi kontrol edilir
#    * Kural "1" için asagı ok tusuna basilir
#    * "Apollo Pro D7S" yazisi kontrol edilir
#    * "Açık" yazisi kontrol edilir
#    * Cihazlar ikonuna basilir
#    * 5 saniye bekle
#    * "Apollo Pro D7S" detayina gidilir
#    * 5 saniye bekle
#    * "Apollo Aç" yazisi kontrol edilir
#    * "Zaman Bazlı" yazisi kontrol edilir
#    * "Apollo Aç" textine basilir
#    * 5 saniye bekle
#    * "1 AKTİF" yazisi kontrol edilir
#    * "1 KURAL" yazisi kontrol edilir
#    * "KURAL EKLE" yazisi kontrol edilir
#    * "Apollo Aç" yazisi kontrol edilir
#    * "Zaman Bazlı" yazisi kontrol edilir
#    * "Apollo Pro D7S" yazisi kontrol edilir
#    * "Açık" yazisi kontrol edilir
#    * "Sil" textine basilir
#    * 5 saniye bekle
#    * "Henüz kural oluşturmadınız." yazisi kontrol edilir
#    * "Bu bölümden, cihazlarınızın belirlediğiniz konum, zaman ve cihaz bazlı senaryolara göre çalışmasını sağlayabilirsiniz." yazisi kontrol edilir
#
#  @Kurallar
#  Scenario: 025 Kurallar Rapple Fırın için zamanlama kuralı oluşturmanın kontrol edilmesi
#    * Uygulamaya "hayri.odabas@arcelik.com" mail hesabiyla ve "12345678" sifresiyle login olunur
#    * 20 saniye bekle
#    * "KURALLAR" butonuna basilir
#    * 5 saniye bekle
#    * "KURAL EKLE" textine basilir
#    * "Zamanlama" textine basilir
#    * Kural başlangıç saati 1 saat ileri set edilir
#    * 5 saniye bekle
#    * Kural başlangıç saati 3 dakika ileri set edilir
#    * 5 saniye bekle
#    * Kural gününü "Sun" olarak ayarlanır
#    * 5 saniye bekle
#    * "SONRAKİ" yazili buttona basilir
#    * "Kuralınızın sonucunu belirleyin." yazisi kontrol edilir
#    * "Sonuç 1" yazisi kontrol edilir
#    * "Cihaz Seçin" yazisi kontrol edilir
#    * "Cihaz Seçin" textine basilir
#    * 5 saniye bekle
#    * "Rapple Firin" textine basilir
#    * "Cihaz Sonucunu Seçin" textine basilir
#    * 5 saniye bekle
#    * "Açık" yazisi kontrol edilir
#    * "Kapalı" yazisi kontrol edilir
#    * "Açık" texti listeden seçilir
#    * "KAYDET" yazili buttona basilir
#    * "Sonuç 1: Rapple Firin" yazisi kontrol edilir
#    * "Sonuç Ekle" yazisi kontrol edilir
#    * "SONRAKİ" yazili buttona basilir
#    * "Kuralı şimdi etkinleştirin" yazisi kontrol edilir
#    * Kural adi "Fırınımı Aç" girilir
#    * "KAYDET" yazili buttona basilir
#    * 5 saniye bekle
#    * "Fırınımı Aç kuralı oluşturuldu!" yazisi kontrol edilir
#    * "TAMAM" yazili buttona basilir
#    * 5 saniye bekle
#    * "Kurallar" yazisi kontrol edilir
#    * "1 AKTİF" yazisi kontrol edilir
#    * "1 KURAL" yazisi kontrol edilir
#    * "KURAL EKLE" yazisi kontrol edilir
#    * "Fırınımı Aç" yazisi kontrol edilir
#    * "Zaman Bazlı" yazisi kontrol edilir
#    * Kural "1" için asagı ok tusuna basilir
#    * "Rapple Firin" yazisi kontrol edilir
#    * "Açık" yazisi kontrol edilir
#    * Cihazlar ikonuna basilir
#    * 5 saniye bekle
#    * "Rapple Firin" detayina gidilir
#    * 5 saniye bekle
#    * "Fırınımı Aç" yazisi kontrol edilir
#    * "Zaman Bazlı" yazisi kontrol edilir
#    * "Fırınımı Aç" textine basilir
#    * 5 saniye bekle
#    * "1 AKTİF" yazisi kontrol edilir
#    * "1 KURAL" yazisi kontrol edilir
#    * "KURAL EKLE" yazisi kontrol edilir
#    * "Fırınımı Aç" yazisi kontrol edilir
#    * "Zaman Bazlı" yazisi kontrol edilir
#    * "Rapple Firin" yazisi kontrol edilir
#    * "Açık" yazisi kontrol edilir
#    * "Sil" textine basilir
#    * 5 saniye bekle
#    * "Henüz kural oluşturmadınız." yazisi kontrol edilir
#    * "Bu bölümden, cihazlarınızın belirlediğiniz konum, zaman ve cihaz bazlı senaryolara göre çalışmasını sağlayabilirsiniz." yazisi kontrol edilir
#
#  @Kurallar
#  Scenario: 026 Kurallar E8L BM için zamanlama kuralı oluşturmanın kontrol edilmesi
#    * Uygulamaya "yazilimtestonay@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
#    * 20 saniye bekle
#    * "KURALLAR" butonuna basilir
#    * 5 saniye bekle
#    * "KURAL EKLE" textine basilir
#    * "Zamanlama" textine basilir
#    * Kural başlangıç saati 1 saat ileri set edilir
#    * 5 saniye bekle
#    * Kural başlangıç saati 1 dakika ileri set edilir
#    * 5 saniye bekle
#    * Kural gününü "Sat" olarak ayarlanır
#    * Kural gününü "Mon" olarak ayarlanır
#    * 5 saniye bekle
#    * "SONRAKİ" yazili buttona basilir
#    * "Kuralınızın sonucunu belirleyin." yazisi kontrol edilir
#    * "Sonuç 1" yazisi kontrol edilir
#    * "Cihaz Seçin" yazisi kontrol edilir
#    * "Cihaz Seçin" textine basilir
#    * 5 saniye bekle
#    * "E8L BM" textine basilir
#    * "Cihaz Sonucunu Seçin" textine basilir
#    * 5 saniye bekle
#    * "Açık" yazisi kontrol edilir
#    * "Kapalı" yazisi kontrol edilir
#    * "Açık" texti listeden seçilir
#    * "KAYDET" yazili buttona basilir
#    * "Sonuç 1: E8L BM" yazisi kontrol edilir
#    * "Sonuç Ekle" yazisi kontrol edilir
#    * "SONRAKİ" yazili buttona basilir
#    * "Kuralı şimdi etkinleştirin" yazisi kontrol edilir
#    * Kural adi "Bulaşık Makinemi Aç" girilir
#    * "KAYDET" yazili buttona basilir
#    * 5 saniye bekle
#    * "Bulaşık Makinemi Aç kuralı oluşturuldu!" yazisi kontrol edilir
#    * "TAMAM" yazili buttona basilir
#    * 5 saniye bekle
#    * "Kurallar" yazisi kontrol edilir
#    * "1 AKTİF" yazisi kontrol edilir
#    * "1 KURAL" yazisi kontrol edilir
#    * "KURAL EKLE" yazisi kontrol edilir
#    * "Bulaşık Makinemi Aç" yazisi kontrol edilir
#    * "Zaman Bazlı" yazisi kontrol edilir
#    * Kural "1" için asagı ok tusuna basilir
#    * "E8L BM" yazisi kontrol edilir
#    * "Açık" yazisi kontrol edilir
#    * Cihazlar ikonuna basilir
#    * 5 saniye bekle
#    * "E8L BM" detayina gidilir
#    * "Bulaşık Makinemi Aç" yazisi kontrol edilir
#    * "Zaman Bazlı" yazisi kontrol edilir
#    * "Bulaşık Makinemi Aç" textine basilir
#    * 5 saniye bekle
#    * "1 AKTİF" yazisi kontrol edilir
#    * "1 KURAL" yazisi kontrol edilir
#    * "KURAL EKLE" yazisi kontrol edilir
#    * "Bulaşık Makinemi Aç" yazisi kontrol edilir
#    * "Zaman Bazlı" yazisi kontrol edilir
#    * "E8L BM" yazisi kontrol edilir
#    * "Açık" yazisi kontrol edilir
#    * "Sil" textine basilir
#    * 5 saniye bekle
#    * "Henüz kural oluşturmadınız." yazisi kontrol edilir
#    * "Bu bölümden, cihazlarınızın belirlediğiniz konum, zaman ve cihaz bazlı senaryolara göre çalışmasını sağlayabilirsiniz." yazisi kontrol edilir
#
#  @Kurallar
#  Scenario: 027 Kurallar Posi Klima için zamanlama kuralı oluşturmanın kontrol edilmesi
#    * Uygulamaya "yazilimtestonay@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
#    * 20 saniye bekle
#    * "KURALLAR" butonuna basilir
#    * 5 saniye bekle
#    * "KURAL EKLE" textine basilir
#    * "Zamanlama" textine basilir
#    * Kural başlangıç saati 1 saat ileri set edilir
#    * 5 saniye bekle
#    * Kural başlangıç saati 1 dakika ileri set edilir
#    * 5 saniye bekle
#    * Kural gününü "Tue" olarak ayarlanır
#    * Kural gününü "Wen" olarak ayarlanır
#    * 5 saniye bekle
#    * "SONRAKİ" yazili buttona basilir
#    * "Kuralınızın sonucunu belirleyin." yazisi kontrol edilir
#    * "Sonuç 1" yazisi kontrol edilir
#    * "Cihaz Seçin" yazisi kontrol edilir
#    * "Cihaz Seçin" textine basilir
#    * 5 saniye bekle
#    * "Posi Klima" textine basilir
#    * "Cihaz Sonucunu Seçin" textine basilir
#    * 5 saniye bekle
#    * "Açık" yazisi kontrol edilir
#    * "Kapalı" yazisi kontrol edilir
#    * "Açık" texti listeden seçilir
#    * "KAYDET" yazili buttona basilir
#    * "Sonuç 1: Posi Klima" yazisi kontrol edilir
#    * "Sonuç Ekle" yazisi kontrol edilir
#    * "SONRAKİ" yazili buttona basilir
#    * "Kuralı şimdi etkinleştirin" yazisi kontrol edilir
#    * Kural adi "Klimamı Aç" girilir
#    * "KAYDET" yazili buttona basilir
#    * 5 saniye bekle
#    * "Klimamı Aç kuralı oluşturuldu!" yazisi kontrol edilir
#    * "TAMAM" yazili buttona basilir
#    * 5 saniye bekle
#    * "Kurallar" yazisi kontrol edilir
#    * "1 AKTİF" yazisi kontrol edilir
#    * "1 KURAL" yazisi kontrol edilir
#    * "KURAL EKLE" yazisi kontrol edilir
#    * "Klimamı Aç" yazisi kontrol edilir
#    * "Zaman Bazlı" yazisi kontrol edilir
#    * Kural "1" için asagı ok tusuna basilir
#    * "Posi Klima" yazisi kontrol edilir
#    * "Açık" yazisi kontrol edilir
#    * Cihazlar ikonuna basilir
#    * 5 saniye bekle
#    * "Posi Klima" detayina gidilir
#    * "Klimamı Aç" yazisi kontrol edilir
#    * "Zaman Bazlı" yazisi kontrol edilir
#    * "Klimamı Aç" textine basilir
#    * 5 saniye bekle
#    * "1 AKTİF" yazisi kontrol edilir
#    * "1 KURAL" yazisi kontrol edilir
#    * "KURAL EKLE" yazisi kontrol edilir
#    * "Klimamı Aç" yazisi kontrol edilir
#    * "Zaman Bazlı" yazisi kontrol edilir
#    * "Posi Klima" yazisi kontrol edilir
#    * "Açık" yazisi kontrol edilir
#    * "Sil" textine basilir
#    * 5 saniye bekle
#    * "Henüz kural oluşturmadınız." yazisi kontrol edilir
#    * "Bu bölümden, cihazlarınızın belirlediğiniz konum, zaman ve cihaz bazlı senaryolara göre çalışmasını sağlayabilirsiniz." yazisi kontrol edilir
#
#  @Kurallar
#  Scenario: 028 Kurallar Lokasyon kuralı oluşturma birinci adım kontrolü
#    * Uygulamaya "yazilimtestonay@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
#    * 20 saniye bekle
#    * "KURALLAR" butonuna basilir
#    * 5 saniye bekle
#    * "KURAL EKLE" textine basilir
#    * "Konuma Bağlı" textine basilir
#    * 10 saniye bekle
#    * Lokasyon izin bilgilendirme metni var ise onayla
#    * 5 saniye bekle
#    * "Gelişmiş Kural Oluştur" yazisi kontrol edilir
#    * "BAŞLAT" yazisi kontrol edilir
#    * "Sonuç" yazisi kontrol edilir
#    * "Kayıt" yazisi kontrol edilir
#    * "01" yazisi kontrol edilir
#    * "02" yazisi kontrol edilir
#    * "03" yazisi kontrol edilir
#    * "Kuralınızın ne zaman başlamasını istediğinizi seçin" yazisi kontrol edilir
#    * "Şifa, Arçelik Fbr., 34950 Tuzla/İstanbul, Türkiye, 1000 metre mesafesinde" yazisi kontrol edilir
#    * "Düzenle" yazisi kontrol edilir
#    * "Tetikleyici Durum" yazisi kontrol edilir
#    * "SONRAKİ" yazisi kontrol edilir
#
#  @Kurallar
#  Scenario: 029 Kurallar zamanlama kuralı oluşturma ilk adımda iptal edilmenin kontrol edilmesi
#    * Uygulamaya "mobilotomasyon3@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
#    * 20 saniye bekle
#    * "KURALLAR" butonuna basilir
#    * 5 saniye bekle
#    * "KURAL EKLE" textine basilir
#    * "Konuma Bağlı" textine basilir
#    * 10 saniye bekle
#    * Lokasyon izin bilgilendirme metni var ise onayla
#    * 5 saniye bekle
#    * navigasyondan geri tusuna basilir
#    * "İptal etmek istiyor musunuz?" yazisi kontrol edilir
#    * "HAYIR" yazisi kontrol edilir
#    * "EVET" yazisi kontrol edilir
#    * "EVET" yazili buttona basilir
#    * Appbar "Kural Ekle" texti kontrol edilir
#    * "Oluşturacağınız kuralın çeşidini belirleyiniz." yazisi kontrol edilir
#    * "Belirlediğiniz senaryoya göre cihazlara yönelik aksiyon alabiliriz." yazisi kontrol edilir
#    * "Konuma Bağlı" yazisi kontrol edilir
#    * "Cihaz" yazisi kontrol edilir
#    * "Zamanlama" yazisi kontrol edilir
#
#  @Kurallar
#  Scenario: 030 Kurallar lokasyon kuralı ikinci adımda iptal edilmesinin kontrol edilmesi
#    * Uygulamaya "mobilotomasyon3@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
#    * 20 saniye bekle
#    * "KURALLAR" butonuna basilir
#    * 5 saniye bekle
#    * "KURAL EKLE" textine basilir
#    * "Konuma Bağlı" textine basilir
#    * 10 saniye bekle
#    * Lokasyon izin bilgilendirme metni var ise onayla
#    * 5 saniye bekle
#    * "Tetikleyici Durum" textine basilir
#    * 5 saniye bekle
#    * "Eve girdiğimde" yazisi kontrol edilir
#    * "Evden ayrıldığımda" yazisi kontrol edilir
#    * "Eve girdiğimde" texti listeden seçilir
#    * "SONRAKİ" yazisi kontrol edilir
#    * 5 saniye bekle
#    * "SONRAKİ" yazili buttona basilir
#    * "Kuralınızın sonucunu belirleyin." yazisi kontrol edilir
#    * "Sonuç 1" yazisi kontrol edilir
#    * "Cihaz Seçin" yazisi kontrol edilir
#    * "Cihaz Seçin" textine basilir
#    * 5 saniye bekle
#    * "Lamba" textine basilir
#    * "Cihaz Sonucunu Seçin" textine basilir
#    * 5 saniye bekle
#    * "Açık" texti listeden seçilir
#    * "KAYDET" yazili buttona basilir
#    * "Sonuç 1: Lamba" yazisi kontrol edilir
#    * "Sonuç Ekle" yazisi kontrol edilir
#    * navigasyondan geri tusuna basilir
#    * 5 saniye bekle
#    * "İptal etmek istiyor musunuz?" yazisi kontrol edilir
#    * "HAYIR" yazisi kontrol edilir
#    * "EVET" yazisi kontrol edilir
#    * "EVET" yazili buttona basilir
#    * Appbar "Kural Ekle" texti kontrol edilir
#    * "Oluşturacağınız kuralın çeşidini belirleyiniz." yazisi kontrol edilir
#    * "Belirlediğiniz senaryoya göre cihazlara yönelik aksiyon alabiliriz." yazisi kontrol edilir
#    * "Konuma Bağlı" yazisi kontrol edilir
#    * "Cihaz" yazisi kontrol edilir
#    * "Zamanlama" yazisi kontrol edilir
#
#  @Kurallar
#  Scenario: 031 Kurallar lokasyon kuralı isim verme adımında iptal edilmesi
#    * Uygulamaya "mobilotomasyon3@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
#    * 20 saniye bekle
#    * "KURALLAR" butonuna basilir
#    * 5 saniye bekle
#    * "KURAL EKLE" textine basilir
#    * "Konuma Bağlı" textine basilir
#    * 10 saniye bekle
#    * Lokasyon izin bilgilendirme metni var ise onayla
#    * 5 saniye bekle
#    * "Tetikleyici Durum" textine basilir
#    * 5 saniye bekle
#    * "Eve girdiğimde" yazisi kontrol edilir
#    * "Evden ayrıldığımda" yazisi kontrol edilir
#    * "Evden ayrıldığımda" texti listeden seçilir
#    * "SONRAKİ" yazisi kontrol edilir
#    * 5 saniye bekle
#    * "SONRAKİ" yazili buttona basilir
#    * "Kuralınızın sonucunu belirleyin." yazisi kontrol edilir
#    * "Sonuç 1" yazisi kontrol edilir
#    * "Cihaz Seçin" yazisi kontrol edilir
#    * "Cihaz Seçin" textine basilir
#    * 5 saniye bekle
#    * "Priz" textine basilir
#    * "Cihaz Sonucunu Seçin" textine basilir
#    * 5 saniye bekle
#    * "Açık" texti listeden seçilir
#    * "KAYDET" yazili buttona basilir
#    * "Sonuç 1: Priz" yazisi kontrol edilir
#    * "Sonuç Ekle" yazisi kontrol edilir
#    * "SONRAKİ" yazili buttona basilir
#    * "Kuralı şimdi etkinleştirin" yazisi kontrol edilir
#    * Kural adi "İptal edilecek kural" girilir
#    * navigasyondan geri tusuna basilir
#    * 5 saniye bekle
#    * "İptal etmek istiyor musunuz?" yazisi kontrol edilir
#    * "HAYIR" yazisi kontrol edilir
#    * "EVET" yazisi kontrol edilir
#    * "EVET" yazili buttona basilir
#    * Appbar "Kural Ekle" texti kontrol edilir
#    * "Oluşturacağınız kuralın çeşidini belirleyiniz." yazisi kontrol edilir
#    * "Belirlediğiniz senaryoya göre cihazlara yönelik aksiyon alabiliriz." yazisi kontrol edilir
#    * "Konuma Bağlı" yazisi kontrol edilir
#    * "Cihaz" yazisi kontrol edilir
#    * "Zamanlama" yazisi kontrol edilir
#
#  @Kurallar
#  Scenario: 032 Kurallar lokasyon kuralı oluşturmanın kontrol edilmesi
#    * Uygulamaya "mobilotomasyon3@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
#    * 20 saniye bekle
#    * "KURALLAR" butonuna basilir
#    * 5 saniye bekle
#    * "KURAL EKLE" textine basilir
#    * "Konuma Bağlı" textine basilir
#    * 10 saniye bekle
#    * Lokasyon izin bilgilendirme metni var ise onayla
#    * 5 saniye bekle
#    * "Tetikleyici Durum" textine basilir
#    * 5 saniye bekle
#    * "Eve girdiğimde" yazisi kontrol edilir
#    * "Evden ayrıldığımda" yazisi kontrol edilir
#    * "Evden ayrıldığımda" texti listeden seçilir
#    * "SONRAKİ" yazisi kontrol edilir
#    * 5 saniye bekle
#    * "SONRAKİ" yazili buttona basilir
#    * "Kuralınızın sonucunu belirleyin." yazisi kontrol edilir
#    * "Sonuç 1" yazisi kontrol edilir
#    * "Cihaz Seçin" yazisi kontrol edilir
#    * "Cihaz Seçin" textine basilir
#    * 5 saniye bekle
#    * "Priz" textine basilir
#    * "Cihaz Sonucunu Seçin" textine basilir
#    * 5 saniye bekle
#    * "Açık" texti listeden seçilir
#    * "KAYDET" yazili buttona basilir
#    * "Sonuç 1: Priz" yazisi kontrol edilir
#    * "Sonuç Ekle" yazisi kontrol edilir
#    * "SONRAKİ" yazili buttona basilir
#    * "Kuralı şimdi etkinleştirin" yazisi kontrol edilir
#    * Kural adi "Evden Ayrıldıgımda Priz Aç" girilir
#    * "KAYDET" yazili buttona basilir
#    * 5 saniye bekle
#    * "Evden Ayrıldıgımda Priz Aç kuralı oluşturuldu!" yazisi kontrol edilir
#    * "TAMAM" yazili buttona basilir
#    * 5 saniye bekle
#    * "Kurallar" yazisi kontrol edilir
#    * "1 AKTİF" yazisi kontrol edilir
#    * "1 KURAL" yazisi kontrol edilir
#    * "KURAL EKLE" yazisi kontrol edilir
#    * "Evden Ayrıldıgımda Priz Aç" yazisi kontrol edilir
#    * "Konum Bazlı" yazisi kontrol edilir
#    * "Evden ayrıldığımda" yazisi kontrol edilir
#    * Kural "1" için asagı ok tusuna basilir
#    * "Priz" yazisi kontrol edilir
#    * "Açık" yazisi kontrol edilir
#    * Kural "1" için sil tusuna basilir
#    * 5 saniye bekle
#    * "Henüz kural oluşturmadınız." yazisi kontrol edilir
#    * "Bu bölümden, cihazlarınızın belirlediğiniz konum, zaman ve cihaz bazlı senaryolara göre çalışmasını sağlayabilirsiniz." yazisi kontrol edilir
#
#  @Kurallar
#  Scenario Outline:033-041 Tum urunler için lokasyon kuralı olusturulması kontrolu
#    * Uygulamaya "<usr>" mail hesabiyla ve "<pwd>" sifresiyle login olunur
#    * 20 saniye bekle
#    * "KURALLAR" butonuna basilir
#    * 5 saniye bekle
#    * "KURAL EKLE" textine basilir
#    * "Konuma Bağlı" textine basilir
#    * 10 saniye bekle
#    * Lokasyon izin bilgilendirme metni var ise onayla
#    * 5 saniye bekle
#    * "Tetikleyici Durum" textine basilir
#    * 5 saniye bekle
#    * "Eve girdiğimde" yazisi kontrol edilir
#    * "Evden ayrıldığımda" yazisi kontrol edilir
#    * "<trigger>" texti listeden seçilir
#    * "SONRAKİ" yazisi kontrol edilir
#    * 5 saniye bekle
#    * "SONRAKİ" yazili buttona basilir
#    * "Kuralınızın sonucunu belirleyin." yazisi kontrol edilir
#    * "Sonuç 1" yazisi kontrol edilir
#    * "Cihaz Seçin" yazisi kontrol edilir
#    * "Cihaz Seçin" textine basilir
#    * 5 saniye bekle
#    * "<device>" textine basilir
#    * "Cihaz Sonucunu Seçin" textine basilir
#    * 5 saniye bekle
#    * "<result>" texti listeden seçilir
#    * "KAYDET" yazili buttona basilir
#    * "<res_text>" yazisi kontrol edilir
#    * "Sonuç Ekle" yazisi kontrol edilir
#    * "SONRAKİ" yazili buttona basilir
#    * "Kuralı şimdi etkinleştirin" yazisi kontrol edilir
#    * Kural adi "<rule_name>" girilir
#    * "KAYDET" yazili buttona basilir
#    * 5 saniye bekle
#    #* "Evden Ayrıldıgımda Priz Aç kuralı oluşturuldu!" yazisi kontrol edilir
#    * "TAMAM" yazili buttona basilir
#    * 5 saniye bekle
#    * "Kurallar" yazisi kontrol edilir
#    * "1 AKTİF" yazisi kontrol edilir
#    * "1 KURAL" yazisi kontrol edilir
#    * "KURAL EKLE" yazisi kontrol edilir
#    * "<rule_name>" yazisi kontrol edilir
#    * "Konum Bazlı" yazisi kontrol edilir
#    * "<trig_text>" yazisi kontrol edilir
#    * Kural "1" için asagı ok tusuna basilir
#    * "<device>" yazisi kontrol edilir
#    * "<result>" yazisi kontrol edilir
#    * Kural "1" için sil tusuna basilir
#    * 5 saniye bekle
#    * "Henüz kural oluşturmadınız." yazisi kontrol edilir
#    * "Bu bölümden, cihazlarınızın belirlediğiniz konum, zaman ve cihaz bazlı senaryolara göre çalışmasını sağlayabilirsiniz." yazisi kontrol edilir
#
#    Examples:
#    | usr                       | pwd       | trigger               | device        | result        | res_text                 | rule_name                        | trig_text           |
#    |mobilotomasyon3@gmail.com  | 12345678  | Eve girdiğimde        | Priz          | Açık          |Sonuç 1: Priz             |Evden Ayrıldıgımda Priz Aç        | Eve yaklaştığımda   |
#    |mobilotomasyon3@gmail.com  | 12345678  | Evden ayrıldığımda    | Lamba         | Kapalı        |Sonuç 1: Lamba            |Evden Ayrıldıgımda Lamba Kapa     | Evden ayrıldığımda  |
#    |yazilimtestonay@gmail.com  | 12345678  | Eve girdiğimde        | Posi Klima    | Açık          |Sonuç 1: Posi Klima       |Klimayı aç                        | Eve yaklaştığımda   |
#    |yazilimtestonay@gmail.com  | 12345678  | Evden ayrıldığımda    | E8L BM        | Açık          |Sonuç 1: E8L BM           |BM aç                             | Evden ayrıldığımda  |
#    |yazilimtestonay@gmail.com  | 12345678  | Eve girdiğimde        | CM Digital Pro| Kapalı        |Sonuç 1: CM Digital Pro   |Digital kapa                      | Eve yaklaştığımda   |
#    |hayri.odabas@arcelik.com   | 12345678  | Eve girdiğimde        | Apollo Pro D7S| Açık          |Sonuç 1: Apollo Pro D7S   |Kurutucu açık                     | Eve yaklaştığımda   |
#    |hayri.odabas@arcelik.com   | 12345678  | Evden ayrıldığımda    | Rapple Firin  | Kapalı        |Sonuç 1: Rapple Firin     |Fırın_kapalı                      | Evden ayrıldığımda  |
#    |mobilotomasyon1@gmail.com  | 12345678  | Evden ayrıldığımda    | Vega Leisure  | Kapalı        |Sonuç 1: Vega Leisure     |Firin kapa                        | Evden ayrıldığımda  |
#
#    #|mobilotomasyon2@gmail.com  | 12345678  | Eve girdiğimde        | Co2           | Uyku modunu aç|Sonuç 1: Co2              |co2 aç                            | Eve yaklaştığımda   |
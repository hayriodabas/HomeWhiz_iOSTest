@TumSenaryolar
Feature: Kurallar
  Author: Hayri Odabaş
  Date: 2022

  @Kurallar
  Scenario: 001 Kurallar Kurallar ekran bilgilerinin kontrol edilmesi
    * Uygulama resetlenir
    * Logout yapilir
    * Uygulamaya "mobilotomasyon2@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    * Uygulama resetlenir
    * "Oturma Odası" yazisi kontrol edilir
    * "KURALLAR" butonuna basilir
    * "KURALLAR" yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "Kural bulunamadı" yazisi icerdigi kontrol edilir

  @Kurallar
  Scenario: 002 Kurallar Kural ekle ekranı bilgilerinin kontrol edilmesi
    * Uygulama resetlenir
    * "KURALLAR" butonuna basilir
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

  @Kurallar
  Scenario: 004 Kurallar cihaz bazlı kural oluşturma ilk adımda iptal edilmesi
    * Uygulama resetlenir
    * "KURALLAR" butonuna basilir
    * "KURAL EKLE" textine basilir
    * "Cihaz Bazlı" textine basilir
    * Kurallar "Tetikleyici Cihaz" butonuna basilir
    * "Seç" textine basilir
    * Kurallar "Tetikleyici Durum" butonuna basilir
    * "Bağıl nem belli bir yüzdenin altına düştüğünde" set edilir
    * "Seç" textine basilir
    * Kurallar "Tetikleme Sıcaklık Listesi" butonuna basilir
    * "35" set edilir
    * "Seç" textine basilir
    * 5 saniye bekle
    * navigasyondan geri tusuna basilir
    * Appbar "KURALLAR" texti kontrol edilir
    * "Oluşturacağınız kuralın çeşidini" yazisi icerdigi kontrol edilir
    * "Konum Bazlı" yazisi kontrol edilir
    * "Cihaz Bazlı" yazisi kontrol edilir
    * "Zaman Bazlı" yazisi kontrol edilir

  @Kurallar
  Scenario: 005 Kurallar cihaz bazlı kural sonucun iptal edilerek tekrar eklenmesinin kontrol edilmesi
    * Uygulama resetlenir
    * "KURALLAR" butonuna basilir
    * "KURAL EKLE" textine basilir
    * "Cihaz Bazlı" textine basilir
    * Kurallar "Tetikleyici Cihaz" butonuna basilir
    * "Seç" textine basilir
    * Kurallar "Tetikleyici Durum" butonuna basilir
    * "Bağıl nem belli bir yüzdenin altına düştüğünde" set edilir
    * "Seç" textine basilir
    * Kurallar "Tetikleme Sıcaklık Listesi" butonuna basilir
    * "35" set edilir
    * "Seç" textine basilir
    * "SONRAKİ ADIM" butonuna basilir
    * Kurallar "Cihaz Seçin" butonuna basilir
    * "Seç" textine basilir
    * Kurallar "Cihaz Koşulu Seçin" butonuna basilir
    * "Uyku modunu kapat" set edilir
    * "Seç" textine basilir
    * "KAYDET" butonuna basilir
    * "Kuralınızın sonucunu belirleyin" yazisi kontrol edilir
    * "Sonuç 1: Co2" yazisi kontrol edilir
    * 5 saniye bekle
    * "X" butonuna basilir
    * "SONUÇ EKLE" yazisi kontrol edilir
    * "SONUÇ EKLE" textine basilir
    * "Sonuç 1" yazisi kontrol edilir
    * "Cihaz Seçin" yazisi kontrol edilir
    * Kurallar "Cihaz Seçin" butonuna basilir
    * "Co2" set edilir
    * "Seç" textine basilir
    * Kurallar "Cihaz Koşulu Seçin" butonuna basilir
    * 5 saniye bekle
    * "Uyku modunu kapat" set edilir
    * "Seç" textine basilir
    * "KAYDET" butonuna basilir
    * "Kuralınızın sonucunu belirleyin" yazisi kontrol edilir
    * "Sonuç 1: Co2" yazisi kontrol edilir
    * "SONUÇ EKLE" yazisi kontrol edilir
    * navigasyondan geri tusuna basilir
    * Appbar "Kural Ekle" texti kontrol edilir
    * "Oluşturacağınız kuralın çeşidini" yazisi icerdigi kontrol edilir
    * "Konum Bazlı" yazisi kontrol edilir
    * "Cihaz Bazlı" yazisi kontrol edilir
    * "Zaman Bazlı" yazisi kontrol edilir

  @Kurallar
  Scenario: 006 Kurallar Co2 cihazı için cihaz bazlı kural seçimlerinin ve kuralun olusturmasının kontrolü
    * Uygulama resetlenir
    * "KURALLAR" butonuna basilir
    * "KURAL EKLE" textine basilir
    * "Cihaz Bazlı" textine basilir
    * Kurallar "Tetikleyici Cihaz" butonuna basilir
    * "Seç" textine basilir
    * "Tetikleyici Durum" yazisi kontrol edilir
    * Kurallar "Tetikleyici Durum" butonuna basilir
    * "CO2 miktarı belli bir seviyeye ulaştığında" set edilir
    * "Sıcaklık belli bir dereceyi geçtiğinde" set edilir
    * "Sıcaklık belli bir derecenin altına düştüğünde" set edilir
    * "Bağıl nem belli bir yüzdeyi geçtiğinde" set edilir
    * "Bağıl nem belli bir yüzdenin altına düştüğünde" set edilir
    * "CO2 miktarı belli bir seviyeye ulaştığında" set edilir
    * "Seç" textine basilir
    * "Tetikleme Sıcaklık Listesi" yazisi kontrol edilir
    * Kurallar "Tetikleme Sıcaklık Listesi" butonuna basilir
    * "Seç" textine basilir
    * "SONRAKİ ADIM" yazisi kontrol edilir
    * "SONRAKİ ADIM" butonuna basilir
    * "Kuralınızın sonucunu belirleyin" yazisi kontrol edilir
    * "Sonuç 1" yazisi kontrol edilir
    * "Cihaz Seçin" yazisi kontrol edilir
    * Kurallar "Cihaz Seçin" butonuna basilir
    * "Seç" textine basilir
    * "Cihaz Koşulu Seçin" yazisi kontrol edilir
    * Kurallar "Cihaz Koşulu Seçin" butonuna basilir
    * "Uyku modunu kapat" set edilir
    * Kurallar "Cihaz Koşulu Seçin" butonuna basilir
    * "Uyku modunu aç" set edilir
    * "Seç" textine basilir
    * "KAYDET" yazisi kontrol edilir
    * "KAYDET" butonuna basilir
    * "Kuralınızın sonucunu belirleyin" yazisi kontrol edilir
    * "Sonuç 1: Co2" yazisi kontrol edilir
    * "SONUÇ EKLE" yazisi kontrol edilir
    * "SONRAKİ ADIM" butonuna basilir
    * "Kayıt" textine basilir
    * "OLUŞTURDUĞUNUZ KURALA BİR İSİM VERİN" yazisi kontrol edilir
    * "Kuralı şimdi aktif hale getir" yazisi kontrol edilir
    * Kural adi "sagliksiz co2" girilir
    * Klavye gizele
    * "KAYDET" butonuna basilir
    * "Kural ekleme başarıyla tamamlandı!" yazisi kontrol edilir
    * "TAMAM" butonuna basilir
    * "KURALLAR" yazisi kontrol edilir
    * "1 Aktif" yazisi kontrol edilir
    * "1 Kural" yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "sagliksiz co2" yazisi kontrol edilir
    * "CO2 miktarı çok iyi seviyeye ulaştığında" yazisi kontrol edilir

  @Kurallar
  Scenario: 007 Kurallar Co2 için oluşturulan kuralın kayıt edildiğinin ve uygulama tekrar açıldığında kontrol edilmesi
    * Uygulama resetlenir
    * "KURALLAR" butonuna basilir
    * "1 Aktif" yazisi kontrol edilir
    * "1 Kural" yazisi kontrol edilir
    * "sagliksiz co2" yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "CO2 miktarı çok iyi seviyeye ulaştığında" yazisi kontrol edilir
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * "KURALLAR" yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "1 Aktif" yazisi kontrol edilir
    * "1 Kural" yazisi kontrol edilir
    * "sagliksiz co2" yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "CO2 miktarı çok iyi seviyeye ulaştığında" yazisi kontrol edilir
    * Kural asagi ok tusuna basilir
    * "Uyku modunu aç" yazisi kontrol edilir
    * "Yeniden adlandır" yazisi kontrol edilir

  @Kurallar
  Scenario: 008 Kurallar Co2 cihazı için pasif ikinci cihaz bazlı kuralın oluşturulduğunun kontrol edilmesi
    * Uygulama resetlenir
    * "KURALLAR" butonuna basilir
    * 5 saniye bekle
    * "KURAL EKLE" textine basilir
    * "Cihaz Bazlı" textine basilir
    * "Sonuç" yazisi kontrol edilir
    * Kurallar "Tetikleyici Cihaz" butonuna basilir
    * "Seç" textine basilir
    * "Tetikleyici Durum" yazisi kontrol edilir
    * Kurallar "Tetikleyici Durum" butonuna basilir
    * "CO2 miktarı belli bir seviyeye ulaştığında" set edilir
    * "Sıcaklık belli bir dereceyi geçtiğinde" set edilir
    * "Sıcaklık belli bir derecenin altına düştüğünde" set edilir
    * "Bağıl nem belli bir yüzdeyi geçtiğinde" set edilir
    * "Bağıl nem belli bir yüzdenin altına düştüğünde" set edilir
    * "CO2 miktarı belli bir seviyeye ulaştığında" set edilir
    * "Seç" textine basilir
    * "Tetikleme Sıcaklık Listesi" yazisi kontrol edilir
    * Kurallar "Tetikleme Sıcaklık Listesi" butonuna basilir
    * "Seç" textine basilir
#    * "3 C°" texti listeden seçilir    / BURADA HATA VAR KONTROL EDİLECEK
    * "SONRAKİ ADIM" yazisi kontrol edilir
    * "SONRAKİ ADIM" butonuna basilir
    * "Kuralınızın sonucunu belirleyin" yazisi kontrol edilir
    * "Sonuç 1" yazisi kontrol edilir
    * "Cihaz Seçin" yazisi kontrol edilir
    * Kurallar "Cihaz Seçin" butonuna basilir
    * "Co2" set edilir
    * "Seç" textine basilir
    * "Cihaz Koşulu Seçin" yazisi kontrol edilir
    * Kurallar "Cihaz Koşulu Seçin" butonuna basilir
    * "Uyku modunu aç" set edilir
    * "Uyku modunu kapat" set edilir
    * "Uyku modunu aç" set edilir
    * "Seç" textine basilir
    * "KAYDET" yazisi kontrol edilir
    * "KAYDET" butonuna basilir
    * "Kuralınızın sonucunu belirleyin" yazisi kontrol edilir
    * "Sonuç 1: Co2" yazisi kontrol edilir
    * "SONUÇ EKLE" yazisi kontrol edilir
    * "SONRAKİ ADIM" butonuna basilir
    * "Kayıt" textine basilir
    * "OLUŞTURDUĞUNUZ KURALA BİR İSİM VERİN" yazisi kontrol edilir
    * "Kuralı şimdi aktif hale getir" yazisi kontrol edilir
    * Kural adi "düsük sicaklik" girilir
    * Klavye gizele
    * "KAYDET" butonuna basilir
    * "Kural ekleme başarıyla tamamlandı!" yazisi kontrol edilir
    * "TAMAM" butonuna basilir
    * "KURALLAR" yazisi kontrol edilir
    * "2 Aktif" yazisi kontrol edilir
    * "2 Kural" yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "düsük sicaklik" yazisi kontrol edilir
    * "CO2 miktarı çok iyi seviyeye ulaştığında" yazisi kontrol edilir

  @Kurallar
  Scenario: 009 Kurallar Co2 için olusturulan ikinci kuralın aktive edilmesinin kontrolu
    * Uygulama resetlenir
    * "KURALLAR" butonuna basilir
    * "düsük sicaklik" butonu "0" yapilir
    * "1 Aktif" yazisi kontrol edilir
    * "2 Kural" yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "sagliksiz co2" yazisi kontrol edilir
    * "düsük sicaklik" butonunun "0" oldugu kontrol edilir
    * "CO2 miktarı çok iyi seviyeye ulaştığında" yazisi kontrol edilir
    * "sagliksiz co2" yazisi kontrol edilir
    * "düsük sicaklik" yazisi kontrol edilir
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * "1 Aktif" yazisi kontrol edilir
    * "2 Kural" yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "düsük sicaklik" yazisi kontrol edilir
    * "CO2 miktarı çok iyi seviyeye ulaştığında" yazisi kontrol edilir
    * "sagliksiz co2" yazisi kontrol edilir
    * "düsük sicaklik" yazisi kontrol edilir
    * "düsük sicaklik" butonunun "0" oldugu kontrol edilir
    * "sagliksiz co2" butonunun "1" oldugu kontrol edilir
    * Kural asagi ok tusuna basilir
    * "Co2" yazisi kontrol edilir
    * "düsük sicaklik" butonu "1" yapilir
#    * "Sil" butonuna basilir
#    * "Kuralı silmek istediğinize emin misiniz?" yazisi kontrol edilir
#    * Uyari popupi sil butonuna basilir
#    * 5 saniye bekle
#    * Kural asagi ok tusuna basilir
#    * "Co2" yazisi kontrol edilir
#    * "Sil" butonuna basilir
#    * "Kuralı silmek istediğinize emin misiniz?" yazisi kontrol edilir
#    * Uyari popupi sil butonuna basilir
#    * "Kural bulunamadı" yazisi icerdigi kontrol edilir

  @Kurallar
  Scenario: 010 Kurallar Co2 için olusturulan kuralın isminin düzenlenmesi
    * Uygulama resetlenir
    * "KURALLAR" butonuna basilir
    * "2 Aktif" yazisi kontrol edilir
    * "2 Kural" yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "sagliksiz co2" yazisi kontrol edilir
    * "CO2 miktarı çok iyi seviyeye ulaştığında" yazisi kontrol edilir
    * "düsük sicaklik" yazisi kontrol edilir
    * Kural asagi ok tusuna basilir
    * "Yeniden adlandır" yazisi kontrol edilir
    * "sagliksiz co2" yazisi kontrol edilir
    * "Yeniden adlandır" butonuna basilir
    * Appbar "Yeniden adlandır" texti kontrol edilir
    * "İPTAL" yazisi kontrol edilir
    * Kural adi "Düşük Sıcaklık" olarak değiştirilir
    * 3 saniye bekle
    * "KAYDET" butonuna basilir
    * "Başarılı" yazisi kontrol edilir
    * "Kural ismi başarı ile değiştildi." yazisi kontrol edilir
    * "TAMAM" butonuna basilir
    * "2 Aktif" yazisi kontrol edilir
    * "2 Kural" yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "düsük sicaklik" yazisi kontrol edilir
    * "CO2 miktarı çok iyi seviyeye ulaştığında" yazisi kontrol edilir
    * "Düşük Sıcaklık" yazisi kontrol edilir
    * "CO2 miktarı çok iyi seviyeye ulaştığında" yazisi kontrol edilir

  @Kurallar
  Scenario: 011 Kurallar Co2 için olusturulan kuralların ana ekrandan erişilebildiğinin kontrol edilmesi
    * Uygulama resetlenir
    * "Home" butonuna basilir
    * "KURAL SETLERİ" yazisi kontrol edilir
    * "Kural Listesi" yazisi kontrol edilir
    * "2 Aktif / 2 Kural" yazisi kontrol edilir
    * "Kural Listesi" textine basilir
    * "2 Aktif" yazisi kontrol edilir
    * "2 Kural" yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "Düşük Sıcaklık" yazisi kontrol edilir
    * "CO2 miktarı çok iyi seviyeye ulaştığında" yazisi kontrol edilir
    * "sagliksiz co2" yazisi kontrol edilir
    * "CO2 miktarı çok iyi seviyeye ulaştığında" yazisi kontrol edilir

  @Kurallar
  Scenario: 012 Kurallar Co2 için olusturulan kuralların cihaz ekranından erişilebildiğinin kontrol edilmesi
    * Uygulama resetlenir
    * "Co2" detayina gidilir
    * "CİHAZA TANIMLI KURALLAR" yazisi kontrol edilir
    * "sagliksiz co2" yazisi kontrol edilir
    * "CO2 miktarı sağlıksız seviyeye ulaştığında" yazisi kontrol edilir
    * Ekrani "down" kaydir
    * "Düşük Sıcaklık" textine basilir
    * 5 saniye bekle
    * "2 Aktif" yazisi kontrol edilir
    * "2 Kural" yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "sagliksiz co2" yazisi kontrol edilir
    * "CO2 miktarı sağlıksız seviyeye ulaştığında" yazisi kontrol edilir
    * "sağlıksız co2" yazisi kontrol edilir
    * "CO2 miktarı çok iyi seviyeye ulaştığında" yazisi kontrol edilir

  @Kurallar
  Scenario: 013 Kurallar Co2 için oluşturulan kuralların tamamen silinmesinin kontrolu
    * Uygulama resetlenir
    * "KURALLAR" butonuna basilir
    * 5 saniye bekle
    * "2 Aktif" yazisi kontrol edilir
    * "2 Kural" yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "sagliksiz co2" yazisi kontrol edilir
    * "CO2 miktarı sağlıksız seviyeye ulaştığında" yazisi kontrol edilir
    * "Düşük Sıcaklık" yazisi kontrol edilir
    * "CO2 miktarı sağlıksız seviyeye ulaştığında" yazisi kontrol edilir
    * Kural asagi ok tusuna basilir
    * "Sil" butonuna basilir
    * "Kuralı silmek istediğinize emin misiniz?" yazisi kontrol edilir
    * Uyari popupi sil butonuna basilir
    * 5 saniye bekle
    * Kural asagi ok tusuna basilir
    * "Co2" yazisi kontrol edilir
    * "Sil" butonuna basilir
    * "Kuralı silmek istediğinize emin misiniz?" yazisi kontrol edilir
    * Uyari popupi sil butonuna basilir
    * "Kural bulunamadı" yazisi icerdigi kontrol edilir

  @Kurallar
  Scenario: 014 Kurallar Co2 cihazı için cihaz bazlı iki sonuçlu kural olusturma kontrolü
    * Uygulama resetlenir
    * "KURALLAR" butonuna basilir
    * 5 saniye bekle
    * "KURAL EKLE" textine basilir
    * "Cihaz Bazlı" textine basilir
    * Kurallar "Tetikleyici Cihaz" butonuna basilir
    * "Seç" textine basilir
    * Kurallar "Tetikleyici Durum" butonuna basilir
    * "CO2 miktarı belli bir seviyeye ulaştığında" set edilir
    * "Seç" textine basilir
    * Kurallar "Tetikleme Sıcaklık Listesi" butonuna basilir
    * "Çok İyi" set edilir
    * "Seç" textine basilir
    * "SONRAKİ ADIM" butonuna basilir
    * Kurallar "Cihaz Seçin" butonuna basilir
    * "Co2" set edilir
    * "Seç" textine basilir
    * Kurallar "Cihaz Koşulu Seçin" butonuna basilir
    * "Uyku modunu aç" set edilir
    * "Seç" textine basilir
    * "KAYDET" butonuna basilir
    * "Kuralınızın sonucunu belirleyin" yazisi kontrol edilir
    * "Sonuç 1: Co2" yazisi kontrol edilir
    * "SONUÇ EKLE" yazisi kontrol edilir
    * "SONUÇ EKLE" butonuna basilir
    * "Sonuç 2" yazisi kontrol edilir
    * Kurallar "Cihaz Seçin" butonuna basilir
    * "Co2" set edilir
    * "Seç" textine basilir
    * Kurallar "Cihaz Koşulu Seçin" butonuna basilir
    * "Uyku modunu kapat" set edilir
    * "Seç" textine basilir
    * "KAYDET" butonuna basilir
    * "Kuralınızın sonucunu belirleyin" yazisi kontrol edilir
    * "Sonuç 1: Co2" yazisi kontrol edilir
    * "Sonuç 2: Co2" yazisi kontrol edilir
    * "SONUÇ EKLE" yazisi kontrol edilir
    * "SONRAKİ ADIM" butonuna basilir
    * "Kayıt" textine basilir
    * "Kuralınıza isim verin" yazisi kontrol edilir
    * "OLUŞTURDUĞUNUZ KURALA BİR İSİM VERİN" yazisi kontrol edilir
    * "Kuralı şimdi aktif hale getir" yazisi kontrol edilir
    * Kural adi "İki sonuçlu kural" girilir
    * "Done" butonuna basilir
    * "KAYDET" butonuna basilir
    * "Kural ekleme başarıyla tamamlandı!" yazisi kontrol edilir
    * "TAMAM" butonuna basilir
    * "KURALLAR" yazisi kontrol edilir
    * "1 Aktif" yazisi kontrol edilir
    * "1 Kural" yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "İki sonuçlu kural" yazisi kontrol edilir
    * "CO2 miktarı çok iyi seviyeye ulaştığında" yazisi kontrol edilir
    * Kural asagi ok tusuna basilir
    * "Uyku modunu aç" yazisi kontrol edilir
    * "Uyku modunu kapat" yazisi kontrol edilir
    * "Sil" butonuna basilir
    * "Kuralı silmek istediğinize emin misiniz?" yazisi kontrol edilir
    * Uyari popupi sil butonuna basilir
    * "Kural bulunamadı" yazisi icerdigi kontrol edilir

  @Kurallar
  Scenario:015 Kurallar Gateway Cihazı için tetikleyici durumların kontrolü
    * Uygulama resetlenir
    * Logout yapilir
    * Uygulamaya "mobilotomasyon3@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    * Uygulama resetlenir
    * "KURALLAR" butonuna basilir
    * "KURAL EKLE" textine basilir
    * "Cihaz Bazlı" textine basilir
    * "Sonuç" yazisi kontrol edilir
    * Kurallar "Tetikleyici Cihaz" butonuna basilir
    * "Gateway" set edilir
    * "Seç" textine basilir
    * Kurallar "Tetikleyici Durum" butonuna basilir
    * "Sıcaklık belirli bir dereceyi geçtiğinde" set edilir
    * "Sıcaklık belirli bir derecenin altına düştüğünde" set edilir
    * "Bağıl nem belli bir yüzdeyi geçtiğinde" set edilir
    * "Bağıl nem belli bir yüzdenin altına düştüğünde" set edilir
    * "Sıcaklık belirli bir dereceyi geçtiğinde" set edilir
    * "Seç" textine basilir
    * Kurallar "Tetikleme Sıcaklık Listesi" butonuna basilir
    * "0 °C" set edilir
    * "1 °C" set edilir
    * "2 °C" set edilir
    * "3 °C" set edilir
    * "2 °C" set edilir
    * "Seç" textine basilir
    * "2 °C" yazisi kontrol edilir
    * Kurallar "Sıcaklık belirli bir dereceyi geçtiğinde" butonuna basilir
    * "Sıcaklık belirli bir derecenin altına düştüğünde" set edilir
    * "Seç" textine basilir
    * "Tetikleme Sıcaklık Listesi" yazisi kontrol edilir
    * Kurallar "Tetikleme Sıcaklık Listesi" butonuna basilir
    * "0 °C" set edilir
    * "1 °C" set edilir
    * "2 °C" set edilir
    * "3 °C" set edilir
    * "4 °C" set edilir
    * "Seç" textine basilir
    * "4 °C" yazisi kontrol edilir
    * Kurallar "Sıcaklık belirli bir derecenin altına düştüğünde" butonuna basilir
    * "Bağıl nem belli bir yüzdeyi geçtiğinde" set edilir
    * "Seç" textine basilir
    * Kurallar "Tetikleme Sıcaklık Listesi" butonuna basilir
#    * Kurallar "Tetikleme Nem Listesi" butonuna basilir  // Doğrusu bu olacak
#    * "Tetikleme Nem Listesi" yazisi kontrol edilir  // Doğrusu bu olacak
    * "Tetikleme Sıcaklık Listesi" yazisi kontrol edilir
    * Kurallar "Tetikleme Sıcaklık Listesi" butonuna basilir
    * "10" set edilir
    * "15" set edilir
    * "20" set edilir
    * "25" set edilir
    * "30" set edilir
    * "Seç" textine basilir
    * "30" yazisi kontrol edilir
    * Kurallar "Bağıl nem belli bir yüzdeyi geçtiğinde" butonuna basilir
    * "Bağıl nem belli bir yüzdenin altına düştüğünde" set edilir
    * "Seç" textine basilir
#    * Kurallar "Tetikleme Nem Listesi" butonuna basilir  // Doğrusu bu olacak
#    * "Tetikleme Nem Listesi" yazisi kontrol edilir  // Doğrusu bu olacak
    * "Tetikleme Sıcaklık Listesi" yazisi kontrol edilir
    * Kurallar "Tetikleme Sıcaklık Listesi" butonuna basilir
    * "10" set edilir
    * "15" set edilir
    * "20" set edilir
    * "25" set edilir
    * "10" set edilir
    * "Seç" textine basilir
    * "10" yazisi kontrol edilir
    * "SONRAKİ ADIM" yazisi kontrol edilir

  @Kurallar
  Scenario: 016 Kurallar Gateway sıcaklık tetiklemesi ile lamba aç kuralının oluşturulması
    * Uygulama resetlenir
    * "KURALLAR" butonuna basilir
    * "KURAL EKLE" textine basilir
    * "Cihaz Bazlı" textine basilir
    * Kurallar "Tetikleyici Cihaz" butonuna basilir
    * "Gateway" set edilir
    * "Seç" textine basilir
    * Kurallar "Tetikleyici Durum" butonuna basilir
    * "Sıcaklık belirli bir derecenin altına düştüğünde" set edilir
    * "Seç" textine basilir
    * Kurallar "Tetikleme Sıcaklık Listesi" butonuna basilir
    * "3 °C" set edilir
    * "Seç" textine basilir
    * "SONRAKİ ADIM" butonuna basilir
    * Kurallar "Cihaz Seçin" butonuna basilir
    * "Lamba" set edilir
    * "Seç" textine basilir
    * Kurallar "Cihaz Koşulu Seçin" butonuna basilir
    * "Aç" set edilir
    * "Seç" textine basilir
    * Kurallar "Aç" butonuna basilir
    * "Kapat" set edilir
    * "Aç" set edilir
    * "Seç" textine basilir
    * "KAYDET" yazisi kontrol edilir
    * "KAYDET" butonuna basilir
    * "Sonuç 1: Lamba" yazisi kontrol edilir
    * "SONUÇ EKLE" yazisi kontrol edilir
    * "SONRAKİ ADIM" butonuna basilir
#    * "Kayıt" textine basilir
    * "Kuralınıza isim verin" yazisi kontrol edilir
    * "OLUŞTURDUĞUNUZ KURALA BİR İSİM VERİN" yazisi kontrol edilir
    * "Kuralı şimdi aktif hale getir" yazisi kontrol edilir
    * Kural adi "Sıcaklık düşünce lamba aç" girilir
    * "Done" butonuna basilir
    * "KAYDET" butonuna basilir
    * "Kural ekleme başarıyla tamamlandı!" yazisi kontrol edilir
    * "TAMAM" butonuna basilir
    * "KURALLAR" yazisi kontrol edilir
    * "1 Aktif" yazisi kontrol edilir
    * "1 Kural" yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "Sıcaklık düşünce lamba aç" yazisi kontrol edilir
    * "Gateway" yazisi kontrol edilir
    * "Sıcaklık belirli bir derecenin altına düştüğünde" yazisi kontrol edilir
    * Kural asagi ok tusuna basilir
    * "Gateway" yazisi kontrol edilir
    * "Lamba" yazisi kontrol edilir
    * "Sil" butonuna basilir
    * "Kuralı silmek istediğinize emin misiniz?" yazisi kontrol edilir
    * Uyari popupi sil butonuna basilir
    * "Kural bulunamadı" yazisi icerdigi kontrol edilir

  @Kurallar
  Scenario: 017 Kurallar Gateway nem tetiklemesi ile smartplug aç kuralının oluşturulması
    * Uygulama resetlenir
    * "KURALLAR" butonuna basilir
    * "KURAL EKLE" textine basilir
    * "Cihaz Bazlı" textine basilir
    * Kurallar "Tetikleyici Cihaz" butonuna basilir
    * "Gateway" set edilir
    * "Seç" textine basilir
    * Kurallar "Tetikleyici Durum" butonuna basilir
    * "Bağıl nem belli bir yüzdeyi geçtiğinde" set edilir
    * "Seç" textine basilir
    * Kurallar "Tetikleme Sıcaklık Listesi" butonuna basilir
#    * Kurallar "Tetikleme Nem Listesi" butonuna basilir // Doğrusu bu olacak
    * "30" set edilir
    * "Seç" textine basilir
    * "SONRAKİ ADIM" butonuna basilir
    * Kurallar "Cihaz Seçin" butonuna basilir
    * "Priz" set edilir
    * "Seç" textine basilir
    * Kurallar "Cihaz Koşulu Seçin" butonuna basilir
    * "Aç" set edilir
    * "Kapat" set edilir
    * "Seç" textine basilir
    * "KAYDET" yazisi kontrol edilir
    * "KAYDET" butonuna basilir
    * "Sonuç 1: Priz" yazisi kontrol edilir
    * "SONUÇ EKLE" yazisi kontrol edilir
    * "SONRAKİ ADIM" butonuna basilir
    * "Kayıt" textine basilir
    * "Kuralınıza isim verin" yazisi kontrol edilir
    * "OLUŞTURDUĞUNUZ KURALA BİR İSİM VERİN" yazisi kontrol edilir
    * "Kuralı şimdi aktif hale getir" yazisi kontrol edilir
    * Kural adi "Nem artıca priz kapa" girilir
    * "Done" butonuna basilir
    * "KAYDET" butonuna basilir
    * "Kural ekleme başarıyla tamamlandı!" yazisi kontrol edilir
    * "TAMAM" butonuna basilir
    * "KURALLAR" yazisi kontrol edilir
    * "1 Aktif" yazisi kontrol edilir
    * "1 Kural" yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "Nem artıca priz kapa" yazisi kontrol edilir
    * "Gateway" yazisi kontrol edilir
    * "Bağıl nem belli bir yüzdeyi geçtiğinde" yazisi kontrol edilir
    * Kural asagi ok tusuna basilir
    * "Gateway" yazisi kontrol edilir
    * "Priz" yazisi kontrol edilir
    * "Sil" butonuna basilir
    * "Kuralı silmek istediğinize emin misiniz?" yazisi kontrol edilir
    * Uyari popupi sil butonuna basilir
    * "Kural bulunamadı" yazisi icerdigi kontrol edilir

  @Kurallar
  Scenario: 018 Kurallar Gateway cihaz ekranından başlatılarak cihaz bazlı kural oluşturulması
    * Uygulama resetlenir
    * "Gateway" detayina gidilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "KURAL EKLE" butonuna basilir
    * "Cihaz Bazlı" textine basilir
    * Kurallar "Tetikleyici Cihaz" butonuna basilir
    * "Gateway" set edilir
    * "Seç" textine basilir
    * Kurallar "Tetikleyici Durum" butonuna basilir
    * "Bağıl nem belli bir yüzdenin altına düştüğünde" set edilir
    * "Seç" textine basilir
    * Kurallar "Tetikleme Sıcaklık Listesi" butonuna basilir
#    * Kurallar "Tetikleme Nem Listesi" butonuna basilir // Doğrusu bu olacak
    * "10" set edilir
    * "Seç" textine basilir
    * "SONRAKİ ADIM" butonuna basilir
    * Kurallar "Cihaz Seçin" butonuna basilir
    * "Priz" set edilir
    * "Seç" textine basilir
    * Kurallar "Cihaz Koşulu Seçin" butonuna basilir
    * "Aç" set edilir
    * "Seç" textine basilir
    * "KAYDET" butonuna basilir
    * "Sonuç 1: Priz" yazisi kontrol edilir
    * "SONRAKİ adım" butonuna basilir
    * "Kuralı şimdi aktif hale getir" yazisi kontrol edilir
    * Kural adi "Nem düşünce priz aç" girilir
    * "Done" butonuna basilir
    * "KAYDET" butonuna basilir
    * "Kural ekleme başarıyla tamamlandı!" yazisi kontrol edilir
    * "TAMAM" butonuna basilir
    * "Gateway" yazisi kontrol edilir
    * "Oturma Odası" yazisi kontrol edilir
    * "CİHAZ YÖNETİMİ" yazisi kontrol edilir
    * "CİHAZ GEÇMİŞİ" yazisi kontrol edilir
    * "CİHAZA TANIMLI KURALLAR" yazisi kontrol edilir
    #* "Bağıl nem belli bir yüzdenin altına düştüğ..." yazisi kontrol edilir
    * "Nem düşünce priz aç" yazisi kontrol edilir
    * "Nem düşünce priz aç" textine basilir
    * "1 Aktif" yazisi kontrol edilir
    * "1 Kural" yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "Nem düşünce priz aç" yazisi kontrol edilir
    #* "Bağıl nem belli bir yüzdenin altına düştüğ..." yazisi kontrol edilir
    * "Priz" yazisi kontrol edilir
    * "Açık" yazisi kontrol edilir
    * "Sil" textine basilir
    * "Henüz kural oluşturmadınız." yazisi kontrol edilir
    * "Bu bölümden, cihazlarınızın belirlediğiniz konum, zaman ve cihaz bazlı senaryolara göre çalışmasını sağlayabilirsiniz." yazisi kontrol edilir

  @Kurallar
  Scenario: XXX Kurallar cihaz bazlı kural için tetikleyici cihaz yok uyarısı
    * Uygulama resetlenir
    * Logout yapilir
    * Uygulamaya "yazilimtestonay@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    * Uygulama resetlenir
    * "KURALLAR" butonuna basilir
    * "KURAL EKLE" textine basilir
    * "Cihaz Bazlı" textine basilir
    * Kurallar "Tetikleyici Cihaz" butonuna basilir
    * "Tetikleyici cihaz bulunamadı" yazisi kontrol edilir
    * "TAMAM" butonuna basilir
    * navigasyondan geri tusuna basilir
    * "Oluşturacağınız kuralın çeşidini belirleyin." yazisi kontrol edilir
    * "Konum Bazlı" yazisi kontrol edilir
    * "Cihaz Bazlı" yazisi kontrol edilir
    * "Zaman Bazlı" yazisi kontrol edilir

    @Kurallar
    Scenario: 019 Kurallar zamanlama kuralı oluşturma ilk ekranının kontrolü
    * Uygulama resetlenir
    * "KURALLAR" butonuna basilir
    * "KURAL EKLE" textine basilir
    * "Zaman Bazlı" textine basilir
    * "Gelişmiş Kural Oluştur" yazisi kontrol edilir
    * "Başlangıç" yazisi kontrol edilir
    * "Sonuç" yazisi kontrol edilir
    * "Kayıt" yazisi kontrol edilir
    * "01" yazisi kontrol edilir
    * "02" yazisi kontrol edilir
    * "03" yazisi kontrol edilir
    * "Kuralınızın başlamasını istediğiniz zamanı seçin" yazisi kontrol edilir
    * "BAŞLANGIÇ SAATİ" yazisi kontrol edilir
    * "GÜN SEÇİMİ" yazisi kontrol edilir
    * "SONRAKİ ADIM" yazisi kontrol edilir

  @Kurallar
  Scenario: 020 Kurallar zamanlama kuralı oluşturma ilk adımda iptal edilmenin kontrol edilmesi
    * Uygulama resetlenir
    * "KURALLAR" butonuna basilir
    * "KURAL EKLE" textine basilir
    * "Zaman Bazlı" textine basilir
    * Kural başlangıç saati 3 saat ileri set edilir
    * Kural başlangıç saati 5 dakika ileri set edilir
    * Kural gününü "Fri" olarak ayarlanır
    * Kural gününü "Mon" olarak ayarlanır
    * Kural gününü "Sat" olarak ayarlanır
    * "SONRAKİ ADIM" yazisi kontrol edilir
    * navigasyondan geri tusuna basilir
#    * "İptal etmek istiyor musunuz?" yazisi kontrol edilir
#    * "HAYIR" yazisi kontrol edilir
#    * "EVET" yazisi kontrol edilir
#    * "EVET" butonuna basilir
    * Appbar "Kural Ekle" texti kontrol edilir
    * "Oluşturacağınız kuralın çeşidini belirleyin." yazisi kontrol edilir
    * "Konum Bazlı" yazisi kontrol edilir
    * "Cihaz Bazlı" yazisi kontrol edilir
    * "Zaman Bazlı" yazisi kontrol edilir

  @Kurallar
  Scenario: 021 Kurallar zamanlama kuralı ikinci adımda iptal edilmesinin kontrol edilmesi
    * Uygulama resetlenir
    * "KURALLAR" butonuna basilir
    * "KURAL EKLE" textine basilir
    * "Zaman Bazlı" textine basilir
    * Kural başlangıç saati 1 saat ileri set edilir
    * Kural başlangıç saati 1 dakika ileri set edilir
    * Kural gününü "Thu" olarak ayarlanır
    * "SONRAKİ ADIM" yazisi kontrol edilir
    * "SONRAKİ ADIM" butonuna basilir
    * "Kuralınızın sonucunu belirleyin" yazisi kontrol edilir
    * "Sonuç 1" yazisi kontrol edilir
    * Kurallar "Cihaz Seçin" butonuna basilir
    * "Lamba" set edilir
    * "Seç" textine basilir
    * Kurallar "Cihaz Koşulu Seçin" butonuna basilir
    * "Aç" set edilir
    * "Seç" textine basilir
    * "KAYDET" butonuna basilir
    * "Sonuç 1: Lamba" yazisi kontrol edilir
    * "SONUÇ EKLE" yazisi kontrol edilir
    * navigasyondan geri tusuna basilir
#    * "İptal etmek istiyor musunuz?" yazisi kontrol edilir
#    * "HAYIR" yazisi kontrol edilir
#    * "EVET" yazisi kontrol edilir
#    * "EVET" butonuna basilir
    * Appbar "Kural Ekle" texti kontrol edilir
    * "Oluşturacağınız kuralın çeşidini belirleyin." yazisi kontrol edilir
    * "Konum Bazlı" yazisi kontrol edilir
    * "Cihaz Bazlı" yazisi kontrol edilir
    * "Zaman Bazlı" yazisi kontrol edilir

  @Kurallar
  Scenario: 022 Kurallar zamanlama kuralı isim verme adımında iptal edilmesi
    * Uygulama resetlenir
    * "KURALLAR" butonuna basilir
    * "KURAL EKLE" textine basilir
    * "Zaman Bazlı" textine basilir
    * Kural başlangıç saati 1 saat ileri set edilir
    * Kural başlangıç saati 2 dakika ileri set edilir
    * Kural gününü "Thu" olarak ayarlanır
    * "SONRAKİ ADIM" yazisi kontrol edilir
    * "SONRAKİ ADIM" butonuna basilir
    * "Kuralınızın sonucunu belirleyin" yazisi kontrol edilir
    * "Sonuç 1" yazisi kontrol edilir
    * Kurallar "Cihaz Seçin" butonuna basilir
    * "Priz" set edilir
    * "Seç" textine basilir
    * Kurallar "Cihaz Koşulu Seçin" butonuna basilir
    * "Aç" set edilir
    * "Seç" textine basilir
    * "KAYDET" butonuna basilir
    * "Sonuç 1: Priz" yazisi kontrol edilir
    * "SONUÇ EKLE" yazisi kontrol edilir
    * "SONRAKİ ADIM" butonuna basilir
    * "Kuralı şimdi aktif hale getir" yazisi kontrol edilir
    * Kural adi "İptal edilecek kural" girilir
    * "Done" butonuna basilir
    * navigasyondan geri tusuna basilir
#    * "İptal etmek istiyor musunuz?" yazisi kontrol edilir
#    * "HAYIR" yazisi kontrol edilir
#    * "EVET" yazisi kontrol edilir
#    * "EVET" butonuna basilir
    * Appbar "Kural Ekle" texti kontrol edilir
    * "Oluşturacağınız kuralın çeşidini belirleyin." yazisi kontrol edilir
    * "Konum Bazlı" yazisi kontrol edilir
    * "Cihaz Bazlı" yazisi kontrol edilir
    * "Zaman Bazlı" yazisi kontrol edilir

  @Kurallar
  Scenario: 023 Kurallar zamanlama kuralı oluşturmanın kontrol edilmesi
    * Uygulama resetlenir
    * "KURALLAR" butonuna basilir
    * "KURAL EKLE" textine basilir
    * "Zaman Bazlı" textine basilir
    * Kural başlangıç saati 1 saat ileri set edilir
    * Kural başlangıç saati 2 dakika ileri set edilir
    * Kural gününü "Mon" olarak ayarlanır
    * Kural gününü "Tue" olarak ayarlanır
    * "SONRAKİ ADIM" yazisi kontrol edilir
    * "SONRAKİ ADIM" butonuna basilir
    * "Kuralınızın sonucunu belirleyin" yazisi kontrol edilir
    * "Sonuç 1" yazisi kontrol edilir
    * Kurallar "Cihaz Seçin" butonuna basilir
    * "Priz" set edilir
    * "Seç" textine basilir
    * Kurallar "Cihaz Koşulu Seçin" butonuna basilir
    * "Aç" set edilir
    * "Seç" textine basilir
    * "KAYDET" butonuna basilir
    * "Sonuç 1: Priz" yazisi kontrol edilir
    * "SONUÇ EKLE" yazisi kontrol edilir
    * "SONRAKİ ADIM" butonuna basilir
    * "Kuralı şimdi aktif hale getir" yazisi kontrol edilir
    * Kural adi "Zaman Gelince Priz Aç" girilir
    * "Done" butonuna basilir
    * "KAYDET" butonuna basilir
    * "Kural ekleme başarıyla tamamlandı!" yazisi kontrol edilir
    * "TAMAM" butonuna basilir
    * "KURALLAR" yazisi kontrol edilir
    * "1 Aktif" yazisi kontrol edilir
    * "1 Kural" yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "Zaman Gelince Priz Aç" yazisi kontrol edilir
    * "Zaman Bazlı" yazisi kontrol edilir
    * Kural asagi ok tusuna basilir
    * "Priz" yazisi kontrol edilir
    * "Sil" butonuna basilir
    * "Kuralı silmek istediğinize emin misiniz?" yazisi kontrol edilir
    * Uyari popupi sil butonuna basilir
    * "Kural bulunamadı" yazisi icerdigi kontrol edilir

  @Kurallar
  Scenario: 024 Kurallar Apollo Pro D7S için zamanlama kuralı oluşturmanın kontrol edilmesi
    * Uygulama resetlenir
    * Logout yapilir
    * Uygulamaya "hayri.odabas@arcelik.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    * Uygulama resetlenir
    * "KURALLAR" butonuna basilir
    * "KURAL EKLE" textine basilir
    * "Zaman Bazlı" textine basilir
    * Kural başlangıç saati 1 saat ileri set edilir
    * Kural başlangıç saati 5 dakika ileri set edilir
    * Kural gününü "Sun" olarak ayarlanır
    * "SONRAKİ ADIM" butonuna basilir
    * "Kuralınızın sonucunu belirleyin" yazisi kontrol edilir
    * "Sonuç 1" yazisi kontrol edilir
    * "Cihaz Seçin" yazisi kontrol edilir
    * Kurallar "Cihaz Seçin" butonuna basilir
    * "Apollo Pro D7S" set edilir
    * "Seç" textine basilir
    * Kurallar "Cihaz Koşulu Seçin" butonuna basilir
    * "Seç" textine basilir
    * "Kapat" yazisi kontrol edilir
    * Kurallar "Kapat" butonuna basilir
    * "Aç" set edilir
    * "Seç" textine basilir
    * "KAYDET" butonuna basilir
    * "Sonuç 1: Apollo Pro D7S" yazisi kontrol edilir
    * "SONUÇ EKLE" yazisi kontrol edilir
    * "SONRAKİ ADIM" butonuna basilir
    * "Kuralı şimdi aktif hale getir" yazisi kontrol edilir
    * Kural adi "Apollo Aç" girilir
    * "Done" butonuna basilir
    * "KAYDET" butonuna basilir
    * "Kural ekleme başarıyla tamamlandı!" yazisi kontrol edilir
    * "TAMAM" butonuna basilir
    * "KURALLAR" butonuna basilir
    * "KURALLAR" yazisi kontrol edilir
    * "1 Aktif" yazisi kontrol edilir
    * "1 Kural" yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "Apollo Aç" yazisi kontrol edilir
    * "Zaman Bazlı" yazisi kontrol edilir
    * Kural asagi ok tusuna basilir
    * "Apollo Pro D7S" yazisi kontrol edilir
    * "Açık" yazisi kontrol edilir
    * Cihazlar ikonuna basilir
    * Uygulama resetlenir
    * "Apollo Pro D7S" detayina gidilir
    * "Apollo Aç" yazisi kontrol edilir
    * "Apollo Aç" textine basilir
    * "1 Aktif" yazisi kontrol edilir
    * "1 Kural" yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "Apollo Aç" yazisi kontrol edilir
    * "Zaman Bazlı" yazisi kontrol edilir
    * Kural asagi ok tusuna basilir
    * "Apollo Pro D7S" yazisi kontrol edilir
    * "Açık" yazisi kontrol edilir
    * "Sil" butonuna basilir
    * "Kuralı silmek istediğinize emin misiniz?" yazisi kontrol edilir
    * Uyari popupi sil butonuna basilir
    * "Kural bulunamadı" yazisi icerdigi kontrol edilir
  @Kurallar
  Scenario: 025 Kurallar Rapple Fırın için zamanlama kuralı oluşturmanın kontrol edilmesi
    * Uygulama resetlenir
    * "KURALLAR" butonuna basilir
    * "KURAL EKLE" textine basilir
    * "Zaman Bazlı" textine basilir
    * Kural başlangıç saati 1 saat ileri set edilir
    * Kural başlangıç saati 5 dakika ileri set edilir
    * Kural gününü "Sun" olarak ayarlanır
    * "SONRAKİ ADIM" butonuna basilir
    * "Kuralınızın sonucunu belirleyin" yazisi kontrol edilir
    * "Sonuç 1" yazisi kontrol edilir
    * "Cihaz Seçin" yazisi kontrol edilir
    * Kurallar "Cihaz Seçin" butonuna basilir
    * "Rapple Firin" set edilir
    * "Seç" textine basilir
    * Kurallar "Cihaz Koşulu Seçin" butonuna basilir
    * "Aç" set edilir
    * "Seç" textine basilir
    * "KAYDET" butonuna basilir
    * "Sonuç 1: Rapple Firin" yazisi kontrol edilir
    * "SONUÇ EKLE" yazisi kontrol edilir
    * "SONRAKİ ADIM" butonuna basilir
    * "Kuralı şimdi aktif hale getir" yazisi kontrol edilir
    * Kural adi "Fırınımı Aç" girilir
    * "Done" butonuna basilir
    * "KAYDET" butonuna basilir
    * "Kural ekleme başarıyla tamamlandı!" yazisi kontrol edilir
    * "TAMAM" butonuna basilir
    * "KURALLAR" yazisi kontrol edilir
    * "1 Aktif" yazisi kontrol edilir
    * "1 Kural" yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "Fırınımı Aç" yazisi kontrol edilir
    * "Zaman Bazlı" yazisi kontrol edilir
    * Kural asagi ok tusuna basilir
    * "Rapple Firin" yazisi kontrol edilir
    * "Açık" yazisi kontrol edilir
    * Cihazlar ikonuna basilir
    * Uygulama resetlenir
    * "Rapple Firin" detayina gidilir
    * "Fırınımı Aç" yazisi kontrol edilir
    * "Zaman Bazlı" yazisi kontrol edilir
    * "Fırınımı Aç" textine basilir
    * "1 Aktif" yazisi kontrol edilir
    * "1 Kural" yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "Fırınımı Aç" yazisi kontrol edilir
    * "Zaman Bazlı" yazisi kontrol edilir
    * Kural asagi ok tusuna basilir
    * "Rapple Firin" yazisi kontrol edilir
    * "Açık" yazisi kontrol edilir
    * "Sil" butonuna basilir
    * "Kuralı silmek istediğinize emin misiniz?" yazisi kontrol edilir
    * Uyari popupi sil butonuna basilir
    * "Kural bulunamadı" yazisi icerdigi kontrol edilir

  @Kurallar
  Scenario: 026 Kurallar E8L BM için zamanlama kuralı oluşturmanın kontrol edilmesi
    * Uygulama resetlenir
    * Logout yapilir
    * Uygulamaya "yazilimtestonay@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    * Uygulama resetlenir
    * "KURALLAR" butonuna basilir
    * "KURAL EKLE" textine basilir
    * "Zaman Bazlı" textine basilir
    * Kural başlangıç saati 1 saat ileri set edilir
    * Kural başlangıç saati 5 dakika ileri set edilir
    * Kural gününü "Sat" olarak ayarlanır
    * Kural gününü "Mon" olarak ayarlanır
    * "SONRAKİ ADIM" butonuna basilir
    * "Kuralınızın sonucunu belirleyin" yazisi kontrol edilir
    * "Sonuç 1" yazisi kontrol edilir
    * "Cihaz Seçin" yazisi kontrol edilir
    * Kurallar "Cihaz Seçin" butonuna basilir
    * "E8L BM" set edilir
    * "Seç" textine basilir
    * Kurallar "Cihaz Koşulu Seçin" butonuna basilir
    * "Aç" set edilir
    * "Seç" textine basilir
    * "KAYDET" butonuna basilir
    * "Sonuç 1: E8L BM" yazisi kontrol edilir
    * "SONUÇ EKLE" yazisi kontrol edilir
    * "SONRAKİ ADIM" butonuna basilir
    * Kural adi "Bulaşık Makinemi Aç" girilir
    * "Done" butonuna basilir
    * "KAYDET" butonuna basilir
    * "Kural ekleme başarıyla tamamlandı!" yazisi kontrol edilir
    * "TAMAM" butonuna basilir
    * "KURALLAR" yazisi kontrol edilir
    * "1 Aktif" yazisi kontrol edilir
    * "1 Kural" yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "Bulaşık Makinemi Aç" yazisi kontrol edilir
    * "Zaman Bazlı" yazisi kontrol edilir
    * Kural asagi ok tusuna basilir
    * "E8L BM" yazisi kontrol edilir
    * "Açık" yazisi kontrol edilir
    * Cihazlar ikonuna basilir
    * Uygulama resetlenir
    * "E8L BM" detayina gidilir
    * "Bulaşık Makinemi Aç" yazisi kontrol edilir
    * "Zaman Bazlı" yazisi kontrol edilir
    * "Bulaşık Makinemi Aç" textine basilir
    * Kural asagi ok tusuna basilir
    * "1 Aktif" yazisi kontrol edilir
    * "1 Kural" yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "Bulaşık Makinemi Aç" yazisi kontrol edilir
    * "Zaman Bazlı" yazisi kontrol edilir
    * "E8L BM" yazisi kontrol edilir
    * "Açık" yazisi kontrol edilir
    * "Sil" butonuna basilir
    * "Kuralı silmek istediğinize emin misiniz?" yazisi kontrol edilir
    * Uyari popupi sil butonuna basilir
    * "Kural bulunamadı" yazisi icerdigi kontrol edilir

  @Kurallar
  Scenario: 027 Kurallar Posi Klima için zamanlama kuralı oluşturmanın kontrol edilmesi
    * Uygulama resetlenir
    * "KURALLAR" butonuna basilir
    * "KURAL EKLE" textine basilir
    * "Oluşturacağınız kuralın çeşidini" yazisi icerdigi kontrol edilir
    * "Zaman Bazlı" textine basilir
    * Kural başlangıç saati 1 saat ileri set edilir
    * Kural başlangıç saati 5 dakika ileri set edilir
    * Kural gününü "Wed" olarak ayarlanır
    * "SONRAKİ ADIM" butonuna basilir
    * "Kuralınızın sonucunu belirleyin" yazisi kontrol edilir
    * "Sonuç 1" yazisi kontrol edilir
    * "Cihaz Seçin" yazisi kontrol edilir
    * Kurallar "Cihaz Seçin" butonuna basilir
    * "Posi Klima" set edilir
    * "Seç" textine basilir
    * Kurallar "Cihaz Koşulu Seçin" butonuna basilir
    * "Aç" set edilir
    * "Seç" textine basilir
    * "KAYDET" butonuna basilir
    * "Sonuç 1: Posi Klima" yazisi kontrol edilir
    * "SONUÇ EKLE" yazisi kontrol edilir
    * "SONRAKİ ADIM" butonuna basilir
    * Kural adi "Klimamı Aç" girilir
    * "Done" butonuna basilir
    * "KAYDET" butonuna basilir
    * "Kuralınıza isim verin" yazisi kontrol edilir
    * "OLUŞTURDUĞUNUZ KURALA BİR İSİM VERİN" yazisi kontrol edilir
    * "Kural ekleme başarıyla tamamlandı!" yazisi kontrol edilir
    * "TAMAM" butonuna basilir
    * "KURALLAR" yazisi kontrol edilir
    * "1 Aktif" yazisi kontrol edilir
    * "1 Kural" yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "Klimamı Aç" yazisi kontrol edilir
    * "Zaman Bazlı" yazisi kontrol edilir
    * Kural asagi ok tusuna basilir
    * "Posi Klima" yazisi kontrol edilir
    * "Açık" yazisi kontrol edilir
    * "Sil" butonuna basilir
    * "Kuralı silmek istediğinize emin misiniz?" yazisi kontrol edilir
    * Uyari popupi sil butonuna basilir
    * "Kural bulunamadı" yazisi icerdigi kontrol edilir

  @Kurallar
  Scenario: 028 Kurallar Lokasyon kuralı oluşturma birinci adım kontrolü
    * Uygulama resetlenir
    * "KURALLAR" butonuna basilir
    * "KURAL EKLE" textine basilir
    * "Oluşturacağınız kuralın çeşidini" yazisi icerdigi kontrol edilir
    * "Konum Bazlı" textine basilir
    * Lokasyon izin bilgilendirme metni var ise onayla
    * Appbar "Gelişmiş Kural Oluştur" texti kontrol edilir
    * "Başlangıç" yazisi kontrol edilir
    * "Sonuç" yazisi kontrol edilir
    * "Kayıt" yazisi kontrol edilir
    * "01" yazisi kontrol edilir
    * "02" yazisi kontrol edilir
    * "03" yazisi kontrol edilir
    * "Kuralınızın hangi durumda etkin olacağını seçin" yazisi kontrol edilir
    * "Tuzla/İstanbul, 100 metre yarıçapında" yazisi kontrol edilir
    * "Düzenle" yazisi kontrol edilir
    * "Tetikleyici Durum" yazisi kontrol edilir
    * "SONRAKİ ADIM" yazisi kontrol edilir

  @Kurallar
  Scenario: 029 Kurallar zamanlama kuralı oluşturma ilk adımda iptal edilmenin kontrol edilmesi
    * Uygulama resetlenir
    * "KURALLAR" butonuna basilir
    * "KURAL EKLE" textine basilir
    * "Konum Bazlı" textine basilir
    * Lokasyon izin bilgilendirme metni var ise onayla
    * navigasyondan geri tusuna basilir
    * Appbar "Kural Ekle" texti kontrol edilir
    * "Oluşturacağınız kuralın çeşidini" yazisi icerdigi kontrol edilir
    * "Konum Bazlı" yazisi kontrol edilir
    * "Cihaz Bazlı" yazisi kontrol edilir
    * "Zaman Bazlı" yazisi kontrol edilir
    * navigasyondan geri tusuna basilir
    * "Kural bulunamadı" yazisi icerdigi kontrol edilir

  @Kurallar
  Scenario: 030 Kurallar lokasyon kuralı ikinci adımda iptal edilmesinin kontrol edilmesi
    * Uygulama resetlenir
    * "KURALLAR" butonuna basilir
    * "KURAL EKLE" textine basilir
    * "Konum Bazlı" textine basilir
    * Lokasyon izin bilgilendirme metni var ise onayla
    * Kurallar "Tetikleyici Durum" butonuna basilir
    * "Evden ayrıldığımda" set edilir
    * "Seç" textine basilir
    * "SONRAKİ ADIM" butonuna basilir
    * "Kuralınızın sonucunu belirleyin" yazisi kontrol edilir
    * "Sonuç 1" yazisi kontrol edilir
    * "Cihaz Seçin" yazisi kontrol edilir
    * Kurallar "Cihaz Seçin" butonuna basilir
    * "Lamba" set edilir
    * "Seç" textine basilir
    * Kurallar "Cihaz Koşulu Seçin" butonuna basilir
    * "Aç" set edilir
    * "Seç" textine basilir
    * "KAYDET" butonuna basilir
    * "Sonuç 1: Lamba" yazisi kontrol edilir
    * "SONUÇ EKLE" yazisi kontrol edilir
    * navigasyondan geri tusuna basilir
    * Appbar "Kural Ekle" texti kontrol edilir
    * "Oluşturacağınız kuralın çeşidini" yazisi icerdigi kontrol edilir
    * "Konum Bazlı" yazisi kontrol edilir
    * "Cihaz Bazlı" yazisi kontrol edilir
    * "Zaman Bazlı" yazisi kontrol edilir
    * navigasyondan geri tusuna basilir
    * "Kural bulunamadı" yazisi icerdigi kontrol edilir
#
  @Kurallar
  Scenario: 031 Kurallar lokasyon kuralı isim verme adımında iptal edilmesi
    * Uygulama resetlenir
    * "KURALLAR" butonuna basilir
    * "KURAL EKLE" textine basilir
    * "Konum Bazlı" textine basilir
    * Lokasyon izin bilgilendirme metni var ise onayla
    * Kurallar "Tetikleyici Durum" butonuna basilir
    * "Evden ayrıldığımda" set edilir
    * "Seç" textine basilir
    * "SONRAKİ ADIM" butonuna basilir
    * "Kuralınızın sonucunu belirleyin" yazisi kontrol edilir
    * "Sonuç 1" yazisi kontrol edilir
    * "Cihaz Seçin" yazisi kontrol edilir
    * Kurallar "Cihaz Seçin" butonuna basilir
    * "Priz" set edilir
    * "Seç" textine basilir
    * Kurallar "Cihaz Koşulu Seçin" butonuna basilir
    * "Aç" set edilir
    * "Seç" textine basilir
    * "KAYDET" butonuna basilir
    * "Sonuç 1: Priz" yazisi kontrol edilir
    * "SONUÇ EKLE" yazisi kontrol edilir
    * "SONRAKİ ADIM" butonuna basilir
    * "Kuralınıza isim verin" yazisi kontrol edilir
    * "OLUŞTURDUĞUNUZ KURALA BİR İSİM VERİN" yazisi kontrol edilir
    * "Kuralı şimdi aktif hale getir" yazisi kontrol edilir
    * Kural adi "İptal edilecek kural" girilir
    * "Done" butonuna basilir
    * navigasyondan geri tusuna basilir
    * Appbar "Kural Ekle" texti kontrol edilir
    * "Oluşturacağınız kuralın çeşidini" yazisi icerdigi kontrol edilir
    * "Konum Bazlı" yazisi kontrol edilir
    * "Cihaz Bazlı" yazisi kontrol edilir
    * "Zaman Bazlı" yazisi kontrol edilir
    * navigasyondan geri tusuna basilir
    * "Kural bulunamadı" yazisi icerdigi kontrol edilir

  @Kurallar
  Scenario: 032 Kurallar lokasyon kuralı oluşturmanın kontrol edilmesi
    * Uygulama resetlenir
    * "KURALLAR" butonuna basilir
    * "KURAL EKLE" textine basilir
    * "Konum Bazlı" textine basilir
    * Lokasyon izin bilgilendirme metni var ise onayla
    * Kurallar "Tetikleyici Durum" butonuna basilir
    * "Evden ayrıldığımda" set edilir
    * "Seç" textine basilir
    * "SONRAKİ ADIM" butonuna basilir
    * "Kuralınızın sonucunu belirleyin" yazisi kontrol edilir
    * "Sonuç 1" yazisi kontrol edilir
    * "Cihaz Seçin" yazisi kontrol edilir
    * Kurallar "Cihaz Seçin" butonuna basilir
    * "Priz" set edilir
    * "Seç" textine basilir
    * Kurallar "Cihaz Koşulu Seçin" butonuna basilir
    * "Aç" set edilir
    * "Seç" textine basilir
    * "KAYDET" butonuna basilir
    * "Sonuç 1: Priz" yazisi kontrol edilir
    * "SONUÇ EKLE" yazisi kontrol edilir
    * "SONRAKİ ADIM" butonuna basilir
    * "Kuralı şimdi aktif hale getir" yazisi kontrol edilir
    * Kural adi "Evden Ayrıldıgımda Priz Aç" girilir
    * "Done" butonuna basilir
    * "KAYDET" butonuna basilir
    * "Kural ekleme başarıyla tamamlandı!" yazisi kontrol edilir
    * "TAMAM" butonuna basilir
    * "Evden Ayrıldıgımda Priz Aç" yazisi kontrol edilir
    * "KURALLAR" yazisi kontrol edilir
    * "1 Aktif" yazisi kontrol edilir
    * "1 Kural" yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "Evden Ayrıldıgımda Priz Aç" yazisi kontrol edilir
    * "Konum Bazlı" yazisi kontrol edilir
    * "Evden ayrıldığımda" yazisi kontrol edilir
    * Kural asagi ok tusuna basilir
    * "Priz" yazisi kontrol edilir
    * "Açık" yazisi kontrol edilir
    * "Sil" butonuna basilir
    * "Kuralı silmek istediğinize emin misiniz?" yazisi kontrol edilir
    * Uyari popupi sil butonuna basilir
    * "Kural bulunamadı" yazisi icerdigi kontrol edilir

  @Kurallar
  Scenario Outline:033-041 Tum urunler için lokasyon kuralı olusturulması kontrolu
    * Cihazlar ikonuna basilir
    * Logout yapilir
    * Uygulamaya "<usr>" mail hesabiyla ve "<pwd>" sifresiyle login olunur
    * "KURALLAR" butonuna basilir
    * "KURAL EKLE" textine basilir
    * "Konum Bazlı" textine basilir
    * Lokasyon izin bilgilendirme metni var ise onayla
    * Kurallar "Tetikleyici Durum" butonuna basilir
    * "<trigger>" set edilir
    * "Seç" textine basilir
    * "SONRAKİ ADIM" yazisi kontrol edilir
    * "SONRAKİ ADIM" butonuna basilir
    * "Kuralınızın sonucunu belirleyin" yazisi kontrol edilir
    * "Sonuç 1" yazisi kontrol edilir
    * "Cihaz Seçin" yazisi kontrol edilir
    * Kurallar "Cihaz Seçin" butonuna basilir
    * "<device>" set edilir
    * "Seç" textine basilir
    * Kurallar "Cihaz Koşulu Seçin" butonuna basilir
    * "<result>" set edilir
    * "Seç" textine basilir
    * "KAYDET" butonuna basilir
    * "<res_text>" yazisi kontrol edilir
    * "SONUÇ EKLE" yazisi kontrol edilir
    * "SONRAKİ ADIM" butonuna basilir
    * "OLUŞTURDUĞUNUZ KURALA BİR İSİM VERİN" yazisi kontrol edilir
    * "Kuralı şimdi aktif hale getir" yazisi kontrol edilir
    * Kural adi "<rule_name>" girilir
    * "Done" butonuna basilir
    * "KAYDET" butonuna basilir
    * "Kural ekleme başarıyla tamamlandı!" yazisi kontrol edilir
    * "TAMAM" butonuna basilir
    * "1 Aktif" icerigi konrol edilir
    * "1 Kural" icerigi konrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "<rule_name>" yazisi kontrol edilir
    * "Konum Bazlı" yazisi kontrol edilir
    * "<trig_text>" yazisi kontrol edilir
    * Kural asagi ok tusuna basilir
    * "<device>" yazisi kontrol edilir
    * "<result>" yazisi kontrol edilir
    * "Sil" butonuna basilir
    * "Kuralı silmek istediğinize emin misiniz?" yazisi kontrol edilir
    * Uyari popupi sil butonuna basilir
    * "Kural bulunamadı" yazisi icerdigi kontrol edilir

    Examples:
    | usr                       | pwd       | trigger               | device        | result        | res_text                 | rule_name                        | trig_text           |
    |mobilotomasyon3@gmail.com  | 12345678  | Eve girdiğimde        | Priz          | Açık          |Sonuç 1: Priz             |Evden Ayrıldıgımda Priz Aç        | Eve girdiğimde      |
    |mobilotomasyon3@gmail.com  | 12345678  | Evden ayrıldığımda    | Lamba         | Kapalı        |Sonuç 1: Lamba            |Evden Ayrıldıgımda Lamba Kapa     | Evden ayrıldığımda  |
    |yazilimtestonay@gmail.com  | 12345678  | Eve girdiğimde        | Posi Klima    | Kapalı        |Sonuç 1: Posi Klima       |Klimayı aç                        | Eve girdiğimde      |
    |yazilimtestonay@gmail.com  | 12345678  | Evden ayrıldığımda    | E8L BM        | Açık          |Sonuç 1: E8L BM           |BM aç                             | Evden ayrıldığımda  |
    |yazilimtestonay@gmail.com  | 12345678  | Eve girdiğimde        | CM Digital Pro| Kapalı        |Sonuç 1: CM Digital Pro   |Digital kapa                      | Eve girdiğimde      |
    |hayri.odabas@arcelik.com   | 12345678  | Eve girdiğimde        | Apollo Pro D7S| Kapalı        |Sonuç 1: Apollo Pro D7S   |Kurutucu açık                     | Eve girdiğimde      |
    |hayri.odabas@arcelik.com   | 12345678  | Evden ayrıldığımda    | Rapple Firin  | Açık          |Sonuç 1: Rapple Firin     |Fırın_kapalı                      | Evden ayrıldığımda  |
    |mobilotomasyon1@gmail.com  | 12345678  | Evden ayrıldığımda    | Vega Leisure  | Açık          |Sonuç 1: Vega Leisure     |Firin kapa                        | Evden ayrıldığımda  |

#    #|mobilotomasyon2@gmail.com  | 12345678  | Eve girdiğimde        | Co2           | Uyku modunu aç|Sonuç 1: Co2              |co2 aç                            | Eve yaklaştığımda   |
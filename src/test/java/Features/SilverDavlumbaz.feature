@TumSenaryolar
Feature: SilverlineDavlumbaz
  Author: Hayri Odabas
  Date: 2022

  @SilverDavlumbaz
  Scenario: 001 SilverDavlumbaz acık iken ekran bilgilerinin kontrol edilmesi
    * Uygulama resetlenir
    * Logout yapilir
    * Uygulamaya "mobilotomasyon2@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    * Uygulama resetlenir
    * 10 saniye bekle
    * "Oturma Odası" yazisi kontrol edilir
    * "SilverDavlumbaz" detayina gidilir
    * "Açık" elementini bekle
    * Appbar "SilverDavlumbaz" texti kontrol edilir
    * Appbar subtitle "Oturma Odası" texti kontrol edilir
    * Uzaktan kontrol "Açık" texti kontrolu
    * "Beko" yazisi kontrol edilir
    * "Davlumbaz" yazisi kontrol edilir
    * "PROGRAM SEÇENEKLERİ" yazisi kontrol edilir
    * "Mod Seçimi" yazisi kontrol edilir
    * "Henüz kural oluşturmadınız." yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "CİHAZA TANIMLI KURALLAR" yazisi kontrol edilir
    * Ekrani "up" kaydir
    * "İPUÇLARI" yazisi kontrol edilir

  @SilverDavlumbaz
  Scenario: 002 SilverDavlumbaz acık iken cihaz sayfasinda uygulama arka plana atilip acildiginda baglanti kontrolu
    * Uygulama resetlenir
    * 10 saniye bekle
    * "SilverDavlumbaz" detayina gidilir
    * "Açık" elementini bekle
    * Appbar "SilverDavlumbaz" texti kontrol edilir
    * Appbar subtitle "Oturma Odası" texti kontrol edilir
    * Uzaktan kontrol "Açık" texti kontrolu
    * "Beko" yazisi kontrol edilir
    * "Davlumbaz" yazisi kontrol edilir
    * "PROGRAM SEÇENEKLERİ" yazisi kontrol edilir
    * "Mod Seçimi" yazisi kontrol edilir
    * "Henüz kural oluşturmadınız." yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "CİHAZA TANIMLI KURALLAR" yazisi kontrol edilir
    * Ekrani "up" kaydir
    * "İPUÇLARI" yazisi kontrol edilir
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * 10 saniye bekle
    * Appbar "SilverDavlumbaz" texti kontrol edilir
    * Appbar subtitle "Oturma Odası" texti kontrol edilir
    * Uzaktan kontrol "Açık" texti kontrolu
    * "Beko" yazisi kontrol edilir
    * "Davlumbaz" yazisi kontrol edilir
    * "PROGRAM SEÇENEKLERİ" yazisi kontrol edilir
    * "Mod Seçimi" yazisi kontrol edilir
    * "Henüz kural oluşturmadınız." yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * "CİHAZA TANIMLI KURALLAR" yazisi kontrol edilir
    * Ekrani "up" kaydir
    * "İPUÇLARI" yazisi kontrol edilir
  @SilverDavlumbaz
  Scenario: 003 SilverDavlumbaz Hava temizleme ekrani bilgilerinin kontrolu
    * Uygulama resetlenir
    * 10 saniye bekle
    * "SilverDavlumbaz" detayina gidilir
    * "Açık" elementini bekle
    * Appbar "SilverDavlumbaz" texti kontrol edilir
    * Appbar subtitle "Oturma Odası" texti kontrol edilir
    * "Beko" yazisi kontrol edilir
    * "PROGRAM SEÇENEKLERİ" yazisi kontrol edilir
    * Mod Secimi butonuna basilir
    * 10 saniye bekle
    * Appbar "SilverDavlumbaz" texti kontrol edilir
    * Appbar subtitle "oturma odası" texti kontrol edilir
    * "Hava Temizleme" yazisi kontrol edilir
    * "Işık" butonunun "0" oldugu kontrol edilir
    * "Işık" yazisi kontrol edilir
    * "Hava Temizleme" butonunun "0" oldugu kontrol edilir
    * "Fan Seviyesi" yazisi kontrol edilir
    * "Kapalı" yazisi kontrol edilir
  @SilverDavlumbaz
  Scenario: 004 SilverDavlumbaz Hava temizleme ekranindan hava temizleme ve isik butonlarının calistirilmasi
    * Uygulama resetlenir
    * 10 saniye bekle
    * "SilverDavlumbaz" detayina gidilir
    * "Açık" elementini bekle
    * Mod Secimi butonuna basilir
    * 10 saniye bekle
    * "Hava Temizleme" butonu "1" yapilir
    * 10 saniye bekle
    * "Hava Temizleme" butonunun "1" oldugu kontrol edilir
    * 10 saniye bekle
    * "Işık" butonu "1" yapilir
    * 10 saniye bekle
    * "Işık" butonunun "1" oldugu kontrol edilir
    * 10 saniye bekle
    * "Hava Temizleme" butonu "0" yapilir
    * 10 saniye bekle
    * "Hava Temizleme" butonunun "0" oldugu kontrol edilir
    * "Işık" butonu "0" yapilir
    * 10 saniye bekle
    * "Işık" butonunun "0" oldugu kontrol edilir

  @SilverDavlumbaz
  Scenario: 005 SilverDavlumbaz Hava Temizleme ekranında isik calisirken uygulama arka plana atilip tekrar acilmasinin kontrol edilmesi
    * Uygulama resetlenir
    * 10 saniye bekle
    * "SilverDavlumbaz" detayina gidilir
    * "Açık" elementini bekle
    * Mod Secimi butonuna basilir
    * 10 saniye bekle
    * "Hava Temizleme" butonu "1" yapilir
    * 10 saniye bekle
    * "Hava Temizleme" butonunun "1" oldugu kontrol edilir
    * "Işık" butonu "1" yapilir
    * 10 saniye bekle
    * "Işık" butonunun "1" oldugu kontrol edilir
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * 10 saniye bekle
    * Appbar "SilverDavlumbaz" texti kontrol edilir
    * Appbar subtitle "oturma odası" texti kontrol edilir
    * "Hava Temizleme" butonunun "1" oldugu kontrol edilir
    * "Işık" butonunun "1" oldugu kontrol edilir
    * "Işık" butonu "0" yapilir
    * 10 saniye bekle
    * "Işık" butonunun "0" oldugu kontrol edilir
    * "Hava Temizleme" butonu "0" yapilir
    * 10 saniye bekle
    * "Hava Temizleme" butonunun "0" oldugu kontrol edilir

  @SilverDavlumbaz
  Scenario: 006 SilverDavlumbaz Mod Secimi ekrani bilgilerinin kontrolu
    * Uygulama resetlenir
    * 10 saniye bekle
    * "SilverDavlumbaz" detayina gidilir
    * "Açık" elementini bekle
    * Appbar "SilverDavlumbaz" texti kontrol edilir
    * Appbar subtitle "Oturma Odası" texti kontrol edilir
    * "Beko" yazisi kontrol edilir
    * "PROGRAM SEÇENEKLERİ" yazisi kontrol edilir
    * Mod Secimi butonuna basilir
    * 10 saniye bekle
    * Appbar "SilverDavlumbaz" texti kontrol edilir
    * Appbar subtitle "oturma odası" texti kontrol edilir
    * Hava Temizleme off kontrol edilir
    * Isık butonu off kontrolu

  @SilverDavlumbaz
  Scenario: 007 SilverDavlumbaz Mod Secimi ekranından hava temizleme ve isik butonlarının calistirilmasi
    * Uygulama resetlenir
    * 10 saniye bekle
    * "SilverDavlumbaz" detayina gidilir
    * "Açık" elementini bekle
    * Mod Secimi butonuna basilir
    * 10 saniye bekle
    * Isık butonuna basilir
    * 10 saniye bekle
    * "Işık" yazisi kontrol edilir
    * Isık butonu on kontrolu
    * 10 saniye bekle
    * Hava temizleme on konumuna getirilir
    * 10 saniye bekle
    * "Hava Temizleme" yazisi kontrol edilir
    * Hava Temizleme on kontrol edilir
    * Hava Temizleme off konumuna getirilir
    * 10 saniye bekle
    * "Hava Temizleme" yazisi kontrol edilir
    * Hava Temizleme off kontrol edilir
    * Isık butonu off konumuna getirilir
    * 10 saniye bekle
    * Isık butonu off kontrolu

  @SilverDavlumbaz
  Scenario: 008 SilverDavlumbaz Mod Secimi ekranında hava temizleme ve isik calisirken uygulama arka plana atilip tekrar acilmasinin kontrol edilmesi
    * Uygulama resetlenir
    * 10 saniye bekle
    * "SilverDavlumbaz" detayina gidilir
    * "Açık" elementini bekle
    * Mod Secimi butonuna basilir
    * 10 saniye bekle
    * Hava Temizleme off kontrol edilir
    * Isık butonu off kontrolu
    * Isık butonuna basilir
    * 10 saniye bekle
    * "Işık" yazisi kontrol edilir
    * Isık butonu on kontrolu
    * Hava temizleme on konumuna getirilir
    * 10 saniye bekle
    * "Hava Temizleme" yazisi kontrol edilir
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * 10 saniye bekle
    * Appbar "SilverDavlumbaz" texti kontrol edilir
    * Appbar subtitle "oturma odası" texti kontrol edilir
    * "Hava Temizleme" yazisi kontrol edilir
    * Hava temizleme on konumuna getirilir
    * "Işık" yazisi kontrol edilir
    * Isık butonu on kontrolu
    * Isık butonu off konumuna getirilir
    * 10 saniye bekle
    * Isık butonu off kontrolu
    * Hava Temizleme off konumuna getirilir
    * 10 saniye bekle
    * Hava Temizleme off kontrol edilir

  @SilverDavlumbaz
  Scenario: 009 SilverDavlumbaz Hava Temizleme ekranindan mod secimi ekranina gecis ve hava temizlemenin devamı kontrolü
    * Uygulama resetlenir
    * 10 saniye bekle
    * "SilverDavlumbaz" detayina gidilir
    * "Açık" elementini bekle
    * Hava Temizleme butonuna basilir
    * 10 saniye bekle
    * Hava Temizleme on kontrol edilir
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * Appbar "SilverDavlumbaz" texti kontrol edilir
    * Appbar subtitle "Oturma Odası" texti kontrol edilir
    * Uzaktan kontrol "Açık" texti kontrolu
    * Mod Secimi butonuna basilir
    * 10 saniye bekle
    * Appbar "SilverDavlumbaz" texti kontrol edilir
    * Appbar subtitle "oturma odası" texti kontrol edilir
    * "Hava Temizleme" yazisi kontrol edilir
    * Hava Temizleme on kontrol edilir
    * "Işık" yazisi kontrol edilir
    * Isık butonu off kontrolu
    * Hava Temizleme off konumuna getirilir
    * 10 saniye bekle
    * Hava Temizleme off kontrol edilir

  @SilverDavlumbaz
  Scenario: 010 SilverDavlumbaz Mod secimi ekranindan hava temizleme ekranina gecis ve isik acik kalmasının kontrolü
    * Uygulama resetlenir
    * 10 saniye bekle
    * "SilverDavlumbaz" detayina gidilir
    * "Açık" elementini bekle
    * Mod Secimi butonuna basilir
    * 10 saniye bekle
    * Isık butonu off kontrolu
    * Isık butonuna basilir
    * 10 saniye bekle
    * "Işık" yazisi kontrol edilir
    * Isık butonu on kontrolu
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * Appbar "SilverDavlumbaz" texti kontrol edilir
    * Appbar subtitle "Oturma Odası" texti kontrol edilir
    * Uzaktan kontrol "Açık" texti kontrolu
    * Hava Temizleme butonuna basilir
    * 10 saniye bekle
    * Appbar "SilverDavlumbaz" texti kontrol edilir
    * Appbar subtitle "oturma odası" texti kontrol edilir
    * "Hava Temizleme" yazisi kontrol edilir
    * Hava Temizleme on kontrol edilir
    * "Işık" yazisi kontrol edilir
    * Isık butonu on kontrolu
    * Hava Temizleme off konumuna getirilir
    * 10 saniye bekle
    * "Hava Temizleme" yazisi kontrol edilir
    * Hava Temizleme off kontrol edilir
    * Isık butonu off konumuna getirilir
    * 10 saniye bekle
    * "Işık" yazisi kontrol edilir
    * Isık butonu off kontrolu

  @SilverDavlumbaz
  Scenario: 011 SilverDavlumbaz Hava Temizleme ekranından Isik ve hava temizleme calısırken uygulamanın kapatilip tekrar acilmasinin kontrol edilmesi
    * Uygulama resetlenir
    * 10 saniye bekle
    * "SilverDavlumbaz" detayina gidilir
    * "Açık" elementini bekle
    * Hava Temizleme butonuna basilir
    * 10 saniye bekle
    * Isık butonuna basilir
    * 10 saniye bekle
    * "Işık" yazisi kontrol edilir
    * Isık butonu on kontrolu
    * Hava Temizleme on kontrol edilir
    * Uygulama kill edilip 30 sn sonra acilir
    * 10 saniye bekle
    * "SilverDavlumbaz" detayina gidilir
    * "Açık" elementini bekle
    * Appbar "SilverDavlumbaz" texti kontrol edilir
    * Appbar subtitle "Oturma Odası" texti kontrol edilir
    * Uzaktan kontrol "Açık" texti kontrolu
    * "Beko" yazisi kontrol edilir
    * "PROGRAM SEÇENEKLERİ" yazisi kontrol edilir
    * "Hava Temizleme" yazisi kontrol edilir
    * "Mod Seçimi" yazisi kontrol edilir
    * "CİHAZA TANIMLI KURALLAR" yazisi kontrol edilir
    * Hava Temizleme butonuna basilir
    * 10 saniye bekle
    * Appbar "SilverDavlumbaz" texti kontrol edilir
    * Appbar subtitle "oturma odası" texti kontrol edilir
    * "Hava Temizleme" yazisi kontrol edilir
    * Hava Temizleme on kontrol edilir
    * Isık butonu on kontrolu
    * Isık butonu off konumuna getirilir
    * 10 saniye bekle
    * Isık butonu off kontrolu
    * Hava Temizleme off konumuna getirilir
    * 10 saniye bekle
    * Hava Temizleme off kontrol edilir

  @SilverDavlumbaz
  Scenario: 012 SilverDavlumbaz Mod secimi ekranından Isik ve hava temizleme calısırken uygulamanın kapatilip tekrar acilmasinin kontrol edilmesi
    * Uygulama resetlenir
    * 10 saniye bekle
    * "SilverDavlumbaz" detayina gidilir
    * "Açık" elementini bekle
    * Mod Secimi butonuna basilir
    * 10 saniye bekle
    * Isık butonuna basilir
    * 10 saniye bekle
    * "Işık" yazisi kontrol edilir
    * Isık butonu on kontrolu
    * Hava temizleme on konumuna getirilir
    * 10 saniye bekle
    * "Hava Temizleme" yazisi kontrol edilir
    * Hava Temizleme on kontrol edilir
    * Uygulama kill edilip 30 sn sonra acilir
    * 10 saniye bekle
    * "SilverDavlumbaz" detayina gidilir
    * "Açık" elementini bekle
    * Appbar "SilverDavlumbaz" texti kontrol edilir
    * Appbar subtitle "Oturma Odası" texti kontrol edilir
    * Uzaktan kontrol "Açık" texti kontrolu
    * "Beko" yazisi kontrol edilir
    * "PROGRAM SEÇENEKLERİ" yazisi kontrol edilir
    * "Hava Temizleme" yazisi kontrol edilir
    * "Mod Seçimi" yazisi kontrol edilir
    * "CİHAZA TANIMLI KURALLAR" yazisi kontrol edilir
    * Mod Secimi butonuna basilir
    * 10 saniye bekle
    * Appbar "SilverDavlumbaz" texti kontrol edilir
    * Appbar subtitle "oturma odası" texti kontrol edilir
    * "Hava Temizleme" yazisi kontrol edilir
    * Hava Temizleme on kontrol edilir
    * Isık butonu on kontrolu
    * Isık butonu off konumuna getirilir
    * 10 saniye bekle
    * Isık butonu off kontrolu
    * Hava Temizleme off konumuna getirilir
    * 10 saniye bekle
    * Hava Temizleme off kontrol edilir

  @SilverDavlumbaz
    Scenario: 013 SilverDavlumbaz Cihaz bilgileri menusunun kontrol edilmesi
    * Uygulama resetlenir
    * 10 saniye bekle
    * "SilverDavlumbaz" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz bilgilerine tiklanir
    * 10 saniye bekle
    * "CİHAZ KİMLİĞİ" yazisi kontrol edilir
    * "Beko" markasi kontrol edilir
    * "1234567890" Model numarasi kontrol edilir
    * "F999939849542581002628" Digital kimlik no kontrol edilir
    * "YAZILIM" yazisi kontrol edilir
    * "VERSİYON" yazisi kontrol edilir
    * "12.0.1 / - / 5.0.20 / - / -" versiyon numarasi kontrol edilir
    * "Ürün yazılımı güncel" yazisi kontrol edilir
    * navigasyondan geri tusuna basilir

  @SilverDavlumbaz
  Scenario: 014 SilverDavlumbaz Ayarlar menusu ekrani bilgilerinin kontrol edilmesi
    * Uygulama resetlenir
    * 10 saniye bekle
    * "SilverDavlumbaz" detayina gidilir
    * "Açık" elementini bekle
    * 10 saniye bekle
    * Ayarlar alanina tiklanir
    * 10 saniye bekle
    * "Cihaz Ayarları" yazisi kontrol edilir
    * "Uyarı Görüntüleme Ayarları" yazisi kontrol edilir
    * "Bildirim Ayarları" yazisi kontrol edilir

  @SilverDavlumbaz
  Scenario: 015 SilverDavlumbaz Cihaz Ayarlari ekrani bilgilerinin kontrol edilmesi
    * Uygulama resetlenir
    * 10 saniye bekle
    * "SilverDavlumbaz" detayina gidilir
    * "Açık" elementini bekle
    * Ayarlar alanina tiklanir
    * 10 saniye bekle
    * "Cihaz Ayarları" yazisi kontrol edilir
    * "Cihaz Ayarları" textine basilir
    * 10 saniye bekle
    * "Kir Filtresi Seviyesini Sıfırla" yazisi kontrol edilir

  @SilverDavlumbaz
  Scenario: 016 SilverDavlumbaz Uyarı Tercihleri ekrani bilgilerinin kontrol edilmesi
    * Uygulama resetlenir
    * 10 saniye bekle
    * "SilverDavlumbaz" detayina gidilir
    * "Açık" elementini bekle
    * 10 saniye bekle
    * Ayarlar alanina tiklanir
    * 10 saniye bekle
    * "Uyarı Görüntüleme Ayarları" yazisi kontrol edilir
    * "Uyarı Görüntüleme Ayarları" textine basilir
    * 10 saniye bekle
    * "Filtrenin temizlenmesi gerekiyor" yazisi kontrol edilir

  @SilverDavlumbaz
  Scenario: 017 SilverDavlumbaz Bildirim Tercihleri ekrani bilgilerinin kontrol edilmesi
    * Uygulama resetlenir
    * 10 saniye bekle
    * "SilverDavlumbaz" detayina gidilir
    * "Açık" elementini bekle
    * Ayarlar alanina tiklanir
    * 10 saniye bekle
    * "Bildirim Ayarları" yazisi kontrol edilir
    * "Bildirim Ayarları" textine basilir
    * 10 saniye bekle
    * "Filtrenin temizlenmesi gerekiyor" yazisi kontrol edilir

  @SilverDavlumbaz
  Scenario: 018 SilverDavlumbaz Cihaz Ayarlari ekranından Kir Filtresi Seviyesini Sıfırla ayari acikken uygulamanın kapatilip tekrar acilmasinin kontrolu
    * Uygulama resetlenir
    * 10 saniye bekle
    * "SilverDavlumbaz" detayina gidilir
    * "Açık" elementini bekle
    * Ayarlar alanina tiklanir
    * 10 saniye bekle
    * "Cihaz Ayarları" textine basilir
    * 10 saniye bekle
    #çıkarken posif yapılması gerekiyor BURAYI DUZELT *******
    * Kir Filtresi Seviyesini Sifirla aktif yapılır
    * 10 saniye bekle
    * Kir Filtresi Seviyesini Aktif kontrolu
    * Uygulama kill edilip 30 sn sonra acilir
    * 10 saniye bekle
    * "SilverDavlumbaz" detayina gidilir
    * "Açık" elementini bekle
    * 10 saniye bekle
    * Ayarlar alanina tiklanir
    * 10 saniye bekle
    * "Cihaz Ayarları" textine basilir
    * 10 saniye bekle
    * "Kir Filtresi Seviyesini Sıfırla" yazisi kontrol edilir

  @SilverDavlumbaz
  Scenario: 019 SilverDavlumbaz Uyarı Tercihleri ekranından Tüm Uyarilari Ac ve Filtrenin Temizlenmesi Gerekiyor ayarlari acikken uygulamanın kapatilip tekrar acilmasinin kontrolu
    * Uygulama resetlenir
    * 10 saniye bekle
    * "SilverDavlumbaz" detayina gidilir
    * "Açık" elementini bekle
    * Ayarlar alanina tiklanir
    * 10 saniye bekle
    * "Bildirim Ayarları" textine basilir
    * 10 saniye bekle
    * Filtrenin temizlenmesi gerekiyor on yapilir
    * 3 saniye bekle
    * "Kaydet" butonuna basilir
    * 3 saniye bekle
    * "TAMAM" butonuna basilir
    * 3 saniye bekle
    * Filtrenin temizlenmesi gerekiyor on kontrolu
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * Uygulama kill edilip 30 sn sonra acilir
    * 10 saniye bekle
    * "SilverDavlumbaz" detayina gidilir
    * "Açık" elementini bekle
    * 10 saniye bekle
    * Ayarlar alanina tiklanir
    * 10 saniye bekle
    * "Bildirim Ayarları" textine basilir
    * 10 saniye bekle
    * Filtrenin temizlenmesi gerekiyor on kontrolu
    * Filtrenin temizlenmesi gerekiyor off yapilir
    * 3 saniye bekle
    * "Kaydet" butonuna basilir
    * 3 saniye bekle
    * "TAMAM" butonuna basilir
    * 3 saniye bekle

  @SilverDavlumbaz
  Scenario: 020 SilverDavlumbaz Bildirim Tercihleri ekranından Tüm Bildirimleri Ac ve Filtrenin Temizlenmesi Gerekiyor ayarlari acikken uygulamanın kapatilip tekrar acilmasinin kontrolu
    * Uygulama resetlenir
    * 10 saniye bekle
    * "SilverDavlumbaz" detayina gidilir
    * "Açık" elementini bekle
    * Ayarlar alanina tiklanir
    * 10 saniye bekle
    * "Uyarı Görüntüleme Ayarları" textine basilir
    * 10 saniye bekle
    * Filtrenin temizlenmesi gerekiyor off yapilir
    * 3 saniye bekle
    * Filtrenin temizlenmesi gerekiyor off kontrolu
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * Uygulama kill edilip 30 sn sonra acilir
    * 10 saniye bekle
    * "SilverDavlumbaz" detayina gidilir
    * "Açık" elementini bekle
    * 10 saniye bekle
    * Ayarlar alanina tiklanir
    * 10 saniye bekle
    * "Bildirim Ayarları" textine basilir
    * 10 saniye bekle
    * Filtrenin temizlenmesi gerekiyor off kontrolu
    * Filtrenin temizlenmesi gerekiyor on yapilir
    * 5 saniye bekle

  @SilverDavlumbaz
  Scenario: 021 SilverDavlumbaz Mod Secimi ekrani fan seviyesi ve ışık durum degistirme kontrolu
    * Uygulama resetlenir
    * 10 saniye bekle
    * "SilverDavlumbaz" detayina gidilir
    * "Açık" elementini bekle
    * Mod Secimi butonuna basilir
    * 10 saniye bekle
    * Fan seviyesi "3" olarak ayarlanir
    * 5 saniye bekle
    * "Işık" butonu "1" yapilir
    * 20 saniye bekle
    * "Işık" butonunun "1" oldugu kontrol edilir
    * Fan seviyesi "P" olarak ayarlanir
    * 20 saniye bekle
    * "Işık" butonunun "1" oldugu kontrol edilir
    * Fan seviyesi "1" olarak ayarlanir
    * 20 saniye bekle
    * "Işık" butonunun "1" oldugu kontrol edilir
    * "Işık" butonu "Kapalı" yapilir
    * 5 saniye bekle
    * Fan seviyesi "Kapalı" olarak ayarlanir
    * 20 saniye bekle
    * Appbar "SilverDavlumbaz" texti kontrol edilir
    * Appbar subtitle "oturma odası" texti kontrol edilir
    * "Hava Temizleme" yazisi kontrol edilir
    * Hava Temizleme off kontrol edilir
    * "Işık" yazisi kontrol edilir
    * Isık butonu off kontrolu
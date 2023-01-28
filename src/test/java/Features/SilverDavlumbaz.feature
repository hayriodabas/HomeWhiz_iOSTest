@TumSenaryolar
Feature: SilverlineDavlumbaz
  Author: Hayri Odabas
  Date: 2022

  @SilverDavlumbaz
  Scenario: 001 SilverDavlumbaz acık iken ekran bilgilerinin kontrol edilmesi
    Given Uygulama resetlenir
    Given Logout yapilir
    Given Uygulamaya "mobilotomasyon2@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    Given Uygulama resetlenir
    Then 10 saniye bekle
    Then "Oturma Odası" yazisi kontrol edilir
    Then "SilverDavlumbaz" detayina gidilir
    When "Açık" elementini bekle
    Then Appbar "SilverDavlumbaz" texti kontrol edilir
    Then Appbar subtitle "Oturma Odası" texti kontrol edilir
    Then Uzaktan kontrol "Açık" texti kontrolu
    Then "Beko" yazisi kontrol edilir
    Then "Davlumbaz" yazisi kontrol edilir
    Then "PROGRAM SEÇENEKLERİ" yazisi kontrol edilir
    Then "Mod Seçimi" yazisi kontrol edilir
    Then "Henüz kural oluşturmadınız." yazisi kontrol edilir
    Then "KURAL EKLE" yazisi kontrol edilir
    Then "CİHAZA TANIMLI KURALLAR" yazisi kontrol edilir
    And Ekrani "up" kaydir
    Then "İPUÇLARI" yazisi kontrol edilir

  @SilverDavlumbaz
  Scenario: 002 SilverDavlumbaz acık iken cihaz sayfasinda uygulama arka plana atilip acildiginda baglanti kontrolu
    Given Uygulama resetlenir
    Then 10 saniye bekle
    Then "SilverDavlumbaz" detayina gidilir
    When "Açık" elementini bekle
    Then Appbar "SilverDavlumbaz" texti kontrol edilir
    Then Appbar subtitle "Oturma Odası" texti kontrol edilir
    Then Uzaktan kontrol "Açık" texti kontrolu
    Then "Beko" yazisi kontrol edilir
    Then "Davlumbaz" yazisi kontrol edilir
    Then "PROGRAM SEÇENEKLERİ" yazisi kontrol edilir
    Then "Mod Seçimi" yazisi kontrol edilir
    Then "Henüz kural oluşturmadınız." yazisi kontrol edilir
    Then "KURAL EKLE" yazisi kontrol edilir
    Then "CİHAZA TANIMLI KURALLAR" yazisi kontrol edilir
    And Ekrani "up" kaydir
    Then "İPUÇLARI" yazisi kontrol edilir
    And Uygulamayi 30 saniye arka planda tut sonra aktive et
    And 10 saniye bekle
    Then Appbar "SilverDavlumbaz" texti kontrol edilir
    Then Appbar subtitle "Oturma Odası" texti kontrol edilir
    Then Uzaktan kontrol "Açık" texti kontrolu
    Then "Beko" yazisi kontrol edilir
    Then "Davlumbaz" yazisi kontrol edilir
    Then "PROGRAM SEÇENEKLERİ" yazisi kontrol edilir
    Then "Mod Seçimi" yazisi kontrol edilir
    Then "Henüz kural oluşturmadınız." yazisi kontrol edilir
    Then "KURAL EKLE" yazisi kontrol edilir
    Then "CİHAZA TANIMLI KURALLAR" yazisi kontrol edilir
    And Ekrani "up" kaydir
    Then "İPUÇLARI" yazisi kontrol edilir
  @SilverDavlumbaz
  Scenario: 003 SilverDavlumbaz Hava temizleme ekrani bilgilerinin kontrolu
    Given Uygulama resetlenir
    Then 10 saniye bekle
    Then "SilverDavlumbaz" detayina gidilir
    When "Açık" elementini bekle
    Then Appbar "SilverDavlumbaz" texti kontrol edilir
    Then Appbar subtitle "Oturma Odası" texti kontrol edilir
    Then "Beko" yazisi kontrol edilir
    Then "PROGRAM SEÇENEKLERİ" yazisi kontrol edilir
    Then Mod Secimi butonuna basilir
    And 10 saniye bekle
    Then Appbar "SilverDavlumbaz" texti kontrol edilir
    Then Appbar subtitle "oturma odası" texti kontrol edilir
    Then "Hava Temizleme" yazisi kontrol edilir
    And "Işık" butonunun "0" oldugu kontrol edilir
    Then "Işık" yazisi kontrol edilir
    And "Hava Temizleme" butonunun "0" oldugu kontrol edilir
    Then "Fan Seviyesi" yazisi kontrol edilir
    Then "Kapalı" yazisi kontrol edilir
  @SilverDavlumbaz
  Scenario: 004 SilverDavlumbaz Hava temizleme ekranindan hava temizleme ve isik butonlarının calistirilmasi
    Given Uygulama resetlenir
    Then 10 saniye bekle
    Then "SilverDavlumbaz" detayina gidilir
    When "Açık" elementini bekle
    Then Mod Secimi butonuna basilir
    And 10 saniye bekle
    Then "Hava Temizleme" butonu "1" yapilir
    And 10 saniye bekle
    And "Hava Temizleme" butonunun "1" oldugu kontrol edilir
    And 10 saniye bekle
    Then "Işık" butonu "1" yapilir
    And 10 saniye bekle
    And "Işık" butonunun "1" oldugu kontrol edilir
    And 10 saniye bekle
    Then "Hava Temizleme" butonu "0" yapilir
    And 10 saniye bekle
    And "Hava Temizleme" butonunun "0" oldugu kontrol edilir
    Then "Işık" butonu "0" yapilir
    And 10 saniye bekle
    And "Işık" butonunun "0" oldugu kontrol edilir

  @SilverDavlumbaz
  Scenario: 005 SilverDavlumbaz Hava Temizleme ekranında isik calisirken uygulama arka plana atilip tekrar acilmasinin kontrol edilmesi
    Given Uygulama resetlenir
    Then 10 saniye bekle
    Then "SilverDavlumbaz" detayina gidilir
    When "Açık" elementini bekle
    Then Mod Secimi butonuna basilir
    And 10 saniye bekle
    Then "Hava Temizleme" butonu "1" yapilir
    And 10 saniye bekle
    And "Hava Temizleme" butonunun "1" oldugu kontrol edilir
    Then "Işık" butonu "1" yapilir
    And 10 saniye bekle
    And "Işık" butonunun "1" oldugu kontrol edilir
    And Uygulamayi 30 saniye arka planda tut sonra aktive et
    And 10 saniye bekle
    Then Appbar "SilverDavlumbaz" texti kontrol edilir
    Then Appbar subtitle "oturma odası" texti kontrol edilir
    And "Hava Temizleme" butonunun "1" oldugu kontrol edilir
    And "Işık" butonunun "1" oldugu kontrol edilir
    Then "Işık" butonu "0" yapilir
    And 10 saniye bekle
    And "Işık" butonunun "0" oldugu kontrol edilir
    Then "Hava Temizleme" butonu "0" yapilir
    And 10 saniye bekle
    And "Hava Temizleme" butonunun "0" oldugu kontrol edilir

  @SilverDavlumbaz
  Scenario: 006 SilverDavlumbaz Mod Secimi ekrani bilgilerinin kontrolu
    Given Uygulama resetlenir
    Then 10 saniye bekle
    Then "SilverDavlumbaz" detayina gidilir
    When "Açık" elementini bekle
    Then Appbar "SilverDavlumbaz" texti kontrol edilir
    Then Appbar subtitle "Oturma Odası" texti kontrol edilir
    Then "Beko" yazisi kontrol edilir
    Then "PROGRAM SEÇENEKLERİ" yazisi kontrol edilir
    Then Mod Secimi butonuna basilir
    And 10 saniye bekle
    Then Appbar "SilverDavlumbaz" texti kontrol edilir
    Then Appbar subtitle "oturma odası" texti kontrol edilir
    Then Hava Temizleme off kontrol edilir
    Then Isık butonu off kontrolu

  @SilverDavlumbaz
  Scenario: 007 SilverDavlumbaz Mod Secimi ekranından hava temizleme ve isik butonlarının calistirilmasi
    Given Uygulama resetlenir
    Then 10 saniye bekle
    Then "SilverDavlumbaz" detayina gidilir
    When "Açık" elementini bekle
    Then Mod Secimi butonuna basilir
    And 10 saniye bekle
    And Isık butonuna basilir
    And 10 saniye bekle
    Then "Işık" yazisi kontrol edilir
    Then Isık butonu on kontrolu
    And 10 saniye bekle
    And Hava temizleme on konumuna getirilir
    And 10 saniye bekle
    Then "Hava Temizleme" yazisi kontrol edilir
    Then Hava Temizleme on kontrol edilir
    Then Hava Temizleme off konumuna getirilir
    And 10 saniye bekle
    Then "Hava Temizleme" yazisi kontrol edilir
    Then Hava Temizleme off kontrol edilir
    And Isık butonu off konumuna getirilir
    And 10 saniye bekle
    Then Isık butonu off kontrolu

  @SilverDavlumbaz
  Scenario: 008 SilverDavlumbaz Mod Secimi ekranında hava temizleme ve isik calisirken uygulama arka plana atilip tekrar acilmasinin kontrol edilmesi
    Given Uygulama resetlenir
    Then 10 saniye bekle
    Then "SilverDavlumbaz" detayina gidilir
    When "Açık" elementini bekle
    Then Mod Secimi butonuna basilir
    And 10 saniye bekle
    Then Hava Temizleme off kontrol edilir
    Then Isık butonu off kontrolu
    Then Isık butonuna basilir
    And 10 saniye bekle
    Then "Işık" yazisi kontrol edilir
    Then Isık butonu on kontrolu
    Then Hava temizleme on konumuna getirilir
    And 10 saniye bekle
    Then "Hava Temizleme" yazisi kontrol edilir
    And Uygulamayi 30 saniye arka planda tut sonra aktive et
    And 10 saniye bekle
    Then Appbar "SilverDavlumbaz" texti kontrol edilir
    Then Appbar subtitle "oturma odası" texti kontrol edilir
    Then "Hava Temizleme" yazisi kontrol edilir
    Then Hava temizleme on konumuna getirilir
    Then "Işık" yazisi kontrol edilir
    Then Isık butonu on kontrolu
    Then Isık butonu off konumuna getirilir
    And 10 saniye bekle
    Then Isık butonu off kontrolu
    Then Hava Temizleme off konumuna getirilir
    And 10 saniye bekle
    Then Hava Temizleme off kontrol edilir

  @SilverDavlumbaz
  Scenario: 009 SilverDavlumbaz Hava Temizleme ekranindan mod secimi ekranina gecis ve hava temizlemenin devamı kontrolü
    Given Uygulama resetlenir
    Then 10 saniye bekle
    Then "SilverDavlumbaz" detayina gidilir
    When "Açık" elementini bekle
    Then Hava Temizleme butonuna basilir
    And 10 saniye bekle
    Then Hava Temizleme on kontrol edilir
    Then navigasyondan geri tusuna basilir
    And 3 saniye bekle
    Then Appbar "SilverDavlumbaz" texti kontrol edilir
    Then Appbar subtitle "Oturma Odası" texti kontrol edilir
    Then Uzaktan kontrol "Açık" texti kontrolu
    Then Mod Secimi butonuna basilir
    And 10 saniye bekle
    Then Appbar "SilverDavlumbaz" texti kontrol edilir
    Then Appbar subtitle "oturma odası" texti kontrol edilir
    Then "Hava Temizleme" yazisi kontrol edilir
    Then Hava Temizleme on kontrol edilir
    Then "Işık" yazisi kontrol edilir
    Then Isık butonu off kontrolu
    Then Hava Temizleme off konumuna getirilir
    And 10 saniye bekle
    Then Hava Temizleme off kontrol edilir

  @SilverDavlumbaz
  Scenario: 010 SilverDavlumbaz Mod secimi ekranindan hava temizleme ekranina gecis ve isik acik kalmasının kontrolü
    Given Uygulama resetlenir
    Then 10 saniye bekle
    Then "SilverDavlumbaz" detayina gidilir
    When "Açık" elementini bekle
    Then Mod Secimi butonuna basilir
    And 10 saniye bekle
    Then Isık butonu off kontrolu
    Then Isık butonuna basilir
    And 10 saniye bekle
    Then "Işık" yazisi kontrol edilir
    Then Isık butonu on kontrolu
    Then navigasyondan geri tusuna basilir
    And 3 saniye bekle
    Then Appbar "SilverDavlumbaz" texti kontrol edilir
    Then Appbar subtitle "Oturma Odası" texti kontrol edilir
    Then Uzaktan kontrol "Açık" texti kontrolu
    Then Hava Temizleme butonuna basilir
    And 10 saniye bekle
    Then Appbar "SilverDavlumbaz" texti kontrol edilir
    Then Appbar subtitle "oturma odası" texti kontrol edilir
    Then "Hava Temizleme" yazisi kontrol edilir
    Then Hava Temizleme on kontrol edilir
    Then "Işık" yazisi kontrol edilir
    Then Isık butonu on kontrolu
    Then Hava Temizleme off konumuna getirilir
    And 10 saniye bekle
    Then "Hava Temizleme" yazisi kontrol edilir
    Then Hava Temizleme off kontrol edilir
    Then Isık butonu off konumuna getirilir
    And 10 saniye bekle
    Then "Işık" yazisi kontrol edilir
    Then Isık butonu off kontrolu

  @SilverDavlumbaz
  Scenario: 011 SilverDavlumbaz Hava Temizleme ekranından Isik ve hava temizleme calısırken uygulamanın kapatilip tekrar acilmasinin kontrol edilmesi
    Given Uygulama resetlenir
    Then 10 saniye bekle
    Then "SilverDavlumbaz" detayina gidilir
    When "Açık" elementini bekle
    Then Hava Temizleme butonuna basilir
    And 10 saniye bekle
    Then Isık butonuna basilir
    And 10 saniye bekle
    Then "Işık" yazisi kontrol edilir
    Then Isık butonu on kontrolu
    Then Hava Temizleme on kontrol edilir
    And Uygulama kill edilip 30 sn sonra acilir
    And 10 saniye bekle
    Then "SilverDavlumbaz" detayina gidilir
    When "Açık" elementini bekle
    Then Appbar "SilverDavlumbaz" texti kontrol edilir
    Then Appbar subtitle "Oturma Odası" texti kontrol edilir
    Then Uzaktan kontrol "Açık" texti kontrolu
    Then "Beko" yazisi kontrol edilir
    Then "PROGRAM SEÇENEKLERİ" yazisi kontrol edilir
    Then "Hava Temizleme" yazisi kontrol edilir
    Then "Mod Seçimi" yazisi kontrol edilir
    Then "CİHAZA TANIMLI KURALLAR" yazisi kontrol edilir
    Then Hava Temizleme butonuna basilir
    And 10 saniye bekle
    Then Appbar "SilverDavlumbaz" texti kontrol edilir
    Then Appbar subtitle "oturma odası" texti kontrol edilir
    Then "Hava Temizleme" yazisi kontrol edilir
    Then Hava Temizleme on kontrol edilir
    Then Isık butonu on kontrolu
    Then Isık butonu off konumuna getirilir
    And 10 saniye bekle
    Then Isık butonu off kontrolu
    Then Hava Temizleme off konumuna getirilir
    And 10 saniye bekle
    Then Hava Temizleme off kontrol edilir

  @SilverDavlumbaz
  Scenario: 012 SilverDavlumbaz Mod secimi ekranından Isik ve hava temizleme calısırken uygulamanın kapatilip tekrar acilmasinin kontrol edilmesi
    Given Uygulama resetlenir
    Then 10 saniye bekle
    Then "SilverDavlumbaz" detayina gidilir
    When "Açık" elementini bekle
    Then Mod Secimi butonuna basilir
    And 10 saniye bekle
    Then Isık butonuna basilir
    And 10 saniye bekle
    Then "Işık" yazisi kontrol edilir
    Then Isık butonu on kontrolu
    Then Hava temizleme on konumuna getirilir
    And 10 saniye bekle
    Then "Hava Temizleme" yazisi kontrol edilir
    Then Hava Temizleme on kontrol edilir
    And Uygulama kill edilip 30 sn sonra acilir
    And 10 saniye bekle
    Then "SilverDavlumbaz" detayina gidilir
    Then "Açık" elementini bekle
    Then Appbar "SilverDavlumbaz" texti kontrol edilir
    Then Appbar subtitle "Oturma Odası" texti kontrol edilir
    Then Uzaktan kontrol "Açık" texti kontrolu
    Then "Beko" yazisi kontrol edilir
    Then "PROGRAM SEÇENEKLERİ" yazisi kontrol edilir
    Then "Hava Temizleme" yazisi kontrol edilir
    Then "Mod Seçimi" yazisi kontrol edilir
    Then "CİHAZA TANIMLI KURALLAR" yazisi kontrol edilir
    Then Mod Secimi butonuna basilir
    And 10 saniye bekle
    Then Appbar "SilverDavlumbaz" texti kontrol edilir
    Then Appbar subtitle "oturma odası" texti kontrol edilir
    Then "Hava Temizleme" yazisi kontrol edilir
    Then Hava Temizleme on kontrol edilir
    Then Isık butonu on kontrolu
    Then Isık butonu off konumuna getirilir
    And 10 saniye bekle
    Then Isık butonu off kontrolu
    Then Hava Temizleme off konumuna getirilir
    And 10 saniye bekle
    Then Hava Temizleme off kontrol edilir

  @SilverDavlumbaz
    Scenario: 013 SilverDavlumbaz Cihaz bilgileri menusunun kontrol edilmesi
    Given Uygulama resetlenir
    Then 10 saniye bekle
    Then "SilverDavlumbaz" detayina gidilir
    When "Açık" elementini bekle
    And Cihaz bilgilerine tiklanir
    And 10 saniye bekle
    Then "CİHAZ KİMLİĞİ" yazisi kontrol edilir
    Then "Beko" markasi kontrol edilir
    Then "1234567890" Model numarasi kontrol edilir
    Then "F999939849542581002628" Digital kimlik no kontrol edilir
    Then "YAZILIM" yazisi kontrol edilir
    Then "VERSİYON" yazisi kontrol edilir
    Then "12.0.1 / - / 5.0.20 / - / -" versiyon numarasi kontrol edilir
    Then "Ürün yazılımı güncel" yazisi kontrol edilir
    And navigasyondan geri tusuna basilir

  @SilverDavlumbaz
  Scenario: 014 SilverDavlumbaz Ayarlar menusu ekrani bilgilerinin kontrol edilmesi
    Given Uygulama resetlenir
    Given 10 saniye bekle
    And "SilverDavlumbaz" detayina gidilir
    When "Açık" elementini bekle
    Then 10 saniye bekle
    And Ayarlar alanina tiklanir
    And 10 saniye bekle
    Then "Cihaz Ayarları" yazisi kontrol edilir
    Then "Uyarı Görüntüleme Ayarları" yazisi kontrol edilir
    Then "Bildirim Ayarları" yazisi kontrol edilir

  @SilverDavlumbaz
  Scenario: 015 SilverDavlumbaz Cihaz Ayarlari ekrani bilgilerinin kontrol edilmesi
    Given Uygulama resetlenir
    Then 10 saniye bekle
    Then "SilverDavlumbaz" detayina gidilir
    When "Açık" elementini bekle
    And Ayarlar alanina tiklanir
    And 10 saniye bekle
    Then "Cihaz Ayarları" yazisi kontrol edilir
    Then "Cihaz Ayarları" textine basilir
    And 10 saniye bekle
    Then "Kir Filtresi Seviyesini Sıfırla" yazisi kontrol edilir

  @SilverDavlumbaz
  Scenario: 016 SilverDavlumbaz Uyarı Tercihleri ekrani bilgilerinin kontrol edilmesi
    Given Uygulama resetlenir
    Then 10 saniye bekle
    Then "SilverDavlumbaz" detayina gidilir
    When "Açık" elementini bekle
    Then 10 saniye bekle
    And Ayarlar alanina tiklanir
    And 10 saniye bekle
    Then "Uyarı Görüntüleme Ayarları" yazisi kontrol edilir
    Then "Uyarı Görüntüleme Ayarları" textine basilir
    And 10 saniye bekle
    Then "Filtrenin temizlenmesi gerekiyor" yazisi kontrol edilir

  @SilverDavlumbaz
  Scenario: 017 SilverDavlumbaz Bildirim Tercihleri ekrani bilgilerinin kontrol edilmesi
    Given Uygulama resetlenir
    Then 10 saniye bekle
    Then "SilverDavlumbaz" detayina gidilir
    When "Açık" elementini bekle
    And Ayarlar alanina tiklanir
    And 10 saniye bekle
    Then "Bildirim Ayarları" yazisi kontrol edilir
    Then "Bildirim Ayarları" textine basilir
    And 10 saniye bekle
    Then "Filtrenin temizlenmesi gerekiyor" yazisi kontrol edilir

  @SilverDavlumbaz
  Scenario: 018 SilverDavlumbaz Cihaz Ayarlari ekranından Kir Filtresi Seviyesini Sıfırla ayari acikken uygulamanın kapatilip tekrar acilmasinin kontrolu
    Given Uygulama resetlenir
    Then 10 saniye bekle
    Then "SilverDavlumbaz" detayina gidilir
    When "Açık" elementini bekle
    And Ayarlar alanina tiklanir
    And 10 saniye bekle
    Then "Cihaz Ayarları" textine basilir
    And 10 saniye bekle
    #çıkarken posif yapılması gerekiyor BURAYI DUZELT *******
    Then Kir Filtresi Seviyesini Sifirla aktif yapılır
    And 10 saniye bekle
    Then Kir Filtresi Seviyesini Aktif kontrolu
    And Uygulama kill edilip 30 sn sonra acilir
    And 10 saniye bekle
    Then "SilverDavlumbaz" detayina gidilir
    Then "Açık" elementini bekle
    And 10 saniye bekle
    And Ayarlar alanina tiklanir
    And 10 saniye bekle
    Then "Cihaz Ayarları" textine basilir
    And 10 saniye bekle
    Then "Kir Filtresi Seviyesini Sıfırla" yazisi kontrol edilir

  @SilverDavlumbaz
  Scenario: 019 SilverDavlumbaz Uyarı Tercihleri ekranından Tüm Uyarilari Ac ve Filtrenin Temizlenmesi Gerekiyor ayarlari acikken uygulamanın kapatilip tekrar acilmasinin kontrolu
    Given Uygulama resetlenir
    Then 10 saniye bekle
    Then "SilverDavlumbaz" detayina gidilir
    When "Açık" elementini bekle
    And Ayarlar alanina tiklanir
    And 10 saniye bekle
    Then "Bildirim Ayarları" textine basilir
    And 10 saniye bekle
    Then Filtrenin temizlenmesi gerekiyor on yapilir
    And 3 saniye bekle
    And "Kaydet" butonuna basilir
    And 3 saniye bekle
    And "TAMAM" butonuna basilir
    And 3 saniye bekle
    Then Filtrenin temizlenmesi gerekiyor on kontrolu
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
    And Uygulama kill edilip 30 sn sonra acilir
    And 10 saniye bekle
    Then "SilverDavlumbaz" detayina gidilir
    Then "Açık" elementini bekle
    And 10 saniye bekle
    And Ayarlar alanina tiklanir
    And 10 saniye bekle
    Then "Bildirim Ayarları" textine basilir
    And 10 saniye bekle
    Then Filtrenin temizlenmesi gerekiyor on kontrolu
    Then Filtrenin temizlenmesi gerekiyor off yapilir
    And 3 saniye bekle
    And "Kaydet" butonuna basilir
    And 3 saniye bekle
    And "TAMAM" butonuna basilir
    And 3 saniye bekle

  @SilverDavlumbaz
  Scenario: 020 SilverDavlumbaz Bildirim Tercihleri ekranından Tüm Bildirimleri Ac ve Filtrenin Temizlenmesi Gerekiyor ayarlari acikken uygulamanın kapatilip tekrar acilmasinin kontrolu
    Given Uygulama resetlenir
    Then 10 saniye bekle
    Then "SilverDavlumbaz" detayina gidilir
    When "Açık" elementini bekle
    And Ayarlar alanina tiklanir
    And 10 saniye bekle
    Then "Uyarı Görüntüleme Ayarları" textine basilir
    And 10 saniye bekle
    Then Filtrenin temizlenmesi gerekiyor off yapilir
    And 3 saniye bekle
    Then Filtrenin temizlenmesi gerekiyor off kontrolu
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
    And Uygulama kill edilip 30 sn sonra acilir
    And 10 saniye bekle
    Then "SilverDavlumbaz" detayina gidilir
    Then "Açık" elementini bekle
    And 10 saniye bekle
    And Ayarlar alanina tiklanir
    And 10 saniye bekle
    Then "Bildirim Ayarları" textine basilir
    And 10 saniye bekle
    Then Filtrenin temizlenmesi gerekiyor off kontrolu
    Then Filtrenin temizlenmesi gerekiyor on yapilir
    And 5 saniye bekle

  @SilverDavlumbaz
  Scenario: 021 SilverDavlumbaz Mod Secimi ekrani fan seviyesi ve ışık durum degistirme kontrolu
    Given Uygulama resetlenir
    Then 10 saniye bekle
    Then "SilverDavlumbaz" detayina gidilir
    When "Açık" elementini bekle
    Then Mod Secimi butonuna basilir
    And 10 saniye bekle
    Then Fan seviyesi "3" olarak ayarlanir
    And 5 saniye bekle
    Then "Işık" butonu "1" yapilir
    And 20 saniye bekle
    And "Işık" butonunun "1" oldugu kontrol edilir
    Then Fan seviyesi "P" olarak ayarlanir
    And 20 saniye bekle
    And "Işık" butonunun "1" oldugu kontrol edilir
    Then Fan seviyesi "1" olarak ayarlanir
    And 20 saniye bekle
    And "Işık" butonunun "1" oldugu kontrol edilir
    Then "Işık" butonu "Kapalı" yapilir
    And 5 saniye bekle
    Then Fan seviyesi "Kapalı" olarak ayarlanir
    And 20 saniye bekle
    Then Appbar "SilverDavlumbaz" texti kontrol edilir
    Then Appbar subtitle "oturma odası" texti kontrol edilir
    Then "Hava Temizleme" yazisi kontrol edilir
    Then Hava Temizleme off kontrol edilir
    Then "Işık" yazisi kontrol edilir
    Then Isık butonu off kontrolu
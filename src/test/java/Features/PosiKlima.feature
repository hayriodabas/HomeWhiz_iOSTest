@TumSenaryolar
Feature: PosiKlima
  Author: Hayri Odabas
  Date: 2021
  NOT: Bu test scriptlerini calistirmadan once uzaktan kontrolun acik olduguna emin olun
  @PosiKlima
  Scenario: 001 Posi klima aga bagli ve kapali oldugunun kontrol edilmesi
    Given Uygulama resetlenir
    Given Logout yapilir
    Given Uygulamaya "yazilimtestonay@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    Given Uygulama resetlenir
    When "Posi Klima" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz off konumuna getirilir
    And 3 saniye bekle
    Then Uzaktan kontrol "Açık" texti kontrolu
    When "Program seçebilmek için cihazı açmanız gerekiyor." yazisi kontrol edilir
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Kumanda butonuna basilir
    And 10 saniye bekle
    And Sogutma modu secilir
    And 10 saniye bekle
    And Sicaklik "18°C" dereceye ayarlanir
    And 10 saniye bekle
    And Dikey hava modu "Kapalı" konuma getirilir
    And 10 saniye bekle
    And Fan hizi "Düşük" olarak ayarlanir
    And 5 saniye bekle
    Then Sayfanin altinda bulunan standby tusu ile kapatilir
    And 3 saniye bekle
  @PosiKlima
  Scenario: 002 Posi klima cihazlarim ekraninda acilmasi, uygulamanin arka plana atilmasi ve tekrar kontrol edilmesi
    Given Uygulama resetlenir
    When "Posi Klima" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Kumanda butonuna basilir
    And 5 saniye bekle
    Then Klima sicakligin "18°C" oldugu kontrol edilir
    And Uygulamayi 30 saniye arka planda tut sonra aktive et
    And 10 saniye bekle
    Then Klima sicakligin "18°C" oldugu kontrol edilir
    Then Sayfanin altinda bulunan standby tusu ile kapatilir
    And 3 saniye bekle
  @PosiKlima
  Scenario: 003 Posi klima cihaz kontrol ekraninda acma ve kapama komutunun gonderilmesi
    Given Uygulama resetlenir
    When "Posi Klima" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    When "Favoriler" yazisi kontrol edilir
    When "Kumanda" yazisi kontrol edilir
    Then Program secenekleri bolumunun olmadigi kontrol edilir
    And 3 saniye bekle
    And Kumanda butonuna basilir
    And 5 saniye bekle
    Then Klima sicakligin "18°C" oldugu kontrol edilir
    And Cihaz off konumuna getirilir
    And 5 saniye bekle
  @PosiKlima
  Scenario: 004 Posi klima sogutma ekrani ayarlarinin kontrol edilmesi
    Given Uygulama resetlenir
    When "Posi Klima" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Kumanda butonuna basilir
    And 5 saniye bekle
    Then Fan hizinin "Düşük" oldugu kontrol edilir
    Then Uyku modu secimi "Kapalı" oldugu kontrol edilir
    Then Dikey hava akisi secimi "Kapalı" oldugu kontrol edilir
    Then Zamanlayici secimi "0.0 " oldugu kontrol edilir
    And 3 saniye bekle
    Then Klima sicakligin "18°C" oldugu kontrol edilir
    Then Sayfanin altinda bulunan standby tusu ile kapatilir
    And 3 saniye bekle
  @PosiKlima
  Scenario: 005 Posi klima yardimci fonksiyon menusunun acildiginin kontrol edilmesi
    Given Uygulama resetlenir
    When "Posi Klima" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Kumanda butonuna basilir
    And 5 saniye bekle
    And Sicaklik "18°C" dereceye ayarlanir
    And 10 saniye bekle
    And Diger yardimci fonksiyonlar butonuna basilir
    And 5 saniye bekle
    Then "DİĞER YARDIMCI FONKSİYONLAR" yazisi kontrol edilir
    Then "Başka yardımcı işlev yok" yazisi kontrol edilir
    And Diger yardimci fonksiyonlar menusunu kapat
    And 3 saniye bekle
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
    And Cihaz off konumuna getirilir
    And 10 saniye bekle
  @PosiKlima
  Scenario: 006 Posi klima favori olusturma favori program baslatma ve favori silme kontrol edilmesi
    Given Uygulama resetlenir
    When "Posi Klima" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Kumanda butonuna basilir
    And 5 saniye bekle
    And Sicaklik "18°C" dereceye ayarlanir
    And 10 saniye bekle
    And Uyku modu "Kapalı" olarak ayarlanır
    And 10 saniye bekle
    And Posi kalp ikonuna basilir
    And 3 saniye bekle
    And Favori ekle ekraninda program adi "Klima Fav" yazilir
    And 3 saniye bekle
    And Favori ekle tamam butonuna basilir
    And 3 saniye bekle
    And navigasyondan geri tusuna basilir
    And 5 saniye bekle
    And Cihaz off konumuna getirilir
    And 10 saniye bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Favoriler butonuna basilir
    And 3 saniye bekle
    Then "Soğutma | Hedef Sıcaklık: 18°C, Fan Hızı: Düşük, Zamanlayıcı: 0.0 " yazisi kontrol edilir
    And Favori ekraninda Play butonuna basilir
    And 20 saniye bekle
    Then "Soğutma" yazisi kontrol edilir
    Then Uyku modu secimi "Kapalı" oldugu kontrol edilir
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
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
    And 3 saniye bekle
  @PosiKlima
  Scenario: 007 Posi klima sicaklik degerinin 17 dereceye set edilmesi
    Given Uygulama resetlenir
    When "Posi Klima" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Kumanda butonuna basilir
    And 5 saniye bekle
    When "Soğutma" yazisi kontrol edilir
    And Sicaklik "17°C" dereceye ayarlanir
    And 20 saniye bekle
    Then Klima sicakligin "17°C" oldugu kontrol edilir
    And navigasyondan geri tusuna basilir
    And 5 saniye bekle
    And Kumanda butonuna basilir
    And 5 saniye bekle
    And Sicaklik "18°C" dereceye ayarlanir
    And 20 saniye bekle
    Then Sayfanin altinda bulunan standby tusu ile kapatilir
    And 10 saniye bekle
  @PosiKlima
  Scenario: 008 Posi klima fan hizinin degistirilmesi
    Given Uygulama resetlenir
    When "Posi Klima" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Kumanda butonuna basilir
    And 5 saniye bekle
    When "Soğutma" yazisi kontrol edilir
    Then Fan hizinin "Düşük" oldugu kontrol edilir
    Then Fan hizi "Orta" olarak ayarlanir
    And 20 saniye bekle
    Then Fan hizinin "Orta" oldugu kontrol edilir
    Then Fan hizi "Hızlı" olarak ayarlanir
    And 20 saniye bekle
    Then Fan hizinin "Hızlı" oldugu kontrol edilir
    Then Fan hizi "Düşük" olarak ayarlanir
    And 20 saniye bekle
    Then Fan hizinin "Düşük" oldugu kontrol edilir
    Then Sayfanin altinda bulunan standby tusu ile kapatilir
    And 10 saniye bekle
  @PosiKlima
  Scenario: 009 Posi klima kurutma moduna gecisin kontrolu
    Given Uygulama resetlenir
    When "Posi Klima" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Kumanda butonuna basilir
    And 5 saniye bekle
    And Calistirma modu kurutma secilir
    And 10 saniye bekle
    Then Uyku modu yeni secimi "Kapalı" oldugu kontrol edilir
    Then Dikey hava akisi yeni secimi "Kapalı" oldugu kontrol edilir
    Then Zamanlayici secimi "0.0 " oldugu kontrol edilir
    And Sogutma modu geri secilir
    And 10 saniye bekle
    Then Sayfanin altinda bulunan standby tusu ile kapatilir
    And 10 saniye bekle
  @PosiKlima
  Scenario: 010 Posi klima dikey hava akışı seçimlerinin değiştirilmesi
    Given Uygulama resetlenir
    When "Posi Klima" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Kumanda butonuna basilir
    And 5 saniye bekle
    And Sogutma modu secilir
    And 5 saniye bekle
    When "Soğutma" yazisi kontrol edilir
    And Dikey hava modu "Kapalı" konuma getirilir
    And 10 saniye bekle
    Then Dikey hava akisi secimi "Kapalı" oldugu kontrol edilir
    And 5 saniye bekle
    And Dikey hava modu "Otomatik" konuma getirilir
    And 10 saniye bekle
    Then Dikey hava akisi secimi "Otomatik" oldugu kontrol edilir
    And Uygulamayi 10 saniye arka planda tut sonra aktive et
    And 10 saniye bekle
    Then Dikey hava akisi secimi "Otomatik" oldugu kontrol edilir
    And Dikey hava modu "Kapalı" konuma getirilir
    And 10 saniye bekle
    Then Dikey hava akisi secimi "Kapalı" oldugu kontrol edilir
    Then Sayfanin altinda bulunan standby tusu ile kapatilir
    And 10 saniye bekle
  @PosiKlima
  Scenario: 011 Posi klima uyku modu seçiminin değiştirilmesi
    Given Uygulama resetlenir
    When "Posi Klima" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Kumanda butonuna basilir
    And 5 saniye bekle
    And Sogutma modu secilir
    And 5 saniye bekle
    When "Soğutma" yazisi kontrol edilir
    And Uyku modu "Kapalı" olarak ayarlanır
    And 5 saniye bekle
    Then Uyku modu secimi "Kapalı" oldugu kontrol edilir
    And 5 saniye bekle
    And Uyku modu "Açık" olarak ayarlanır
    And 5 saniye bekle
    Then Uyku modu secimi "Açık" oldugu kontrol edilir
    And Uygulamayi 10 saniye arka planda tut sonra aktive et
    And 10 saniye bekle
    Then Uyku modu secimi "Açık" oldugu kontrol edilir
    And Uyku modu "Kapalı" olarak ayarlanır
    And 5 saniye bekle
    Then Uyku modu secimi "Kapalı" oldugu kontrol edilir
    Then Sayfanin altinda bulunan standby tusu ile kapatilir
    And 10 saniye bekle
  @PosiKlima
  Scenario: 012 Posi klima sogutma modu yardimci fonksiyonlarinin degistirilmesi
    Given Uygulama resetlenir
    When "Posi Klima" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz on konumuna getirilir
    And 10 saniye bekle
    And Kumanda butonuna basilir
    And 5 saniye bekle
    And Uyku modu "Açık" olarak ayarlanır
    And 5 saniye bekle
    And Dikey hava modu "Otomatik" konuma getirilir
    And 5 saniye bekle
    And Zamanlayici "3.0 " e set edilir
    And Uygulamayi 30 saniye arka planda tut sonra aktive et
    And 10 saniye bekle
    Then Uyku modu secimi "Açık" oldugu kontrol edilir
    Then Dikey hava akisi secimi "Otomatik" oldugu kontrol edilir
    Then Zamanlayicinin 3 e set edildigi kontrol edilir
    And Uyku modu "Kapalı" olarak ayarlanır
    And 10 saniye bekle
    And Dikey hava modu "Kapalı" konuma getirilir
    And 10 saniye bekle
    Then Sayfanin altinda bulunan standby tusu ile kapatilir
    And 10 saniye bekle
  @PosiKlima
  Scenario: 013 Posi klima … seceneginden cihazlar menusunun acildiginin marka model ve yazilim bilgilerinin dogru yazdiginin kontrol edilmesi
    Given Uygulama resetlenir
    When "Posi Klima" detayina gidilir
    Then "Açık" elementini bekle
    And Cihaz bilgilerine tiklanir
    And 3 saniye bekle
    Then "Beko" markasi kontrol edilir
    Then "6111111113" Model numarasi kontrol edilir
    Then "T999934412320001088582" Digital kimlik no kontrol edilir
    Then "VERSİYON" yazisi kontrol edilir
    Then "5.0.1" versiyon numarasi kontrol edilir
    And 3 saniye bekle
    And navigasyondan geri tusuna basilir
    And 3 saniye bekle
    #And "<string>" butonu "<string>" yapilir
    #And "<string>" butonunun "<string>" oldugu kontrol edilir
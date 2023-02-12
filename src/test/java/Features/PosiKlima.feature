@TumSenaryolar
Feature: PosiKlima
  Author: Hayri Odabas
  Date: 2021
  NOT: Bu test scriptlerini calistirmadan once uzaktan kontrolun acik olduguna emin olun
  @PosiKlima
  Scenario: 001 Posi klima aga bagli ve kapali oldugunun kontrol edilmesi
    * Uygulama resetlenir
    * Logout yapilir
    * Uygulamaya "yazilimtestonay@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    * Uygulama resetlenir
    * "Posi Klima" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz off konumuna getirilir
    * 3 saniye bekle
    * Uzaktan kontrol "Açık" texti kontrolu
    * "Program seçebilmek için cihazı açmanız gerekiyor." yazisi kontrol edilir
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Kumanda butonuna basilir
    * 10 saniye bekle
    * Sogutma modu secilir
    * 10 saniye bekle
    * Sicaklik "18°C" dereceye ayarlanir
    * 10 saniye bekle
    * Dikey hava modu "Kapalı" konuma getirilir
    * 10 saniye bekle
    * Fan hizi "Düşük" olarak ayarlanir
    * 5 saniye bekle
    * Sayfanin altinda bulunan standby tusu ile kapatilir
    * 3 saniye bekle
  @PosiKlima
  Scenario: 002 Posi klima cihazlarim ekraninda acilmasi, uygulamanin arka plana atilmasi ve tekrar kontrol edilmesi
    * Uygulama resetlenir
    * "Posi Klima" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Kumanda butonuna basilir
    * 5 saniye bekle
    * Klima sicakligin "18°C" oldugu kontrol edilir
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * 10 saniye bekle
    * Klima sicakligin "18°C" oldugu kontrol edilir
    * Sayfanin altinda bulunan standby tusu ile kapatilir
    * 3 saniye bekle
  @PosiKlima
  Scenario: 003 Posi klima cihaz kontrol ekraninda acma ve kapama komutunun gonderilmesi
    * Uygulama resetlenir
    * "Posi Klima" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * "Favoriler" yazisi kontrol edilir
    * "Kumanda" yazisi kontrol edilir
    * Program secenekleri bolumunun olmadigi kontrol edilir
    * 3 saniye bekle
    * Kumanda butonuna basilir
    * 5 saniye bekle
    * Klima sicakligin "18°C" oldugu kontrol edilir
    * Cihaz off konumuna getirilir
    * 5 saniye bekle
  @PosiKlima
  Scenario: 004 Posi klima sogutma ekrani ayarlarinin kontrol edilmesi
    * Uygulama resetlenir
    * "Posi Klima" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Kumanda butonuna basilir
    * 5 saniye bekle
    * Fan hizinin "Düşük" oldugu kontrol edilir
    * Uyku modu secimi "Kapalı" oldugu kontrol edilir
    * Dikey hava akisi secimi "Kapalı" oldugu kontrol edilir
    * Zamanlayici secimi "0.0 " oldugu kontrol edilir
    * 3 saniye bekle
    * Klima sicakligin "18°C" oldugu kontrol edilir
    * Sayfanin altinda bulunan standby tusu ile kapatilir
    * 3 saniye bekle
  @PosiKlima
  Scenario: 005 Posi klima yardimci fonksiyon menusunun acildiginin kontrol edilmesi
    * Uygulama resetlenir
    * "Posi Klima" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Kumanda butonuna basilir
    * 5 saniye bekle
    * Sicaklik "18°C" dereceye ayarlanir
    * 10 saniye bekle
    * Diger yardimci fonksiyonlar butonuna basilir
    * 5 saniye bekle
    * "DİĞER YARDIMCI FONKSİYONLAR" yazisi kontrol edilir
    * "Başka yardımcı işlev yok" yazisi kontrol edilir
    * Diger yardimci fonksiyonlar menusunu kapat
    * 3 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    * Cihaz off konumuna getirilir
    * 10 saniye bekle
  @PosiKlima
  Scenario: 006 Posi klima favori olusturma favori program baslatma ve favori silme kontrol edilmesi
    * Uygulama resetlenir
    * "Posi Klima" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Kumanda butonuna basilir
    * 5 saniye bekle
    * Sicaklik "18°C" dereceye ayarlanir
    * 10 saniye bekle
    * Uyku modu "Kapalı" olarak ayarlanır
    * 10 saniye bekle
    * Posi kalp ikonuna basilir
    * 3 saniye bekle
    * Favori ekle ekraninda program adi "Klima Fav" yazilir
    * 3 saniye bekle
    * Favori ekle tamam butonuna basilir
    * 3 saniye bekle
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
    * Cihaz off konumuna getirilir
    * 10 saniye bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Favoriler butonuna basilir
    * 3 saniye bekle
    * "Soğutma | Hedef Sıcaklık: 18°C, Fan Hızı: Düşük, Zamanlayıcı: 0.0 " yazisi kontrol edilir
    * Favori ekraninda Play butonuna basilir
    * 20 saniye bekle
    * "Soğutma" yazisi kontrol edilir
    * Uyku modu secimi "Kapalı" oldugu kontrol edilir
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
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
    * 3 saniye bekle
  @PosiKlima
  Scenario: 007 Posi klima sicaklik degerinin 17 dereceye set edilmesi
    * Uygulama resetlenir
    * "Posi Klima" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Kumanda butonuna basilir
    * 5 saniye bekle
    * "Soğutma" yazisi kontrol edilir
    * Sicaklik "17°C" dereceye ayarlanir
    * 20 saniye bekle
    * Klima sicakligin "17°C" oldugu kontrol edilir
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
    * Kumanda butonuna basilir
    * 5 saniye bekle
    * Sicaklik "18°C" dereceye ayarlanir
    * 20 saniye bekle
    * Sayfanin altinda bulunan standby tusu ile kapatilir
    * 10 saniye bekle
  @PosiKlima
  Scenario: 008 Posi klima fan hizinin degistirilmesi
    * Uygulama resetlenir
    * "Posi Klima" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Kumanda butonuna basilir
    * 5 saniye bekle
    * "Soğutma" yazisi kontrol edilir
    * Fan hizinin "Düşük" oldugu kontrol edilir
    * Fan hizi "Orta" olarak ayarlanir
    * 20 saniye bekle
    * Fan hizinin "Orta" oldugu kontrol edilir
    * Fan hizi "Hızlı" olarak ayarlanir
    * 20 saniye bekle
    * Fan hizinin "Hızlı" oldugu kontrol edilir
    * Fan hizi "Düşük" olarak ayarlanir
    * 20 saniye bekle
    * Fan hizinin "Düşük" oldugu kontrol edilir
    * Sayfanin altinda bulunan standby tusu ile kapatilir
    * 10 saniye bekle
  @PosiKlima
  Scenario: 009 Posi klima kurutma moduna gecisin kontrolu
    * Uygulama resetlenir
    * "Posi Klima" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Kumanda butonuna basilir
    * 5 saniye bekle
    * Calistirma modu kurutma secilir
    * 10 saniye bekle
    * Uyku modu yeni secimi "Kapalı" oldugu kontrol edilir
    * Dikey hava akisi yeni secimi "Kapalı" oldugu kontrol edilir
    * Zamanlayici secimi "0.0 " oldugu kontrol edilir
    * Sogutma modu geri secilir
    * 10 saniye bekle
    * Sayfanin altinda bulunan standby tusu ile kapatilir
    * 10 saniye bekle
  @PosiKlima
  Scenario: 010 Posi klima dikey hava akışı seçimlerinin değiştirilmesi
    * Uygulama resetlenir
    * "Posi Klima" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Kumanda butonuna basilir
    * 5 saniye bekle
    * Sogutma modu secilir
    * 5 saniye bekle
    * "Soğutma" yazisi kontrol edilir
    * Dikey hava modu "Kapalı" konuma getirilir
    * 10 saniye bekle
    * Dikey hava akisi secimi "Kapalı" oldugu kontrol edilir
    * 5 saniye bekle
    * Dikey hava modu "Otomatik" konuma getirilir
    * 10 saniye bekle
    * Dikey hava akisi secimi "Otomatik" oldugu kontrol edilir
    * Uygulamayi 10 saniye arka planda tut sonra aktive et
    * 10 saniye bekle
    * Dikey hava akisi secimi "Otomatik" oldugu kontrol edilir
    * Dikey hava modu "Kapalı" konuma getirilir
    * 10 saniye bekle
    * Dikey hava akisi secimi "Kapalı" oldugu kontrol edilir
    * Sayfanin altinda bulunan standby tusu ile kapatilir
    * 10 saniye bekle
  @PosiKlima
  Scenario: 011 Posi klima uyku modu seçiminin değiştirilmesi
    * Uygulama resetlenir
    * "Posi Klima" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Kumanda butonuna basilir
    * 5 saniye bekle
    * Sogutma modu secilir
    * 5 saniye bekle
    * "Soğutma" yazisi kontrol edilir
    * Uyku modu "Kapalı" olarak ayarlanır
    * 5 saniye bekle
    * Uyku modu secimi "Kapalı" oldugu kontrol edilir
    * 5 saniye bekle
    * Uyku modu "Açık" olarak ayarlanır
    * 5 saniye bekle
    * Uyku modu secimi "Açık" oldugu kontrol edilir
    * Uygulamayi 10 saniye arka planda tut sonra aktive et
    * 10 saniye bekle
    * Uyku modu secimi "Açık" oldugu kontrol edilir
    * Uyku modu "Kapalı" olarak ayarlanır
    * 5 saniye bekle
    * Uyku modu secimi "Kapalı" oldugu kontrol edilir
    * Sayfanin altinda bulunan standby tusu ile kapatilir
    * 10 saniye bekle
  @PosiKlima
  Scenario: 012 Posi klima sogutma modu yardimci fonksiyonlarinin degistirilmesi
    * Uygulama resetlenir
    * "Posi Klima" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz on konumuna getirilir
    * 10 saniye bekle
    * Kumanda butonuna basilir
    * 5 saniye bekle
    * Uyku modu "Açık" olarak ayarlanır
    * 5 saniye bekle
    * Dikey hava modu "Otomatik" konuma getirilir
    * 5 saniye bekle
    * Zamanlayici "3.0 " e set edilir
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * 10 saniye bekle
    * Uyku modu secimi "Açık" oldugu kontrol edilir
    * Dikey hava akisi secimi "Otomatik" oldugu kontrol edilir
    * Zamanlayicinin 3 e set edildigi kontrol edilir
    * Uyku modu "Kapalı" olarak ayarlanır
    * 10 saniye bekle
    * Dikey hava modu "Kapalı" konuma getirilir
    * 10 saniye bekle
    * Sayfanin altinda bulunan standby tusu ile kapatilir
    * 10 saniye bekle
  @PosiKlima
  Scenario: 013 Posi klima … seceneginden cihazlar menusunun acildiginin marka model ve yazilim bilgilerinin dogru yazdiginin kontrol edilmesi
    * Uygulama resetlenir
    * "Posi Klima" detayina gidilir
    * "Açık" elementini bekle
    * Cihaz bilgilerine tiklanir
    * 3 saniye bekle
    * "Beko" markasi kontrol edilir
    * "6111111113" Model numarasi kontrol edilir
    * "T999934412320001088582" Digital kimlik no kontrol edilir
    * "VERSİYON" yazisi kontrol edilir
    * "5.0.1" versiyon numarasi kontrol edilir
    * 3 saniye bekle
    * navigasyondan geri tusuna basilir
    * 3 saniye bekle
    #* "<string>" butonu "<string>" yapilir
    #* "<string>" butonunun "<string>" oldugu kontrol edilir
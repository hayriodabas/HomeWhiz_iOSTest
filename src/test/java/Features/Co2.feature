@TumSenaryolar
Feature: Co2
  Author: Hayri Odabas
  Date: 2022
  @IcHavaKalitesiOlcum
  Scenario: 001 Login sonrasi Co2 cihazının  cihazlar ekranında ekli oldugunun kontrolu
    Given Uygulama resetlenir
    Given Logout yapilir
    Given Uygulamaya "mobilotomasyon2@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    Given Uygulama resetlenir
    Then "Co2" icerigi konrol edilir
    And "Co2" detayina gidilir
    Then "AĞA BAĞLI" elementini bekle
    #Then 10 saniye bekle
    And "GEÇMİŞİ GÖSTER" yazisi kontrol edilir
    Then 5 saniye bekle
  @IcHavaKalitesiOlcum
  Scenario: 002 Login sonrasi Co2 cihazının uygulama arkaya atildiktan sonra cihazlar ekranında ekli oldugunun kontrolu
    Given Uygulama resetlenir
    Then "Co2" icerigi konrol edilir
    And Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et
    Then "Co2" detayina gidilir
    Then "AĞA BAĞLI" elementini bekle
    And "AĞA BAĞLI" yazisi kontrol edilir
    Then navigasyondan geri tusuna basilir
    Then 2 saniye bekle
    Then Uygulamayi 30 saniye arka planda tut sonra aktive et
    Then 10 saniye bekle
    Then "Co2" icerigi konrol edilir
    And Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et
    Then "Co2" detayina gidilir
    Then "AĞA BAĞLI" elementini bekle
    Then 10 saniye bekle
    And "AĞA BAĞLI" yazisi kontrol edilir
    Then 5 saniye bekle
  @IcHavaKalitesiOlcum
  Scenario: 003 Login sonrasi Co2 cihazının uygulama kill edildikten sonra cihazlar ekranında ekli oldugunun kontrolu
    Given Uygulama resetlenir
    Then "Co2" icerigi konrol edilir
    And Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et
    Then "Co2" detayina gidilir
    Then "AĞA BAĞLI" elementini bekle
    And "AĞA BAĞLI" yazisi kontrol edilir
    Then navigasyondan geri tusuna basilir
    Then 2 saniye bekle
    Then Uygulama kill edilip 30 sn sonra acilir
    Then 10 saniye bekle
    Then "Co2" icerigi konrol edilir
    And Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et
    Then "Co2" detayina gidilir
    Then "AĞA BAĞLI" elementini bekle
    Then 10 saniye bekle
    And "AĞA BAĞLI" yazisi kontrol edilir
    Then 5 saniye bekle
  @IcHavaKalitesiOlcum
  Scenario: 004 Cihaz ekranındaki yazıların kontrolu
    Given Uygulama resetlenir
    Then "Co2" detayina gidilir
    Then "AĞA BAĞLI" elementini bekle
    Then 10 saniye bekle
    Then Appbar "Co2" texti kontrol edilir
    And Appbar subtitle "oturma odası" texti kontrol edilir
    And "CO₂ Seviyesi" yazisi kontrol edilir
    And "AĞA BAĞLI" yazisi kontrol edilir
    And "PPM" yazisi icerdigi kontrol edilir
    And "Son Güncelleme:" yazisi icerdigi kontrol edilir
    And "GEÇMİŞİ GÖSTER" yazisi kontrol edilir
    And Ekrani "down" kaydir
    And "CİHAZA TANIMLI KURALLAR" yazisi kontrol edilir
    And "Gece Modu" yazisi kontrol edilir
    And "Henüz kural oluşturmadınız." yazisi kontrol edilir
    And "KURAL EKLE" yazisi kontrol edilir
    Then 5 saniye bekle
  @IcHavaKalitesiOlcum
  Scenario: 005 Karbondioksit olcum cihazi cihaz bilgilerinin kontrolu
    Given Uygulama resetlenir
    Then "Co2" detayina gidilir
    Then "AĞA BAĞLI" elementini bekle
    Then 10 saniye bekle
    Then Cihaz bilgilerine tiklanir
    Then 10 saniye bekle
    Then Appbar "Cihaz Bilgileri" texti kontrol edilir
    And Appbar subtitle "Co2" texti kontrol edilir
    Then "CİHAZ KİMLİĞİ" yazisi kontrol edilir
    Then "MARKA" yazisi kontrol edilir
    And "Arçelik" markasi kontrol edilir
    Then "MODEL" yazisi kontrol edilir
    And "9950171100" Model numarasi kontrol edilir
    Then "DİJİTAL KİMLİK NO" yazisi kontrol edilir
    And "E999958038681866432681" Digital kimlik no kontrol edilir
    Then "MAC ADRESİ" yazisi kontrol edilir
    And "A4:E5:7C:79:74:B4" yazisi kontrol edilir
    And "YAZILIM" yazisi kontrol edilir
    And "VERSİYON" yazisi kontrol edilir
    Then "2.5.17" versiyon numarasi kontrol edilir
    And "Ürün yazılımı güncel" yazisi kontrol edilir
    Then 5 saniye bekle
  @IcHavaKalitesiOlcum
  Scenario: 006 Co2 cihazi PPM değerlerinin kontrolu
    Given Uygulama resetlenir
    Then "Co2" detayina gidilir
    Then "AĞA BAĞLI" elementini bekle
    Then 10 saniye bekle
    Then PPM degeri kabul edilebilir bir deger mi kontrol edilir
    And "PPM" yazisi icerdigi kontrol edilir
    And Ppm degerinin icinde bulundugu halka ikonu sayfada goruntulenme kontrolu
    Then 5 saniye bekle
  @IcHavaKalitesiOlcum
  Scenario: 007 Co2 cihazi karbondioksit seviyesi ekranındaki yazıların kontrolu
    Given Uygulama resetlenir
    Then "Co2" detayina gidilir
    Then "AĞA BAĞLI" elementini bekle
    Then 10 saniye bekle
    And "CO₂ Seviyesi" yazisi kontrol edilir
    Then Karbondioksit seviyesi bilgilendirmesi yapan pop-up acılır
    And 3 saniye bekle
    And "Hava Kalitesi Durumu:" yazisi kontrol edilir
    And "Çok İyi" yazisi kontrol edilir
    And "İyi" yazisi kontrol edilir
    And "Orta" yazisi kontrol edilir
    And "Sağlıksız" yazisi kontrol edilir
    And "400-700" yazisi kontrol edilir
    And "700-1000" yazisi kontrol edilir
    And "1000-1500" yazisi kontrol edilir
    And "1500-2000" yazisi kontrol edilir
    And "2000-5000" yazisi kontrol edilir
    Then Carpı isaretine basilip ekran kapatilir
    Then 5 saniye bekle
  @IcHavaKalitesiOlcum
  Scenario: 008 Co2 cihazi cihaz ekranındaki sıcaklık degerinin kontrolu
    Given Uygulama resetlenir
    Then "Co2" detayina gidilir
    Then "AĞA BAĞLI" elementini bekle
    Then 10 saniye bekle
    Then "SICAKLIK" yazisi kontrol edilir
    Then "%" yazisi icerdigi kontrol edilir
    Then "°C" yazisi icerdigi kontrol edilir
    Then Hava kalitesinin "Çok İyi" "İyi" "Orta" "Sağlıksız" "Zararlı" seceneklerinden biri oldugu kontrol edilir
    And Sicaklik degerinin kabul edilebilir bir deger oldugu kontrol edilir
    Then 5 saniye bekle
  @IcHavaKalitesiOlcum
  Scenario: 009 Co2 cihazi cihaz ekranındaki nem degerinin kontrolu
    Given Uygulama resetlenir
    Then "Co2" detayina gidilir
    Then "AĞA BAĞLI" elementini bekle
    Then 10 saniye bekle
    Then "NEM" yazisi kontrol edilir
    Then "SICAKLIK" yazisi kontrol edilir
    Then "%" yazisi icerdigi kontrol edilir
    Then "°C" yazisi icerdigi kontrol edilir
    Then Hava kalitesinin "Çok İyi" "İyi" "Orta" "Sağlıksız" "Zararlı" seceneklerinden biri oldugu kontrol edilir
    And Nem degerinin kabul edilebilir bir deger oldugu kontrol edilir
    Then 5 saniye bekle
  @IcHavaKalitesiOlcum
  Scenario: 010 Co2 cihazi gecmis ekranının acılıp kapanması
    Given Uygulama resetlenir
    Then "Co2" detayina gidilir
    Then "AĞA BAĞLI" elementini bekle
    Then 10 saniye bekle
    And "GEÇMİŞİ GÖSTER" butonuna basilir
    Then 5 saniye bekle
    Then Appbar "Geçmiş" texti kontrol edilir
    Then Appbar subtitle "Co2" texti kontrol edilir
    Then Gecmis ekranindaki yazı "ppm" textini iceriyor mu kontrol edilir
    And "SAATLİK" yazisi kontrol edilir
    And "GÜNLÜK" yazisi kontrol edilir
    And "AYLIK" yazisi kontrol edilir
    Then navigasyondan geri tusuna basilir
    Then 5 saniye bekle
    Then Appbar "Co2" texti kontrol edilir
    Then Appbar subtitle "oturma odası" texti kontrol edilir
  @IcHavaKalitesiOlcum
  Scenario: 011 Co2 cihazi gecmis ekranınında uygulamanın arka plana atılıp tekrar açılması
    Given Uygulama resetlenir
    Then "Co2" detayina gidilir
    Then "AĞA BAĞLI" elementini bekle
    Then 10 saniye bekle
    And "GEÇMİŞİ GÖSTER" butonuna basilir
    Then 10 saniye bekle
    Then "CO2 GEÇMİŞ BİLGİSİ" yazisi kontrol edilir
    And "SAATLİK" yazisi kontrol edilir
    And "GÜNLÜK" yazisi kontrol edilir
    And "AYLIK" yazisi kontrol edilir
    Then Uygulamayi 30 saniye arka planda tut sonra aktive et
    Then 10 saniye bekle
    Then "CO2 GEÇMİŞ BİLGİSİ" yazisi kontrol edilir
    And "SAATLİK" yazisi kontrol edilir
    And "GÜNLÜK" yazisi kontrol edilir
    And "AYLIK" yazisi kontrol edilir
    Then navigasyondan geri tusuna basilir
    Then 5 saniye bekle
    Then Appbar "Co2" texti kontrol edilir
    And Appbar subtitle "oturma odası" texti kontrol edilir
  @IcHavaKalitesiOlcum
  Scenario: 012 Co2 cihazi gecmis ekranınındaki saatlik gecis kontrolleri
    Given Uygulama resetlenir
    Then "Co2" detayina gidilir
    Then "AĞA BAĞLI" elementini bekle
    Then 10 saniye bekle
    Then "GEÇMİŞİ GÖSTER" butonuna basilir
    Then 10 saniye bekle
    Then "SAATLİK" butonuna basilir
    Then 5 saniye bekle
    Then Gecmis ekranindaki degerin "-" icermedigi kontrol edilir
    And 5 saniye bekle
    And Ekrani "left" kaydir
    And 5 saniye bekle
  @IcHavaKalitesiOlcum
  Scenario: 013 Co2 cihazi gecmis ekranınındaki gunluk gecis kontrolleri
    Given Uygulama resetlenir
    Then "Co2" detayina gidilir
    Then "AĞA BAĞLI" elementini bekle
    Then 10 saniye bekle
    Then "GEÇMİŞİ GÖSTER" butonuna basilir
    Then 10 saniye bekle
    Then "GÜNLÜK" butonuna basilir
    Then 5 saniye bekle
    Then Gecmis ekranindaki degerin "-" icermedigi kontrol edilir
    And 5 saniye bekle
    And Ekrani "left" kaydir
    And 5 saniye bekle
  @IcHavaKalitesiOlcum
  Scenario: 014 Co2 cihazi gecmis ekranınındaki aylik gecis kontrolleri
    Given Uygulama resetlenir
    Then "Co2" detayina gidilir
    Then "AĞA BAĞLI" elementini bekle
    Then 10 saniye bekle
    Then "GEÇMİŞİ GÖSTER" butonuna basilir
    Then 10 saniye bekle
    Then "AYLIK" butonuna basilir
    Then 5 saniye bekle
    Then Gecmis ekranindaki degerin "-" icermedigi kontrol edilir
    And 5 saniye bekle
    And Ekrani "left" kaydir
    And 5 saniye bekle
  @IcHavaKalitesiOlcum
  Scenario: 015 Co2 cihazi gece modu tusunun acılıp kapanması kontrolu
    Given Uygulama resetlenir
    Then "Co2" detayina gidilir
    Then "AĞA BAĞLI" elementini bekle
    Then 10 saniye bekle
    Then Gece modu acik mi kapali mi kontrol edilir ve aciksa kapatilir
    And 10 saniye bekle
    And Gece modu buttonuna basilir
    And 10 saniye bekle
    And Gece modu acik mi diye kontrol edilir
    And 10 saniye bekle
    Then Gece modu buttonuna basilir
    Then 5 saniye bekle
  @IcHavaKalitesiOlcum
  Scenario: 016 Co2 cihazi uygulama arkaya atildiktan sonra gece modu tusu kontrolu
    Given Uygulama resetlenir
    Then "Co2" detayina gidilir
    Then "AĞA BAĞLI" elementini bekle
    Then 5 saniye bekle
    Then Gece modu acik mi kapali mi kontrol edilir ve aciksa kapatilir
    And 5 saniye bekle
    And Gece modu buttonuna basilir
    And 10 saniye bekle
    And Uygulamayi 30 saniye arka planda tut sonra aktive et
    Then 10 saniye bekle
    And Gece modu acik mi diye kontrol edilir
    And 5 saniye bekle
    Then Gece modu buttonuna basilir
    Then 5 saniye bekle
  @IcHavaKalitesiOlcum
  Scenario: 017 Co2 cihazi uygulama kill edildikten sonra gece modu tusu kontrolu
    Given Uygulama resetlenir
    Then "Co2" detayina gidilir
    Then "AĞA BAĞLI" elementini bekle
    Then 10 saniye bekle
    Then Gece modu acik mi kapali mi kontrol edilir ve aciksa kapatilir
    And 10 saniye bekle
    And Gece modu buttonuna basilir
    And 10 saniye bekle
    And Uygulama kill edilip 30 sn sonra acilir
    And 10 saniye bekle
    Then "Co2" detayina gidilir
    Then "AĞA BAĞLI" elementini bekle
    Then 10 saniye bekle
    And Gece modu acik mi diye kontrol edilir
    And 5 saniye bekle
    Then Gece modu buttonuna basilir
    Then 5 saniye bekle
  @IcHavaKalitesiOlcum
  Scenario: 018 Co2 cihazi mutfak odasına tasinmasi ve geri alinması kontrolu
    Given Uygulama resetlenir
    Then "Co2" detayina gidilir
    Then "AĞA BAĞLI" elementini bekle
    Then 10 saniye bekle
    When Karbondioksit cihazini mutfak odasina tasi
    And 3 saniye bekle
    And Mutfak odasina gidilir
    And 10 saniye bekle
    And "Mutfak" yazisi kontrol edilir
    Then "-, ----, Seçmek için çift dokunun" detayina gidilir
    Then 10 saniye bekle
    And Karbondioksit cihazini oturma odasina geri tasi
    And 10 saniye bekle
    And Ekrani "right" kaydir
    And 3 saniye bekle









    


    





    
    
























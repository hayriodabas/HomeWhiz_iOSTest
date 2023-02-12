@TumSenaryolar
Feature: Co2
  Author: Hayri Odabas
  Date: 2022
  @IcHavaKalitesiOlcum
  Scenario: 001 Login sonrasi Co2 cihazının  cihazlar ekranında ekli oldugunun kontrolu
    * Uygulama resetlenir
    * Logout yapilir
    * Uygulamaya "mobilotomasyon2@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    * Uygulama resetlenir
    * "Co2" icerigi konrol edilir
    * "Co2" detayina gidilir
    * "AĞA BAĞLI" elementini bekle
    #* 10 saniye bekle
    * "GEÇMİŞİ GÖSTER" yazisi kontrol edilir
    * 5 saniye bekle
  @IcHavaKalitesiOlcum
  Scenario: 002 Login sonrasi Co2 cihazının uygulama arkaya atildiktan sonra cihazlar ekranında ekli oldugunun kontrolu
    * Uygulama resetlenir
    * "Co2" icerigi konrol edilir
    * Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et
    * "Co2" detayina gidilir
    * "AĞA BAĞLI" elementini bekle
    * "AĞA BAĞLI" yazisi kontrol edilir
    * navigasyondan geri tusuna basilir
    * 2 saniye bekle
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * 10 saniye bekle
    * "Co2" icerigi konrol edilir
    * Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et
    * "Co2" detayina gidilir
    * "AĞA BAĞLI" elementini bekle
    * 10 saniye bekle
    * "AĞA BAĞLI" yazisi kontrol edilir
    * 5 saniye bekle
  @IcHavaKalitesiOlcum
  Scenario: 003 Login sonrasi Co2 cihazının uygulama kill edildikten sonra cihazlar ekranında ekli oldugunun kontrolu
    * Uygulama resetlenir
    * "Co2" icerigi konrol edilir
    * Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et
    * "Co2" detayina gidilir
    * "AĞA BAĞLI" elementini bekle
    * "AĞA BAĞLI" yazisi kontrol edilir
    * navigasyondan geri tusuna basilir
    * 2 saniye bekle
    * Uygulama kill edilip 30 sn sonra acilir
    * 10 saniye bekle
    * "Co2" icerigi konrol edilir
    * Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et
    * "Co2" detayina gidilir
    * "AĞA BAĞLI" elementini bekle
    * 10 saniye bekle
    * "AĞA BAĞLI" yazisi kontrol edilir
    * 5 saniye bekle
  @IcHavaKalitesiOlcum
  Scenario: 004 Cihaz ekranındaki yazıların kontrolu
    * Uygulama resetlenir
    * "Co2" detayina gidilir
    * "AĞA BAĞLI" elementini bekle
    * 10 saniye bekle
    * Appbar "Co2" texti kontrol edilir
    * Appbar subtitle "oturma odası" texti kontrol edilir
    * "CO₂ Seviyesi" yazisi kontrol edilir
    * "AĞA BAĞLI" yazisi kontrol edilir
    * "PPM" yazisi icerdigi kontrol edilir
    * "Son Güncelleme:" yazisi icerdigi kontrol edilir
    * "GEÇMİŞİ GÖSTER" yazisi kontrol edilir
    * Ekrani "down" kaydir
    * "CİHAZA TANIMLI KURALLAR" yazisi kontrol edilir
    * "Gece Modu" yazisi kontrol edilir
    * "Henüz kural oluşturmadınız." yazisi kontrol edilir
    * "KURAL EKLE" yazisi kontrol edilir
    * 5 saniye bekle
  @IcHavaKalitesiOlcum
  Scenario: 005 Karbondioksit olcum cihazi cihaz bilgilerinin kontrolu
    * Uygulama resetlenir
    * "Co2" detayina gidilir
    * "AĞA BAĞLI" elementini bekle
    * 10 saniye bekle
    * Cihaz bilgilerine tiklanir
    * 10 saniye bekle
    * Appbar "Cihaz Bilgileri" texti kontrol edilir
    * Appbar subtitle "Co2" texti kontrol edilir
    * "CİHAZ KİMLİĞİ" yazisi kontrol edilir
    * "MARKA" yazisi kontrol edilir
    * "Arçelik" markasi kontrol edilir
    * "MODEL" yazisi kontrol edilir
    * "9950171100" Model numarasi kontrol edilir
    * "DİJİTAL KİMLİK NO" yazisi kontrol edilir
    * "E999958038681866432681" Digital kimlik no kontrol edilir
    * "MAC ADRESİ" yazisi kontrol edilir
    * "A4:E5:7C:79:74:B4" yazisi kontrol edilir
    * "YAZILIM" yazisi kontrol edilir
    * "VERSİYON" yazisi kontrol edilir
    * "2.5.17" versiyon numarasi kontrol edilir
    * "Ürün yazılımı güncel" yazisi kontrol edilir
    * 5 saniye bekle
  @IcHavaKalitesiOlcum
  Scenario: 006 Co2 cihazi PPM değerlerinin kontrolu
    * Uygulama resetlenir
    * "Co2" detayina gidilir
    * "AĞA BAĞLI" elementini bekle
    * 10 saniye bekle
    * PPM degeri kabul edilebilir bir deger mi kontrol edilir
    * "PPM" yazisi icerdigi kontrol edilir
    * Ppm degerinin icinde bulundugu halka ikonu sayfada goruntulenme kontrolu
    * 5 saniye bekle
  @IcHavaKalitesiOlcum
  Scenario: 007 Co2 cihazi karbondioksit seviyesi ekranındaki yazıların kontrolu
    * Uygulama resetlenir
    * "Co2" detayina gidilir
    * "AĞA BAĞLI" elementini bekle
    * 10 saniye bekle
    * "CO₂ Seviyesi" yazisi kontrol edilir
    * Karbondioksit seviyesi bilgilendirmesi yapan pop-up acılır
    * 3 saniye bekle
    * "Hava Kalitesi Durumu:" yazisi kontrol edilir
    * "Çok İyi" yazisi kontrol edilir
    * "İyi" yazisi kontrol edilir
    * "Orta" yazisi kontrol edilir
    * "Sağlıksız" yazisi kontrol edilir
    * "400-700" yazisi kontrol edilir
    * "700-1000" yazisi kontrol edilir
    * "1000-1500" yazisi kontrol edilir
    * "1500-2000" yazisi kontrol edilir
    * "2000-5000" yazisi kontrol edilir
    * Carpı isaretine basilip ekran kapatilir
    * 5 saniye bekle
  @IcHavaKalitesiOlcum
  Scenario: 008 Co2 cihazi cihaz ekranındaki sıcaklık degerinin kontrolu
    * Uygulama resetlenir
    * "Co2" detayina gidilir
    * "AĞA BAĞLI" elementini bekle
    * 10 saniye bekle
    * "SICAKLIK" yazisi kontrol edilir
    * "%" yazisi icerdigi kontrol edilir
    * "°C" yazisi icerdigi kontrol edilir
    * Hava kalitesinin "Çok İyi" "İyi" "Orta" "Sağlıksız" "Zararlı" seceneklerinden biri oldugu kontrol edilir
    * Sicaklik degerinin kabul edilebilir bir deger oldugu kontrol edilir
    * 5 saniye bekle
  @IcHavaKalitesiOlcum
  Scenario: 009 Co2 cihazi cihaz ekranındaki nem degerinin kontrolu
    * Uygulama resetlenir
    * "Co2" detayina gidilir
    * "AĞA BAĞLI" elementini bekle
    * 10 saniye bekle
    * "NEM" yazisi kontrol edilir
    * "SICAKLIK" yazisi kontrol edilir
    * "%" yazisi icerdigi kontrol edilir
    * "°C" yazisi icerdigi kontrol edilir
    * Hava kalitesinin "Çok İyi" "İyi" "Orta" "Sağlıksız" "Zararlı" seceneklerinden biri oldugu kontrol edilir
    * Nem degerinin kabul edilebilir bir deger oldugu kontrol edilir
    * 5 saniye bekle
  @IcHavaKalitesiOlcum
  Scenario: 010 Co2 cihazi gecmis ekranının acılıp kapanması
    * Uygulama resetlenir
    * "Co2" detayina gidilir
    * "AĞA BAĞLI" elementini bekle
    * 10 saniye bekle
    * "GEÇMİŞİ GÖSTER" butonuna basilir
    * 5 saniye bekle
    * Appbar "Geçmiş" texti kontrol edilir
    * Appbar subtitle "Co2" texti kontrol edilir
    * Gecmis ekranindaki yazı "ppm" textini iceriyor mu kontrol edilir
    * "SAATLİK" yazisi kontrol edilir
    * "GÜNLÜK" yazisi kontrol edilir
    * "AYLIK" yazisi kontrol edilir
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
    * Appbar "Co2" texti kontrol edilir
    * Appbar subtitle "oturma odası" texti kontrol edilir
  @IcHavaKalitesiOlcum
  Scenario: 011 Co2 cihazi gecmis ekranınında uygulamanın arka plana atılıp tekrar açılması
    * Uygulama resetlenir
    * "Co2" detayina gidilir
    * "AĞA BAĞLI" elementini bekle
    * 10 saniye bekle
    * "GEÇMİŞİ GÖSTER" butonuna basilir
    * 10 saniye bekle
    * "CO2 GEÇMİŞ BİLGİSİ" yazisi kontrol edilir
    * "SAATLİK" yazisi kontrol edilir
    * "GÜNLÜK" yazisi kontrol edilir
    * "AYLIK" yazisi kontrol edilir
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * 10 saniye bekle
    * "CO2 GEÇMİŞ BİLGİSİ" yazisi kontrol edilir
    * "SAATLİK" yazisi kontrol edilir
    * "GÜNLÜK" yazisi kontrol edilir
    * "AYLIK" yazisi kontrol edilir
    * navigasyondan geri tusuna basilir
    * 5 saniye bekle
    * Appbar "Co2" texti kontrol edilir
    * Appbar subtitle "oturma odası" texti kontrol edilir
  @IcHavaKalitesiOlcum
  Scenario: 012 Co2 cihazi gecmis ekranınındaki saatlik gecis kontrolleri
    * Uygulama resetlenir
    * "Co2" detayina gidilir
    * "AĞA BAĞLI" elementini bekle
    * 10 saniye bekle
    * "GEÇMİŞİ GÖSTER" butonuna basilir
    * 10 saniye bekle
    * "SAATLİK" butonuna basilir
    * 5 saniye bekle
    * Gecmis ekranindaki degerin "-" icermedigi kontrol edilir
    * 5 saniye bekle
    * Ekrani "left" kaydir
    * 5 saniye bekle
  @IcHavaKalitesiOlcum
  Scenario: 013 Co2 cihazi gecmis ekranınındaki gunluk gecis kontrolleri
    * Uygulama resetlenir
    * "Co2" detayina gidilir
    * "AĞA BAĞLI" elementini bekle
    * 10 saniye bekle
    * "GEÇMİŞİ GÖSTER" butonuna basilir
    * 10 saniye bekle
    * "GÜNLÜK" butonuna basilir
    * 5 saniye bekle
    * Gecmis ekranindaki degerin "-" icermedigi kontrol edilir
    * 5 saniye bekle
    * Ekrani "left" kaydir
    * 5 saniye bekle
  @IcHavaKalitesiOlcum
  Scenario: 014 Co2 cihazi gecmis ekranınındaki aylik gecis kontrolleri
    * Uygulama resetlenir
    * "Co2" detayina gidilir
    * "AĞA BAĞLI" elementini bekle
    * 10 saniye bekle
    * "GEÇMİŞİ GÖSTER" butonuna basilir
    * 10 saniye bekle
    * "AYLIK" butonuna basilir
    * 5 saniye bekle
    * Gecmis ekranindaki degerin "-" icermedigi kontrol edilir
    * 5 saniye bekle
    * Ekrani "left" kaydir
    * 5 saniye bekle
  @IcHavaKalitesiOlcum
  Scenario: 015 Co2 cihazi gece modu tusunun acılıp kapanması kontrolu
    * Uygulama resetlenir
    * "Co2" detayina gidilir
    * "AĞA BAĞLI" elementini bekle
    * 10 saniye bekle
    * Gece modu acik mi kapali mi kontrol edilir ve aciksa kapatilir
    * 10 saniye bekle
    * Gece modu buttonuna basilir
    * 10 saniye bekle
    * Gece modu acik mi diye kontrol edilir
    * 10 saniye bekle
    * Gece modu buttonuna basilir
    * 5 saniye bekle
  @IcHavaKalitesiOlcum
  Scenario: 016 Co2 cihazi uygulama arkaya atildiktan sonra gece modu tusu kontrolu
    * Uygulama resetlenir
    * "Co2" detayina gidilir
    * "AĞA BAĞLI" elementini bekle
    * 5 saniye bekle
    * Gece modu acik mi kapali mi kontrol edilir ve aciksa kapatilir
    * 5 saniye bekle
    * Gece modu buttonuna basilir
    * 10 saniye bekle
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * 10 saniye bekle
    * Gece modu acik mi diye kontrol edilir
    * 5 saniye bekle
    * Gece modu buttonuna basilir
    * 5 saniye bekle
  @IcHavaKalitesiOlcum
  Scenario: 017 Co2 cihazi uygulama kill edildikten sonra gece modu tusu kontrolu
    * Uygulama resetlenir
    * "Co2" detayina gidilir
    * "AĞA BAĞLI" elementini bekle
    * 10 saniye bekle
    * Gece modu acik mi kapali mi kontrol edilir ve aciksa kapatilir
    * 10 saniye bekle
    * Gece modu buttonuna basilir
    * 10 saniye bekle
    * Uygulama kill edilip 30 sn sonra acilir
    * 10 saniye bekle
    * "Co2" detayina gidilir
    * "AĞA BAĞLI" elementini bekle
    * 10 saniye bekle
    * Gece modu acik mi diye kontrol edilir
    * 5 saniye bekle
    * Gece modu buttonuna basilir
    * 5 saniye bekle
  @IcHavaKalitesiOlcum
  Scenario: 018 Co2 cihazi mutfak odasına tasinmasi ve geri alinması kontrolu
    * Uygulama resetlenir
    * "Co2" detayina gidilir
    * "AĞA BAĞLI" elementini bekle
    * 10 saniye bekle
    * Karbondioksit cihazini mutfak odasina tasi
    * 3 saniye bekle
    * Mutfak odasina gidilir
    * 10 saniye bekle
    * "Mutfak" yazisi kontrol edilir
    * "-, ----, Seçmek için çift dokunun" detayina gidilir
    * 10 saniye bekle
    * Karbondioksit cihazini oturma odasina geri tasi
    * 10 saniye bekle
    * Ekrani "right" kaydir
    * 3 saniye bekle









    


    





    
    
























@TumSenaryolar
Feature: UrunBagimsizSenaryolar
  Author: Hayri Odabas
  Date: 2021
  NOT: Bu test scriptlerini calistirmadan once uzaktan kontrolun acik olduguna emin olun
  @UrunBagimsizSenaryolar
  Scenario: 001 Login sonrasi cihazlarin bagli oldugunun kontrolleri
    Given Uygulama resetlenir
    Given Logout yapilir
    Given Uygulamaya "hayri.odabas@arcelik.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    #Given 30 saniye bekle
    Given Uygulama resetlenir
    Then "Oturma Odası" adi kontrol edilir
    Then "Rapple Firin" urun kontrolu
    Then "Apollo Pro D7S" urun kontrolu
    Then Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et
  @UrunBagimsizSenaryolar
  Scenario:002 Uygulamayi arka plana atip geri cagirma kontrolleri
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And Uygulamayi 10 saniye arka planda tut sonra aktive et
    Then "Oturma Odası" adi kontrol edilir
    Then "Rapple Firin" urun kontrolu
    Then "Apollo Pro D7S" urun kontrolu
    Then Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et
  @UrunBagimsizSenaryolar
  Scenario:003 Telefon kill edilip tekrar acma kontrolleri
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And Uygulama kill edilip 30 sn sonra acilir
    Then "Oturma Odası" adi kontrol edilir
    Then "Rapple Firin" urun kontrolu
    Then "Apollo Pro D7S" urun kontrolu
    Then 10 saniye bekle
    Then Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et
  @UrunBagimsizSenaryolar
  Scenario:004 Hesabim menusu dogruluk kontrolleri
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    When Yan menu ikonuna basilir
    And Hesabim ekrani acilir
    Then 3 saniye bekle
    Then Bilgileri Güncelleye basilir
    Then 3 saniye bekle
    Then "Hayri" kullanici adi kontrol edilir
    Then "Odabaş" kullanici soyadi kontrol edilir
    Then "hayri.odabas@arcelik.com" email adresi kontrol edilir
    Then "1112223344" telefon numarasi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario:005 Hesabim menusu degisiklik kontrolleri
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    When Yan menu ikonuna basilir
    And Hesabim ekrani acilir
    And 3 saniye bekle
    Then Bilgileri Güncelleye basilir
    And 3 saniye bekle
    And Kullanici adi "Hayrettin" olarak degistirilir
    #And Telefon numarasini "2221112233" olarak degistir
    And Ekrani "up" kaydir
    And "KAYDET" butonuna basilir
    And 3 saniye bekle
    And "TAMAM" butonuna basilir
    And Uygulama kill edilip 30 sn sonra acilir
    When Yan menu ikonuna basilir
    And Hesabim ekrani acilir
    Then 3 saniye bekle
    Then Bilgileri Güncelleye basilir
    And 3 saniye bekle
    Then "Hayrettin" kullanici adi kontrol edilir
    Then "Odabaş" kullanici soyadi kontrol edilir
    Then "hayri.odabas@arcelik.com" email adresi kontrol edilir
    #Then "2221112233" telefon numarasi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario:006 Hesabim menusundeki kullanici adi ve tel no degisikligi kontrolu
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    When Yan menu ikonuna basilir
    And Hesabim ekrani acilir
    And 3 saniye bekle
    Then Bilgileri Güncelleye basilir
    And 3 saniye bekle
    And Kullanici adi "Hayri" olarak degistirilir
    #And Telefon numarasini "1112223344" olarak degistir
    And "KAYDET" butonuna basilir
    And 3 saniye bekle
    And "TAMAM" butonuna basilir
    And Uygulama kill edilip 30 sn sonra acilir
    When Yan menu ikonuna basilir
    And Hesabim ekrani acilir
    And 3 saniye bekle
    Then Bilgileri Güncelleye basilir
    And 3 saniye bekle
    Then "Hayri" kullanici adi kontrol edilir
    Then "Odabaş" kullanici soyadi kontrol edilir
    Then "hayri.odabas@arcelik.com" email adresi kontrol edilir
    Then "1112223344" telefon numarasi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario:007 Ana ekranlar arasinda uygulamanin gecis yaptiginin kontrol edilmesi
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    Then "CİHAZLAR" yazisi kontrol edilir
    And "Home" butonuna basilir
    Then 3 saniye bekle
    Then "HOME" yazisi kontrol edilir
    Then "Akıllı Erişim" butonuna basilir
    Then 3 saniye bekle
    Then "AKILLI ERIŞIM" yazisi kontrol edilir
    Then "tabbar icon devices grey" butonuna basilir
    Then 3 saniye bekle
    Then "CİHAZLAR" yazisi kontrol edilir
    And "KURALLAR" butonuna basilir
    Then 3 saniye bekle
    Then "KURALLAR" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario:008 Uygulamadan login-logout yapilabildiginin kontrol edilmesi
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    When Yan menu ikonuna basilir
    And 5 saniye bekle
    And "Çıkış Yap" butonuna basilir
    And Uygulama kill edilip 30 sn sonra acilir
    And 3 saniye bekle
    And "GİRİŞ YAP" butonuna basilir
    And 3 saniye bekle
    Given Uygulamaya "hayri.odabas@arcelik.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    And 10 saniye bekle
    And "Rapple Firin" urun kontrolu
    And "Apollo Pro D7S" urun kontrolu
    When Yan menu ikonuna basilir
    Then "Çıkış Yap" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario:009 Uygulama arka planada login-logout yapilabildiginin kontrol edilmesi
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    When Yan menu ikonuna basilir
    And 3 saniye bekle
    And Cikis butonuna basilir
    And 10 saniye bekle
    And Uygulamayi 30 saniye arka planda tut sonra aktive et
    And 3 saniye bekle
    And "GİRİŞ YAP" butonuna basilir
    And 3 saniye bekle
    Given Uygulamaya "hayri.odabas@arcelik.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    And 10 saniye bekle
    And "Rapple Firin" urun kontrolu
    And "Apollo Pro D7S" urun kontrolu
    When Yan menu ikonuna basilir
    Then "Çıkış Yap" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario:010 Yan menu basliklarının kontrol edilmesi
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    When Yan menu ikonuna basilir
    And 5 saniye bekle
    Then "Kontrol Paneli" yazisi kontrol edilir
    Then "Hane Yönetimi" yazisi kontrol edilir
    Then "Yemek Tarifleri" yazisi kontrol edilir
    Then "Hesabım" yazisi kontrol edilir
    Then "Destek Merkezi" yazisi kontrol edilir
    Then "Çıkış Yap" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario:011 Yan menuden kontrol paneline gecisin kontrol edilmesi
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    When Yan menu ikonuna basilir
    And 5 saniye bekle
    And Kontrol Paneli butonuna basilir
    And 3 saniye bekle
    Then "CİHAZLAR" yazisi kontrol edilir
    Then "CİHAZ EKLE" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario:012 Yan menuden kullanicilar menusune girisin kontrol edilmesi
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    When Yan menu ikonuna basilir
    And 5 saniye bekle
    And "Hane Yönetimi" butonuna basilir
    And 3 saniye bekle
    And Kullanicilar butonuna basilir
    And 3 saniye bekle
    Then "Kullanıcılar" yazisi kontrol edilir
    Then "Hayri Odabaş" yazisi kontrol edilir
    Then "SAHİBİ" yazisi kontrol edilir
    And "Hayri Odabaş" textine basilir
  @UrunBagimsizSenaryolar
  Scenario:013 Yan menuden Destek merkezi iletisim menusunun acildiginin kontrol edilmesi
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    When Yan menu ikonuna basilir
    And 5 saniye bekle
    And "Destek Merkezi" textine basilir
    And 2 saniye bekle
    Then "Destek Merkezi" yazisi kontrol edilir
    Then "İletişim" yazisi kontrol edilir
    And "İletişim" textine basilir
    And 2 saniye bekle
    Then "İletişim" yazisi kontrol edilir
    Then "Bize Yazın" yazisi kontrol edilir
    Then "İletişim Seçenekleri" yazisi kontrol edilir
    And 2 saniye bekle
    And "İletişim Seçenekleri" textine basilir
    Then "Lütfen Destek Servis tuşuna bastığınızda" icerigi konrol edilir
    And "Homewhiz İletişim Bilgileri" yazisi kontrol edilir
    Then "******3344" yazisi kontrol edilir
    And "Diğer İletişim Bilgileri" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario:014 Yan menuden Destek merkezi kullanici sozlesmesi bolumunun kontrol edilmesi
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    When Yan menu ikonuna basilir
    And 5 saniye bekle
    And "Destek Merkezi" textine basilir
    Then "Destek Merkezi" yazisi kontrol edilir
    Then "Homewhiz Hakkında" yazisi kontrol edilir
    And "Homewhiz Hakkında" textine basilir
    Then "Homewhiz Hakkında" yazisi kontrol edilir
    Then "Açık Kaynak Kütüphaneleri" yazisi kontrol edilir
    And "Yasal Belgeler" textine basilir
    And 3 saniye bekle
    Then "Yasal Belgeler" yazisi kontrol edilir
    And 3 saniye bekle
    Then "Daha iyi bir HomeWhiz deneyimi için lütfen aşağıdaki maddeleri okuyun ve işaretleyerek onaylayın." yazisi kontrol edilir
    And 10 saniye bekle
    And Check isareti secili oldugu kontrol edilir
    Then "HomeWhiz'in Kullanıcı Sözleşmesini okudum. Bilgilerimin Gizlilik Politikası dokümanında belirtildigi sekilde kullanilacagini kabul ediyorum." yazisi kontrol edilir
    And "Kullanıcı Sözleşmesini" textine basilir
    And 3 saniye bekle
    Then Gizlilik politikasi metni kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario:015 Cihazlar ekranindan notifikasyon menusunun acildiginin ve iceriginin kontrol edilmesi
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And Can ikonuna basilir
    Then "Hayri's House" yazisi kontrol edilir
    Then "Türüne göre filtrele" yazisi kontrol edilir
    Then "Bildirimler" yazisi kontrol edilir
    And Ekrani "down" kaydir
    And Ekrani "down" kaydir
    And Ekrani "down" kaydir
    And Ekrani "down" kaydir
    And Ekrani "down" kaydir
    And Ekrani "down" kaydir
    And Ekrani "down" kaydir
    And 10 saniye bekle
    And navigasyondan geri tusuna basilir
    Then "CİHAZLAR" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario:016 Ana ekran iceriginden yemek tariflerinin acildiginin kontrol edilmesi
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And "Home" butonuna basilir
    Then "Hayri's House" yazisi kontrol edilir
    Then "YEMEK TARİFLERİ" yazisi kontrol edilir
    And Yemek tarifleri ok butonuna basilir
    Then "Damak Tadınıza Özel Tarifler" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario:017 Ana ekran menusunden kurallar ekranina gecisin kontrol edilmesi
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And "Home" butonuna basilir
    Then "HOME" yazisi kontrol edilir
    Then "KURAL SETLERİ" yazisi kontrol edilir
    Then "Kural Listesi" yazisi kontrol edilir
    Then "0 Aktif / 0 Kural" yazisi kontrol edilir
    And "Kural Listesi" textine basilir
    And 5 saniye bekle
    Then "Kural bulunamadı" icerigi konrol edilir
    Then "KURAL EKLE" yazisi kontrol edilir
    And "KURAL EKLE" textine basilir
    Then Konum kullanimina izin verilir
    And "Konum Bazlı" textine basilir
    Then "Oluşturacağınız kuralın çeşidini" icerigi konrol edilir
    And "İptal" textine basilir
  @UrunBagimsizSenaryolar
  Scenario:018 Yemek tarifleri icerisinden simit tarifinin secilebildiginin kontrol edilmesi
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    When Yan menu ikonuna basilir
    And 5 saniye bekle
    And "Yemek Tarifleri" textine basilir
    And Tum tarifler butonuna basilir
    Then "Granola" texti bulunup kontrol edilir
    And "Granola" textine basilir
    And 3 saniye bekle
    Then "30 dakika" yazisi kontrol edilir
    Then "Granola" yazisi kontrol edilir
    Then "Bu kolay tarif tüm dikkatleri üzerine çekecek!" yazisi kontrol edilir
    Then "Malzemeler (12)" yazisi kontrol edilir
    Then "100 ml akçaağaç şurubu" texti bulunup kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario:019 Yan menuden yemek tariflerinin acildiginin kontrol edilmesi
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    When Yan menu ikonuna basilir
    And "Yemek Tarifleri" textine basilir
    And Tum tarifler butonuna basilir
    Then "Tüm Tarifler" yazisi kontrol edilir
    Then "Meyveli Somun Kek" texti bulunup kontrol edilir
    And "Meyveli Somun Kek" textine basilir
    And 3 saniye bekle
    Then "Nefis bir kış ziyafeti!" texti bulunup kontrol edilir
#  @UrunBagimsizSenaryolar
#  Scenario:020 Uygulama tanıtım ekran adımlarını kontrol ederek login olunması
#    Given Uygulama silinip tekrar yüklenir
#    Given 10 saniye bekle
#    And Uyari gelirse kontrol edilir
#    Then "HAYATINIZ AYNI OLMAYACAK" yazisi kontrol edilir
#    Then "Evdeki eşyalarınızı akıllı telefon ile yönetebileceğiniz yeni bir yaşam stiline hazırlanın." yazisi kontrol edilir
#    Then "Önceki" yazisi kontrol edilir
#    Then "Geç" yazisi kontrol edilir
#    And "Sonraki" butonuna basilir
#    And 3 saniye bekle
#    And "Önceki" yazisi kontrol edilir
#    And "Geç" yazisi kontrol edilir
#    And "GELECEKTEKİ HAYATINIZ" yazisi kontrol edilir
#    And "HomeWhiz ile zaman kazanır ve evdeki beyaz eşyalarınızı bu uygulamayla yönetebilirsiniz." yazisi kontrol edilir
#    And "Sonraki" butonuna basilir
#    And 3 saniye bekle
#    And "ŞİMDİ BAĞLANMA ZAMANI" yazisi kontrol edilir
#    And "Gündelik hayatınız HomeWhiz ile nasıl değişebilir, bir bakın." yazisi kontrol edilir
#    And "Geç" yazisi kontrol edilir
#    And "Önceki" yazisi kontrol edilir
#    And "Bitti" butonuna basilir
#    And Uyari gelirse kontrol edilir
#    And 3 saniye bekle
#    And Bildirim uyarisi kontrolu
#    And 10 saniye bekle
#    And "Rapple Firin" urun kontrolu
#    And "Apollo Pro D7S" urun kontrolu
#    When Yan menu ikonuna basilir
#    Then "Çıkış Yap" yazisi kontrol edilir
#  @UrunBagimsizSenaryolar
#  Scenario:021 Kayıt Giriş ekranı içeriğinin kontrol edilmesi
#    Given Uygulama silinip tekrar yüklenir
#    Given 30 saniye bekle
#    Then "HAYATINIZ AYNI OLMAYACAK" yazisi kontrol edilir
#    Then "Evdeki eşyalarınızı akıllı telefon ile yönetebileceğiniz yeni bir yaşam stiline hazırlanın." yazisi kontrol edilir
#    And 3 saniye bekle
#    And "Geç" butonuna basilir
#    And Uyari gelirse kontrol edilir
#    And 3 saniye bekle
#    And Bildirim uyarisi kontrolu
#    And 10 saniye bekle
#    And Login kontrolu yapilir
#    And 10 saniye bekle
#    And "Rapple Firin" urun kontrolu
#    And "Apollo Pro D7S" urun kontrolu
#  @UrunBagimsizSenaryolar
#  Scenario:022 Login adımında hatalı şifre girildikten sonra tekrar login denemesi
#    Given Uygulama silinip tekrar yüklenir
#    Given 30 saniye bekle
#    Given "Geç" butonuna basilir
#    And Uyari gelirse kontrol edilir
#    And 3 saniye bekle
#    And Bildirim uyarisi kontrolu
#    And 10 saniye bekle
#    And Login kontrolu yapilir
#    And Bildirim uyarisi kontrolu
#    And 10 saniye bekle
#    And Yan menu ikonuna basilir
#    Then "Çıkış Yap" butonuna basilir
#    Then 5 saniye bekle
#    Given Uygulamaya "hayri.odabas@arcelik.com" mail hesabiyla ve "76777666" sifresiyle login olunur
#    And 5 saniye bekle
#    Then "Giriş başarısız" yazisi kontrol edilir
#    Then "Geçersiz kullanıcı adı veya parola" yazisi kontrol edilir
#    And "Tamam" butonuna basilir
#    And 3 saniye bekle
#  @UrunBagimsizSenaryolar
#  Scenario:023 Login adımında yanlış kullanıcı adı girildikten sonra tekrar login denemesi
#    Given Uygulama silinip tekrar yüklenir
#    Given 30 saniye bekle
#    Given "Geç" butonuna basilir
#    And Uyari gelirse kontrol edilir
#    And 3 saniye bekle
#    And Bildirim uyarisi kontrolu
#    Then 5 saniye bekle
#    Given Uygulamaya "xyz@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
#    And 5 saniye bekle
#    Then "Giriş başarısız" yazisi kontrol edilir
#    Then "Geçersiz kullanıcı adı veya parola" yazisi kontrol edilir
#    And "Tamam" butonuna basilir
#    And 3 saniye bekle
#  @UrunBagimsizSenaryolar
#  Scenario:024 Giriş Yap ekranı içeriğinin kontrol edilmesi
#    Given Uygulama silinip tekrar yüklenir
#    Given 30 saniye bekle
#    Given "Geç" butonuna basilir
#    And Uyari gelirse kontrol edilir
#    And 3 saniye bekle
#    And Bildirim uyarisi kontrolu
#    Then 5 saniye bekle
#    Then "GİRİŞ YAP" butonuna basilir
#    Then 5 saniye bekle
#    Then "HomeWhiz" yazisi kontrol edilir
#    Then "Henüz bir HomeWhiz hesabınız yok mu? Hesap Oluştur" yazisi kontrol edilir
#    Then "HomeWhiz'e hoş geldiniz." yazisi kontrol edilir
#    Then "E-posta Adresiniz:" yazisi kontrol edilir
#    Then "Parolamı Unuttum" yada "Şifremi Unuttum" yazisi kontrol edilir
#    Then "GİRİŞ YAP" yazisi kontrol edilir
#    And 3 saniye bekle
  @UrunBagimsizSenaryolar
  Scenario:025 Oda isminin düzenlenmesinin yapılması
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    #Given Uygulamaya "hayri.odabas@arcelik.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    #Given 10 saniye bekle
    #And Login kontrolu yapilir
    #Given 10 saniye bekle
    Given Banyo odasina gidilir
    Given 5 saniye bekle
    Then "Banyo" yazisi kontrol edilir
    Given "Banyo" Oda duzenle butonuna basilir
    Given 3 saniye bekle
    When "Odayı Düzenle" textine basilir
    Given 5 saniye bekle
    Then "Odayı Düzenle" yazisi kontrol edilir
    Then "Banyo" yazisi kontrol edilir
    Then "ARKA PLAN GÖRSELI" yazisi kontrol edilir
    Then "KAYDET" yazisi kontrol edilir
    Then "VAZGEÇ" yazisi kontrol edilir
    Then Oda ismi "Salon" girilir
    Then 3 saniye bekle
    Then "KAYDET" butonuna basilir
    Then 3 saniye bekle
    Then Uygulama kill edilip 10 sn sonra acilir
    Then 10 saniye bekle
    Given Banyo odasina gidilir
    Then 3 saniye bekle
    Then "Salon" yazisi kontrol edilir
    Given "Salon" Oda duzenle butonuna basilir
    Then 3 saniye bekle
    When "Odayı Düzenle" textine basilir
    Given 3 saniye bekle
    Then Oda ismi "Banyo" girilir
    Then 3 saniye bekle
    Then "KAYDET" butonuna basilir
    Then 3 saniye bekle
  @UrunBagimsizSenaryolar
  Scenario:026 Genel ekleme menüsünden yeni bir oda ekleme ve silme işleminin yapılması
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    Given "navbar icon add" butonuna basilir
    Given 5 saniye bekle
    Then Konum kullanimina izin verilir
    Given 10 saniye bekle
    Then "Yeni Oda Oluştur" yazisi kontrol edilir
    Then "ODA İSMI" yazisi kontrol edilir
    Then "ARKA PLAN GÖRSELI" yazisi kontrol edilir
    And Yeni Oda Ekle butonuna basılır
    And 5 saniye bekle
    Then "Fotoğraf Çek" yazisi kontrol edilir
    Then "Galeriden Seç" yazisi kontrol edilir
    Then "HomeWhiz Galerisinden Seç" yazisi kontrol edilir
    Then "HomeWhiz Galerisinden Seç" textine basilir
    Then Ilk resim secilir
    And 3 saniye bekle
    Then "KAYDET" butonuna basilir
    Then 3 saniye bekle
    Then "Yeni Oda Oluştur" yazisi kontrol edilir
    Then "ODA İSMI" yazisi kontrol edilir
    Then Oda ismi "TestRoom" girilir
    Then "ARKA PLAN GÖRSELI" yazisi kontrol edilir
    Then "KAYDET" yazisi kontrol edilir
    Then "VAZGEÇ" yazisi kontrol edilir
    Then "KAYDET" butonuna basilir
    And 5 saniye bekle
    And Ekrani "left" kaydir
    And Ekrani "left" kaydir
    And Ekrani "left" kaydir
    Then "TestRoom" yazisi kontrol edilir
    Then Uygulama kill edilip 10 sn sonra acilir
    Then 10 saniye bekle
    Then Yeni eklenen odaya gidilir
    Then "TestRoom" yazisi kontrol edilir
    And "TestRoom" Oda duzenle butonuna basilir
    Then 3 saniye bekle
    Then "Odayı Düzenle" yazisi kontrol edilir
    Then "Odayı Sil" yazisi kontrol edilir
    Then "Odayı Sil" butonuna basilir
    Then 3 saniye bekle
    Then "Odayı Silmek İstediğinize Emin Misiniz?" yazisi kontrol edilir
    Then "İptal" yazisi kontrol edilir
    Then "Sil" yazisi kontrol edilir
    Then "Sil" butonuna basilir
    Then 3 saniye bekle
  @UrunBagimsizSenaryolar
  Scenario:027 Genel ekleme menüsünden yeni oda ekleme işleminin iptal edilebildiğinin kontrol edilmesi
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    Given "navbar icon add" butonuna basilir
    Given 5 saniye bekle
    Then Konum kullanimina izin verilir
    Given 10 saniye bekle
    Then "Yeni Oda Oluştur" yazisi kontrol edilir
    Then "ODA İSMI" yazisi kontrol edilir
    Then "ARKA PLAN GÖRSELI" yazisi kontrol edilir
    And Yeni Oda Ekle butonuna basılır
    And 5 saniye bekle
    Then "Fotoğraf Çek" yazisi kontrol edilir
    Then "Galeriden Seç" yazisi kontrol edilir
    Then "HomeWhiz Galerisinden Seç" yazisi kontrol edilir
    Then "HomeWhiz Galerisinden Seç" textine basilir
    Then Ilk resim secilir
    And 3 saniye bekle
    Then "KAYDET" butonuna basilir
    Then 3 saniye bekle
    Then "Yeni Oda Oluştur" yazisi kontrol edilir
    Then "ODA İSMI" yazisi kontrol edilir
    Then Oda ismi "TestRoom" girilir
    Then "ARKA PLAN GÖRSELI" yazisi kontrol edilir
    Then "KAYDET" yazisi kontrol edilir
    Then "VAZGEÇ" yazisi kontrol edilir
    Then "VAZGEÇ" butonuna basilir
    And 3 saniye bekle
    Then "Oturma Odası" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario:028 Genel ekleme menüsünden kural ekleme menüsünün açıldığının kontrol edilmesi
    Given Uygulama resetlenir
    #Given 30 saniye bekle
    And "KURALLAR" butonuna basilir
    Given 5 saniye bekle
    Then "KURALLAR" yazisi kontrol edilir
    Then "0 Aktif" yazisi kontrol edilir
    Then "/" yazisi kontrol edilir
    Then "0 Kural" yazisi kontrol edilir
    Then "0 Aktif" yazisi kontrol edilir
    Then "0 Aktif" yazisi kontrol edilir
    Then "0 Aktif" yazisi kontrol edilir
    Then "KURAL EKLE" yazisi kontrol edilir
    And "KURAL EKLE" butonuna basilir
    And 3 saniye bekle
    Then Konum kullanimina izin verilir
    Given 10 saniye bekle
    Then "Kural Ekle" yazisi kontrol edilir
    Then "Oluşturacağınız kuralın çeşidini belirleyin." yazisi kontrol edilir
    Then "Konum Bazlı" yazisi kontrol edilir
    Then "Cihaz Bazlı" yazisi kontrol edilir
    Then "Zaman Bazlı" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario: 029 Kullanici adi ve sifre bos birakilarak giris uyari mesajlarinin kontrolu
    Given Uygulama resetlenir
    Given 5 saniye bekle
    Given Yan menu ikonuna basilir
    Given 3 saniye bekle
    Given "Çıkış Yap" butonuna basilir
    Given 3 saniye bekle
    Given Uygulamaya "" mail hesabi ve "" sifresiyle login denemesi yapılır
    Given 3 saniye bekle
#    Then "E-posta boş olamaz" yazisi kontrol edilir
#    Then "Parola boş olamaz" yazisi kontrol edilir
    Then "Giriş Yapın" yazisi kontrol edilir
    Then "Henüz bir HomeWhiz hesabınız yok mu? Hesap Oluştur" yazisi kontrol edilir
    Then "HomeWhiz'e hoş geldiniz." yazisi kontrol edilir
#    Then "Parolamı Unuttum" yada "Sifremi Unuttum" yazisi kontrol edilir
    Then "GİRİŞ YAP" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario: 030 Kullanici adi bos sifre AAAA yapilarak giris uyari mesajlarinin kontrolu
    Given Uygulama login testi için resetlenir
    Given 5 saniye bekle
    Given Uygulamaya "" mail hesabi ve "AAAA" sifresiyle login denemesi yapılır
    Given 3 saniye bekle
#    Then "E-posta boş olamaz" yazisi kontrol edilir
    Then "Giriş Yapın" yazisi kontrol edilir
    Then "Henüz bir HomeWhiz hesabınız yok mu? Hesap Oluştur" yazisi kontrol edilir
    Then "HomeWhiz'e hoş geldiniz." yazisi kontrol edilir
#    Then "Parolamı Unuttum" yada "Sifremi Unuttum" yazisi kontrol edilir
    Then "GİRİŞ YAP" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario: 031 Kullanici adi bos sifre 1 yapilarak giris uyari mesajlarinin kontrolu
    Given Uygulama login testi için resetlenir
    Given 5 saniye bekle
    Given Uygulamaya "" mail hesabi ve "1" sifresiyle login denemesi yapılır
    Given 3 saniye bekle
#    Then "E-posta boş olamaz" yazisi kontrol edilir
    Then "Giriş Yapın" yazisi kontrol edilir
    Then "Henüz bir HomeWhiz hesabınız yok mu? Hesap Oluştur" yazisi kontrol edilir
    Then "HomeWhiz'e hoş geldiniz." yazisi kontrol edilir
#    Then "Parolamı Unuttum" yada "Sifremi Unuttum" yazisi kontrol edilir
    Then "GİRİŞ YAP" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario: 032 Kullanici adi bos sifre 12345678 yapilarak giris uyari mesajlarinin kontrolu
    Given Uygulama login testi için resetlenir
    Given 5 saniye bekle
    Given Uygulamaya "" mail hesabi ve "12345678" sifresiyle login denemesi yapılır
    Given 3 saniye bekle
#    Then "E-posta boş olamaz" yazisi kontrol edilir
    Then "Giriş Yapın" yazisi kontrol edilir
    Then "Henüz bir HomeWhiz hesabınız yok mu? Hesap Oluştur" yazisi kontrol edilir
    Then "HomeWhiz'e hoş geldiniz." yazisi kontrol edilir
#    Then "Parolamı Unuttum" yada "Sifremi Unuttum" yazisi kontrol edilir
    Then "GİRİŞ YAP" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario: 033 Kullanici adi a@a.com sifre bos yapilarak giris uyari mesajlarinin kontrolu
    Given Uygulama login testi için resetlenir
    Given 5 saniye bekle
    Given Uygulamaya "a@a.com" mail hesabi ve "" sifresiyle login denemesi yapılır
    Given 3 saniye bekle
#    Then "Parola boş olamaz" yazisi kontrol edilir
    Then "Giriş Yapın" yazisi kontrol edilir
    Then "Henüz bir HomeWhiz hesabınız yok mu? Hesap Oluştur" yazisi kontrol edilir
    Then "HomeWhiz'e hoş geldiniz." yazisi kontrol edilir
#    Then "Parolamı Unuttum" yada "Sifremi Unuttum" yazisi kontrol edilir
    Then "GİRİŞ YAP" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario: 034 Kullanici adi a@a.com sifre bos yapilarak giris uyari mesajlarinin kontrolu
    Given Uygulama login testi için resetlenir
    Given 5 saniye bekle
    Given Uygulamaya "a@a.com" mail hesabi ve "Ab" sifresiyle login denemesi yapılır
    Given 3 saniye bekle
    When "Giriş başarısız" yazisi kontrol edilir
    When "Geçersiz kullanıcı adı veya parola" yazisi kontrol edilir
    When "Tamam" yazisi kontrol edilir
    And "Tamam" butonuna basilir
    And 3 saniye bekle
    Then "Giriş Yapın" yazisi kontrol edilir
    Then "Henüz bir HomeWhiz hesabınız yok mu? Hesap Oluştur" yazisi kontrol edilir
    Then "HomeWhiz'e hoş geldiniz." yazisi kontrol edilir
#    Then "Parolamı Unuttum" yada "Sifremi Unuttum" yazisi kontrol edilir
    Then "GİRİŞ YAP" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario: 035 Kullanici adi xyz sifre 1234578 yapilarak giris uyari mesajlarinin kontrolu
    Given Uygulama login testi için resetlenir
    Given 5 saniye bekle
    Given Uygulamaya "xyz" mail hesabi ve "1234678" sifresiyle login denemesi yapılır
    Given 3 saniye bekle
    Then "Geçersiz e-posta adresi:" yazisi kontrol edilir
    Then "Giriş Yapın" yazisi kontrol edilir
    Then "Henüz bir HomeWhiz hesabınız yok mu? Hesap Oluştur" yazisi kontrol edilir
    Then "HomeWhiz'e hoş geldiniz." yazisi kontrol edilir
#    Then "Parolamı Unuttum" yada "Şifremi Unuttum" yazisi kontrol edilir
    Then "GİRİŞ YAP" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario: 036 Kullanici adi @gmail.com sifre 1234578 yapilarak giris uyari mesajlarinin kontrolu
    Given Uygulama login testi için resetlenir
    Given 5 saniye bekle
    Given Uygulamaya "@gmail.com" mail hesabi ve "1234678" sifresiyle login denemesi yapılır
    Given 3 saniye bekle
    Then "Geçersiz e-posta adresi:" yazisi kontrol edilir
    Then "Giriş Yapın" yazisi kontrol edilir
    Then "Henüz bir HomeWhiz hesabınız yok mu? Hesap Oluştur" yazisi kontrol edilir
    Then "HomeWhiz'e hoş geldiniz." yazisi kontrol edilir
#    Then "Parolamı Unuttum" yada "Sifremi Unuttum" yazisi kontrol edilir
    Then "GİRİŞ YAP" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario: 037 Kullanici adi a.com sifre 1234578 yapilarak giris uyari mesajlarinin kontrolu
    Given Uygulama login testi için resetlenir
    Given 5 saniye bekle
    Given Uygulamaya "a.com" mail hesabi ve "1234678" sifresiyle login denemesi yapılır
    Given 3 saniye bekle
    Then "Geçersiz e-posta adresi:" yazisi kontrol edilir
    Then "Giriş Yapın" yazisi kontrol edilir
    Then "Henüz bir HomeWhiz hesabınız yok mu? Hesap Oluştur" yazisi kontrol edilir
    Then "HomeWhiz'e hoş geldiniz." yazisi kontrol edilir
#    Then "Parolamı Unuttum" yada "Şifremi Unuttum" yazisi kontrol edilir
    Then "GİRİŞ YAP" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario: 038 Kullanici adi a@gmail sifre 1234578 yapilarak giris uyari mesajlarinin kontrolu
    Given Uygulama login testi için resetlenir
    Given 5 saniye bekle
    Given Uygulamaya "a@gmail" mail hesabi ve "1234678" sifresiyle login denemesi yapılır
    Given 3 saniye bekle
    Then "Geçersiz e-posta adresi:" yazisi kontrol edilir
    Then "Giriş Yapın" yazisi kontrol edilir
    Then "Henüz bir HomeWhiz hesabınız yok mu? Hesap Oluştur" yazisi kontrol edilir
    Then "HomeWhiz'e hoş geldiniz." yazisi kontrol edilir
#    Then "Parolamı Unuttum" yada "Sifremi Unuttum" yazisi kontrol edilir
    Then "GİRİŞ YAP" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario: 039 Kullanici adi a@@gmail.com sifre 1234578 yapilarak giris uyari mesajlarinin kontrolu
    Given Uygulama login testi için resetlenir
    Given 5 saniye bekle
    Given Uygulamaya "a@@gmail.com" mail hesabi ve "1234678" sifresiyle login denemesi yapılır
    Given 3 saniye bekle
    Then "Geçersiz e-posta adresi:" yazisi kontrol edilir
    Then "Giriş Yapın" yazisi kontrol edilir
    Then "Henüz bir HomeWhiz hesabınız yok mu? Hesap Oluştur" yazisi kontrol edilir
    Then "HomeWhiz'e hoş geldiniz." yazisi kontrol edilir
#    Then "Parolamı Unuttum" yada "Sifremi Unuttum" yazisi kontrol edilir
    Then "GİRİŞ YAP" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario: 040 Kullanici adi a@#a.com sifre 1234578 yapilarak giris uyari mesajlarinin kontrolu
    Given Uygulama login testi için resetlenir
    Given 5 saniye bekle
    Given Uygulamaya "a@#a.com" mail hesabi ve "1234678" sifresiyle login denemesi yapılır
    Given 3 saniye bekle
    Then "Geçersiz e-posta adresi:" yazisi kontrol edilir
    Then "Giriş Yapın" yazisi kontrol edilir
    Then "Henüz bir HomeWhiz hesabınız yok mu? Hesap Oluştur" yazisi kontrol edilir
    Then "HomeWhiz'e hoş geldiniz." yazisi kontrol edilir
#    Then "Parolamı Unuttum" yada "Sifremi Unuttum" yazisi kontrol edilir
    Then "GİRİŞ YAP" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario: 041 Kullanici adi al$@hot.com sifre 1234578 yapilarak giris uyari mesajlarinin kontrolu
    Given Uygulama login testi için resetlenir
    Given 5 saniye bekle
    Given Uygulamaya "al$@hot.com" mail hesabi ve "1234678" sifresiyle login denemesi yapılır
    Given 3 saniye bekle
    Then "Geçersiz e-posta adresi:" yazisi kontrol edilir
    Then "Giriş Yapın" yazisi kontrol edilir
    Then "Henüz bir HomeWhiz hesabınız yok mu? Hesap Oluştur" yazisi kontrol edilir
    Then "HomeWhiz'e hoş geldiniz." yazisi kontrol edilir
#    Then "Şifremi Unuttum" yada "Parolamı Unuttum" yazisi kontrol edilir
    Then "GİRİŞ YAP" yazisi kontrol edilir
    #bir sonraki teste login olarak geçmesi için eklendi
    Given Uygulama login testi için resetlenir
    Given 5 saniye bekle
    Then Uygulamaya "mobilotomasyon1@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    Given 10 saniye bekle


#  @UrunBagimsizSenaryolar
#  Scenario: Otomatik Tarih ve saat pop-upinin kontrolu
#    Given Uygulama silinip tekrar yüklenir
#    Given 30 saniye bekle
#    When "Sonraki" butonuna basilir
#    When "Sonraki" butonuna basilir
#    When "Bitti" butonuna basilir
#    Then "Uyarı" yazisi kontrol edilir
#    And "ayarlarının ve saat diliminin doğru olduğundan emin olun" yazisi icerdigi kontrol edilir
#    When "Tamam" butonuna basilir
#    Then "HESAP OLUŞTUR" yazisi kontrol edilir
#
#
#  @UrunBagimsizSenaryolar
#  Scenario: Otomatik Tarih ve saat pop-upinin kontrolu
#    Given Uygulama silinip tekrar yüklenir
#    Given 30 saniye bekle
#    When "Geç" butonuna basilir
#    Then "Uyarı" yazisi kontrol edilir
#    And "ayarlarının ve saat diliminin doğru olduğundan emin olun" yazisi icerdigi kontrol edilir
#    When "Tamam" butonuna basilir
#    Then "HESAP OLUŞTUR" yazisi kontrol edilir





















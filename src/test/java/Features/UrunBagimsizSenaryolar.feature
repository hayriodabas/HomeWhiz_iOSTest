@TumSenaryolar
Feature: UrunBagimsizSenaryolar
  Author: Hayri Odabas
  Date: 2021
  NOT: Bu test scriptlerini calistirmadan once uzaktan kontrolun acik olduguna emin olun
  @UrunBagimsizSenaryolar
  Scenario: 001 Login sonrasi cihazlarin bagli oldugunun kontrolleri
    * Uygulama resetlenir
    * Logout yapilir
    * Uygulamaya "hayri.odabas@arcelik.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    #* 30 saniye bekle
    * Uygulama resetlenir
    *  "Oturma Odası" adi kontrol edilir
    *  "Rapple Firin" urun kontrolu
    *  "Apollo Pro D7S" urun kontrolu
    *  Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et
  @UrunBagimsizSenaryolar
  Scenario:002 Uygulamayi arka plana atip geri cagirma kontrolleri
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Uygulamayi 10 saniye arka planda tut sonra aktive et
    *  "Oturma Odası" adi kontrol edilir
    *  "Rapple Firin" urun kontrolu
    *  "Apollo Pro D7S" urun kontrolu
    *  Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et
  @UrunBagimsizSenaryolar
  Scenario:003 Telefon kill edilip tekrar acma kontrolleri
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Uygulama kill edilip 30 sn sonra acilir
    *  "Oturma Odası" adi kontrol edilir
    *  "Rapple Firin" urun kontrolu
    *  "Apollo Pro D7S" urun kontrolu
    *  10 saniye bekle
    *  Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et
  @UrunBagimsizSenaryolar
  Scenario:004 Hesabim menusu dogruluk kontrolleri
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Yan menu ikonuna basilir
    * Hesabim ekrani acilir
    *  3 saniye bekle
    *  Bilgileri Güncelleye basilir
    *  3 saniye bekle
    *  "Hayri" kullanici adi kontrol edilir
    *  "Odabaş" kullanici soyadi kontrol edilir
    *  "hayri.odabas@arcelik.com" email adresi kontrol edilir
    *  "1112223344" telefon numarasi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario:005 Hesabim menusu degisiklik kontrolleri
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Yan menu ikonuna basilir
    * Hesabim ekrani acilir
    * 3 saniye bekle
    *  Bilgileri Güncelleye basilir
    * 3 saniye bekle
    * Kullanici adi "Hayrettin" olarak degistirilir
    #* Telefon numarasini "2221112233" olarak degistir
    * Ekrani "up" kaydir
    * "KAYDET" butonuna basilir
    * 3 saniye bekle
    * "TAMAM" butonuna basilir
    * Uygulama kill edilip 30 sn sonra acilir
    * Yan menu ikonuna basilir
    * Hesabim ekrani acilir
    *  3 saniye bekle
    *  Bilgileri Güncelleye basilir
    * 3 saniye bekle
    *  "Hayrettin" kullanici adi kontrol edilir
    *  "Odabaş" kullanici soyadi kontrol edilir
    *  "hayri.odabas@arcelik.com" email adresi kontrol edilir
    #*  "2221112233" telefon numarasi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario:006 Hesabim menusundeki kullanici adi ve tel no degisikligi kontrolu
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Yan menu ikonuna basilir
    * Hesabim ekrani acilir
    * 3 saniye bekle
    *  Bilgileri Güncelleye basilir
    * 3 saniye bekle
    * Kullanici adi "Hayri" olarak degistirilir
    #* Telefon numarasini "1112223344" olarak degistir
    * "KAYDET" butonuna basilir
    * 3 saniye bekle
    * "TAMAM" butonuna basilir
    * Uygulama kill edilip 30 sn sonra acilir
    * Yan menu ikonuna basilir
    * Hesabim ekrani acilir
    * 3 saniye bekle
    *  Bilgileri Güncelleye basilir
    * 3 saniye bekle
    *  "Hayri" kullanici adi kontrol edilir
    *  "Odabaş" kullanici soyadi kontrol edilir
    *  "hayri.odabas@arcelik.com" email adresi kontrol edilir
    *  "1112223344" telefon numarasi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario:007 Ana ekranlar arasinda uygulamanin gecis yaptiginin kontrol edilmesi
    * Uygulama resetlenir
    #* 30 saniye bekle
    *  "CİHAZLAR" yazisi kontrol edilir
    * "Home" butonuna basilir
    *  3 saniye bekle
    *  "HOME" yazisi kontrol edilir
    *  "Akıllı Erişim" butonuna basilir
    *  3 saniye bekle
    *  "AKILLI ERIŞIM" yazisi kontrol edilir
    *  "tabbar icon devices grey" butonuna basilir
    *  3 saniye bekle
    *  "CİHAZLAR" yazisi kontrol edilir
    * "KURALLAR" butonuna basilir
    *  3 saniye bekle
    *  "KURALLAR" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario:008 Uygulamadan login-logout yapilabildiginin kontrol edilmesi
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Yan menu ikonuna basilir
    * 5 saniye bekle
    * "Çıkış Yap" butonuna basilir
    * Uygulama kill edilip 30 sn sonra acilir
    * 3 saniye bekle
    * "GİRİŞ YAP" butonuna basilir
    * 3 saniye bekle
    * Uygulamaya "hayri.odabas@arcelik.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    * 10 saniye bekle
    * "Rapple Firin" urun kontrolu
    * "Apollo Pro D7S" urun kontrolu
    * Yan menu ikonuna basilir
    *  "Çıkış Yap" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario:009 Uygulama arka planada login-logout yapilabildiginin kontrol edilmesi
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Yan menu ikonuna basilir
    * 3 saniye bekle
    * Cikis butonuna basilir
    * 10 saniye bekle
    * Uygulamayi 30 saniye arka planda tut sonra aktive et
    * 3 saniye bekle
    * "GİRİŞ YAP" butonuna basilir
    * 3 saniye bekle
    * Uygulamaya "hayri.odabas@arcelik.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    * 10 saniye bekle
    * "Rapple Firin" urun kontrolu
    * "Apollo Pro D7S" urun kontrolu
    * Yan menu ikonuna basilir
    *  "Çıkış Yap" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario:010 Yan menu basliklarının kontrol edilmesi
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Yan menu ikonuna basilir
    * 5 saniye bekle
    *  "Kontrol Paneli" yazisi kontrol edilir
    *  "Hane Yönetimi" yazisi kontrol edilir
    *  "Yemek Tarifleri" yazisi kontrol edilir
    *  "Hesabım" yazisi kontrol edilir
    *  "Destek Merkezi" yazisi kontrol edilir
    *  "Çıkış Yap" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario:011 Yan menuden kontrol paneline gecisin kontrol edilmesi
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Yan menu ikonuna basilir
    * 5 saniye bekle
    * Kontrol Paneli butonuna basilir
    * 3 saniye bekle
    *  "CİHAZLAR" yazisi kontrol edilir
    *  "CİHAZ EKLE" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario:012 Yan menuden kullanicilar menusune girisin kontrol edilmesi
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Yan menu ikonuna basilir
    * 5 saniye bekle
    * "Hane Yönetimi" butonuna basilir
    * 3 saniye bekle
    * Kullanicilar butonuna basilir
    * 3 saniye bekle
    *  "Kullanıcılar" yazisi kontrol edilir
    *  "Hayri Odabaş" yazisi kontrol edilir
    *  "SAHİBİ" yazisi kontrol edilir
    * "Hayri Odabaş" textine basilir
  @UrunBagimsizSenaryolar
  Scenario:013 Yan menuden Destek merkezi iletisim menusunun acildiginin kontrol edilmesi
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Yan menu ikonuna basilir
    * 5 saniye bekle
    * "Destek Merkezi" textine basilir
    * 2 saniye bekle
    *  "Destek Merkezi" yazisi kontrol edilir
    *  "İletişim" yazisi kontrol edilir
    * "İletişim" textine basilir
    * 2 saniye bekle
    *  "İletişim" yazisi kontrol edilir
    *  "Bize Yazın" yazisi kontrol edilir
    *  "İletişim Seçenekleri" yazisi kontrol edilir
    * 2 saniye bekle
    * "İletişim Seçenekleri" textine basilir
    *  "Lütfen Destek Servis tuşuna bastığınızda" icerigi konrol edilir
    * "Homewhiz İletişim Bilgileri" yazisi kontrol edilir
    *  "******3344" yazisi kontrol edilir
    * "Diğer İletişim Bilgileri" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario:014 Yan menuden Destek merkezi kullanici sozlesmesi bolumunun kontrol edilmesi
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Yan menu ikonuna basilir
    * 5 saniye bekle
    * "Destek Merkezi" textine basilir
    *  "Destek Merkezi" yazisi kontrol edilir
    *  "Homewhiz Hakkında" yazisi kontrol edilir
    * "Homewhiz Hakkında" textine basilir
    *  "Homewhiz Hakkında" yazisi kontrol edilir
    *  "Açık Kaynak Kütüphaneleri" yazisi kontrol edilir
    * "Yasal Belgeler" textine basilir
    * 3 saniye bekle
    *  "Yasal Belgeler" yazisi kontrol edilir
    * 3 saniye bekle
    *  "Daha iyi bir HomeWhiz deneyimi için lütfen aşağıdaki maddeleri okuyun ve işaretleyerek onaylayın." yazisi kontrol edilir
    * 10 saniye bekle
    * Check isareti secili oldugu kontrol edilir
    *  "HomeWhiz'in Kullanıcı Sözleşmesini okudum. Bilgilerimin Gizlilik Politikası dokümanında belirtildigi sekilde kullanilacagini kabul ediyorum." yazisi kontrol edilir
    * "Kullanıcı Sözleşmesini" textine basilir
    * 3 saniye bekle
    *  Gizlilik politikasi metni kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario:015 Cihazlar ekranindan notifikasyon menusunun acildiginin ve iceriginin kontrol edilmesi
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Can ikonuna basilir
    *  "Hayri's House" yazisi kontrol edilir
    *  "Türüne göre filtrele" yazisi kontrol edilir
    *  "Bildirimler" yazisi kontrol edilir
    * Ekrani "down" kaydir
    * Ekrani "down" kaydir
    * Ekrani "down" kaydir
    * Ekrani "down" kaydir
    * Ekrani "down" kaydir
    * Ekrani "down" kaydir
    * Ekrani "down" kaydir
    * 10 saniye bekle
    * navigasyondan geri tusuna basilir
    *  "CİHAZLAR" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario:016 Ana ekran iceriginden yemek tariflerinin acildiginin kontrol edilmesi
    * Uygulama resetlenir
    #* 30 saniye bekle
    * "Home" butonuna basilir
    *  "Hayri's House" yazisi kontrol edilir
    *  "YEMEK TARİFLERİ" yazisi kontrol edilir
    * Yemek tarifleri ok butonuna basilir
    *  "Damak Tadınıza Özel Tarifler" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario:017 Ana ekran menusunden kurallar ekranina gecisin kontrol edilmesi
    * Uygulama resetlenir
    #* 30 saniye bekle
    * "Home" butonuna basilir
    *  "HOME" yazisi kontrol edilir
    *  "KURAL SETLERİ" yazisi kontrol edilir
    *  "Kural Listesi" yazisi kontrol edilir
    *  "0 Aktif / 0 Kural" yazisi kontrol edilir
    * "Kural Listesi" textine basilir
    * 5 saniye bekle
    *  "Kural bulunamadı" icerigi konrol edilir
    *  "KURAL EKLE" yazisi kontrol edilir
    * "KURAL EKLE" textine basilir
    *  Konum kullanimina izin verilir
    * "Konum Bazlı" textine basilir
    *  "Oluşturacağınız kuralın çeşidini" icerigi konrol edilir
    * "İptal" textine basilir
  @UrunBagimsizSenaryolar
  Scenario:018 Yemek tarifleri icerisinden simit tarifinin secilebildiginin kontrol edilmesi
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Yan menu ikonuna basilir
    * 5 saniye bekle
    * "Yemek Tarifleri" textine basilir
    * Tum tarifler butonuna basilir
    *  "Granola" texti bulunup kontrol edilir
    * "Granola" textine basilir
    * 3 saniye bekle
    *  "30 dakika" yazisi kontrol edilir
    *  "Granola" yazisi kontrol edilir
    *  "Bu kolay tarif tüm dikkatleri üzerine çekecek!" yazisi kontrol edilir
    *  "Malzemeler (12)" yazisi kontrol edilir
    *  "100 ml akçaağaç şurubu" texti bulunup kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario:019 Yan menuden yemek tariflerinin acildiginin kontrol edilmesi
    * Uygulama resetlenir
    #* 30 saniye bekle
    * Yan menu ikonuna basilir
    * "Yemek Tarifleri" textine basilir
    * Tum tarifler butonuna basilir
    *  "Tüm Tarifler" yazisi kontrol edilir
    *  "Meyveli Somun Kek" texti bulunup kontrol edilir
    * "Meyveli Somun Kek" textine basilir
    * 3 saniye bekle
    *  "Nefis bir kış ziyafeti!" texti bulunup kontrol edilir
#  @UrunBagimsizSenaryolar
#  Scenario:020 Uygulama tanıtım ekran adımlarını kontrol ederek login olunması
#    * Uygulama silinip tekrar yüklenir
#    * 10 saniye bekle
#    * Uyari gelirse kontrol edilir
#    *  "HAYATINIZ AYNI OLMAYACAK" yazisi kontrol edilir
#    *  "Evdeki eşyalarınızı akıllı telefon ile yönetebileceğiniz yeni bir yaşam stiline hazırlanın." yazisi kontrol edilir
#    *  "Önceki" yazisi kontrol edilir
#    *  "Geç" yazisi kontrol edilir
#    * "Sonraki" butonuna basilir
#    * 3 saniye bekle
#    * "Önceki" yazisi kontrol edilir
#    * "Geç" yazisi kontrol edilir
#    * "GELECEKTEKİ HAYATINIZ" yazisi kontrol edilir
#    * "HomeWhiz ile zaman kazanır ve evdeki beyaz eşyalarınızı bu uygulamayla yönetebilirsiniz." yazisi kontrol edilir
#    * "Sonraki" butonuna basilir
#    * 3 saniye bekle
#    * "ŞİMDİ BAĞLANMA ZAMANI" yazisi kontrol edilir
#    * "Gündelik hayatınız HomeWhiz ile nasıl değişebilir, bir bakın." yazisi kontrol edilir
#    * "Geç" yazisi kontrol edilir
#    * "Önceki" yazisi kontrol edilir
#    * "Bitti" butonuna basilir
#    * Uyari gelirse kontrol edilir
#    * 3 saniye bekle
#    * Bildirim uyarisi kontrolu
#    * 10 saniye bekle
#    * "Rapple Firin" urun kontrolu
#    * "Apollo Pro D7S" urun kontrolu
#    * Yan menu ikonuna basilir
#    *  "Çıkış Yap" yazisi kontrol edilir
#  @UrunBagimsizSenaryolar
#  Scenario:021 Kayıt Giriş ekranı içeriğinin kontrol edilmesi
#    * Uygulama silinip tekrar yüklenir
#    * 30 saniye bekle
#    *  "HAYATINIZ AYNI OLMAYACAK" yazisi kontrol edilir
#    *  "Evdeki eşyalarınızı akıllı telefon ile yönetebileceğiniz yeni bir yaşam stiline hazırlanın." yazisi kontrol edilir
#    * 3 saniye bekle
#    * "Geç" butonuna basilir
#    * Uyari gelirse kontrol edilir
#    * 3 saniye bekle
#    * Bildirim uyarisi kontrolu
#    * 10 saniye bekle
#    * Login kontrolu yapilir
#    * 10 saniye bekle
#    * "Rapple Firin" urun kontrolu
#    * "Apollo Pro D7S" urun kontrolu
#  @UrunBagimsizSenaryolar
#  Scenario:022 Login adımında hatalı şifre girildikten sonra tekrar login denemesi
#    * Uygulama silinip tekrar yüklenir
#    * 30 saniye bekle
#    * "Geç" butonuna basilir
#    * Uyari gelirse kontrol edilir
#    * 3 saniye bekle
#    * Bildirim uyarisi kontrolu
#    * 10 saniye bekle
#    * Login kontrolu yapilir
#    * Bildirim uyarisi kontrolu
#    * 10 saniye bekle
#    * Yan menu ikonuna basilir
#    *  "Çıkış Yap" butonuna basilir
#    *  5 saniye bekle
#    * Uygulamaya "hayri.odabas@arcelik.com" mail hesabiyla ve "76777666" sifresiyle login olunur
#    * 5 saniye bekle
#    *  "Giriş başarısız" yazisi kontrol edilir
#    *  "Geçersiz kullanıcı adı veya parola" yazisi kontrol edilir
#    * "Tamam" butonuna basilir
#    * 3 saniye bekle
#  @UrunBagimsizSenaryolar
#  Scenario:023 Login adımında yanlış kullanıcı adı girildikten sonra tekrar login denemesi
#    * Uygulama silinip tekrar yüklenir
#    * 30 saniye bekle
#    * "Geç" butonuna basilir
#    * Uyari gelirse kontrol edilir
#    * 3 saniye bekle
#    * Bildirim uyarisi kontrolu
#    *  5 saniye bekle
#    * Uygulamaya "xyz@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
#    * 5 saniye bekle
#    *  "Giriş başarısız" yazisi kontrol edilir
#    *  "Geçersiz kullanıcı adı veya parola" yazisi kontrol edilir
#    * "Tamam" butonuna basilir
#    * 3 saniye bekle
#  @UrunBagimsizSenaryolar
#  Scenario:024 Giriş Yap ekranı içeriğinin kontrol edilmesi
#    * Uygulama silinip tekrar yüklenir
#    * 30 saniye bekle
#    * "Geç" butonuna basilir
#    * Uyari gelirse kontrol edilir
#    * 3 saniye bekle
#    * Bildirim uyarisi kontrolu
#    *  5 saniye bekle
#    *  "GİRİŞ YAP" butonuna basilir
#    *  5 saniye bekle
#    *  "HomeWhiz" yazisi kontrol edilir
#    *  "Henüz bir HomeWhiz hesabınız yok mu? Hesap Oluştur" yazisi kontrol edilir
#    *  "HomeWhiz'e hoş geldiniz." yazisi kontrol edilir
#    *  "E-posta Adresiniz:" yazisi kontrol edilir
#    *  "Parolamı Unuttum" yada "Şifremi Unuttum" yazisi kontrol edilir
#    *  "GİRİŞ YAP" yazisi kontrol edilir
#    * 3 saniye bekle
  @UrunBagimsizSenaryolar
  Scenario:025 Oda isminin düzenlenmesinin yapılması
    * Uygulama resetlenir
    #* 30 saniye bekle
    #* Uygulamaya "hayri.odabas@arcelik.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    #* 10 saniye bekle
    #* Login kontrolu yapilir
    #* 10 saniye bekle
    * Banyo odasina gidilir
    * 5 saniye bekle
    *  "Banyo" yazisi kontrol edilir
    * "Banyo" Oda duzenle butonuna basilir
    * 3 saniye bekle
    * "Odayı Düzenle" textine basilir
    * 5 saniye bekle
    *  "Odayı Düzenle" yazisi kontrol edilir
    *  "Banyo" yazisi kontrol edilir
    *  "ARKA PLAN GÖRSELI" yazisi kontrol edilir
    *  "KAYDET" yazisi kontrol edilir
    *  "VAZGEÇ" yazisi kontrol edilir
    *  Oda ismi "Salon" girilir
    *  3 saniye bekle
    *  "KAYDET" butonuna basilir
    *  3 saniye bekle
    *  Uygulama kill edilip 10 sn sonra acilir
    *  10 saniye bekle
    * Banyo odasina gidilir
    *  3 saniye bekle
    *  "Salon" yazisi kontrol edilir
    * "Salon" Oda duzenle butonuna basilir
    *  3 saniye bekle
    * "Odayı Düzenle" textine basilir
    * 3 saniye bekle
    *  Oda ismi "Banyo" girilir
    *  3 saniye bekle
    *  "KAYDET" butonuna basilir
    *  3 saniye bekle
  @UrunBagimsizSenaryolar
  Scenario:026 Genel ekleme menüsünden yeni bir oda ekleme ve silme işleminin yapılması
    * Uygulama resetlenir
    #* 30 saniye bekle
    * "navbar icon add" butonuna basilir
    * 5 saniye bekle
    *  Konum kullanimina izin verilir
    * 10 saniye bekle
    *  "Yeni Oda Oluştur" yazisi kontrol edilir
    *  "ODA İSMI" yazisi kontrol edilir
    *  "ARKA PLAN GÖRSELI" yazisi kontrol edilir
    * Yeni Oda Ekle butonuna basılır
    * 5 saniye bekle
    *  "Fotoğraf Çek" yazisi kontrol edilir
    *  "Galeriden Seç" yazisi kontrol edilir
    *  "HomeWhiz Galerisinden Seç" yazisi kontrol edilir
    *  "HomeWhiz Galerisinden Seç" textine basilir
    *  Ilk resim secilir
    * 3 saniye bekle
    *  "KAYDET" butonuna basilir
    *  3 saniye bekle
    *  "Yeni Oda Oluştur" yazisi kontrol edilir
    *  "ODA İSMI" yazisi kontrol edilir
    *  Oda ismi "TestRoom" girilir
    *  "ARKA PLAN GÖRSELI" yazisi kontrol edilir
    *  "KAYDET" yazisi kontrol edilir
    *  "VAZGEÇ" yazisi kontrol edilir
    *  "KAYDET" butonuna basilir
    * 5 saniye bekle
    * Ekrani "left" kaydir
    * Ekrani "left" kaydir
    * Ekrani "left" kaydir
    *  "TestRoom" yazisi kontrol edilir
    *  Uygulama kill edilip 10 sn sonra acilir
    *  10 saniye bekle
    *  Yeni eklenen odaya gidilir
    *  "TestRoom" yazisi kontrol edilir
    * "TestRoom" Oda duzenle butonuna basilir
    *  3 saniye bekle
    *  "Odayı Düzenle" yazisi kontrol edilir
    *  "Odayı Sil" yazisi kontrol edilir
    *  "Odayı Sil" butonuna basilir
    *  3 saniye bekle
    *  "Odayı Silmek İstediğinize Emin Misiniz?" yazisi kontrol edilir
    *  "İptal" yazisi kontrol edilir
    *  "Sil" yazisi kontrol edilir
    *  "Sil" butonuna basilir
    *  3 saniye bekle
  @UrunBagimsizSenaryolar
  Scenario:027 Genel ekleme menüsünden yeni oda ekleme işleminin iptal edilebildiğinin kontrol edilmesi
    * Uygulama resetlenir
    #* 30 saniye bekle
    * "navbar icon add" butonuna basilir
    * 5 saniye bekle
    *  Konum kullanimina izin verilir
    * 10 saniye bekle
    *  "Yeni Oda Oluştur" yazisi kontrol edilir
    *  "ODA İSMI" yazisi kontrol edilir
    *  "ARKA PLAN GÖRSELI" yazisi kontrol edilir
    * Yeni Oda Ekle butonuna basılır
    * 5 saniye bekle
    *  "Fotoğraf Çek" yazisi kontrol edilir
    *  "Galeriden Seç" yazisi kontrol edilir
    *  "HomeWhiz Galerisinden Seç" yazisi kontrol edilir
    *  "HomeWhiz Galerisinden Seç" textine basilir
    *  Ilk resim secilir
    * 3 saniye bekle
    *  "KAYDET" butonuna basilir
    *  3 saniye bekle
    *  "Yeni Oda Oluştur" yazisi kontrol edilir
    *  "ODA İSMI" yazisi kontrol edilir
    *  Oda ismi "TestRoom" girilir
    *  "ARKA PLAN GÖRSELI" yazisi kontrol edilir
    *  "KAYDET" yazisi kontrol edilir
    *  "VAZGEÇ" yazisi kontrol edilir
    *  "VAZGEÇ" butonuna basilir
    * 3 saniye bekle
    *  "Oturma Odası" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario:028 Genel ekleme menüsünden kural ekleme menüsünün açıldığının kontrol edilmesi
    * Uygulama resetlenir
    #* 30 saniye bekle
    * "KURALLAR" butonuna basilir
    * 5 saniye bekle
    *  "KURALLAR" yazisi kontrol edilir
    *  "0 Aktif" yazisi kontrol edilir
    *  "/" yazisi kontrol edilir
    *  "0 Kural" yazisi kontrol edilir
    *  "0 Aktif" yazisi kontrol edilir
    *  "0 Aktif" yazisi kontrol edilir
    *  "0 Aktif" yazisi kontrol edilir
    *  "KURAL EKLE" yazisi kontrol edilir
    * "KURAL EKLE" butonuna basilir
    * 3 saniye bekle
    *  Konum kullanimina izin verilir
    * 10 saniye bekle
    *  "Kural Ekle" yazisi kontrol edilir
    *  "Oluşturacağınız kuralın çeşidini belirleyin." yazisi kontrol edilir
    *  "Konum Bazlı" yazisi kontrol edilir
    *  "Cihaz Bazlı" yazisi kontrol edilir
    *  "Zaman Bazlı" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario: 029 Kullanici adi ve sifre bos birakilarak giris uyari mesajlarinin kontrolu
    * Uygulama resetlenir
    * 5 saniye bekle
    * Yan menu ikonuna basilir
    * 3 saniye bekle
    * "Çıkış Yap" butonuna basilir
    * 3 saniye bekle
    * Uygulamaya "" mail hesabi ve "" sifresiyle login denemesi yapılır
    * 3 saniye bekle
#    *  "E-posta boş olamaz" yazisi kontrol edilir
#    *  "Parola boş olamaz" yazisi kontrol edilir
    *  "Giriş Yapın" yazisi kontrol edilir
    *  "Henüz bir HomeWhiz hesabınız yok mu? Hesap Oluştur" yazisi kontrol edilir
    *  "HomeWhiz'e hoş geldiniz." yazisi kontrol edilir
#    *  "Parolamı Unuttum" yada "Sifremi Unuttum" yazisi kontrol edilir
    *  "GİRİŞ YAP" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario: 030 Kullanici adi bos sifre AAAA yapilarak giris uyari mesajlarinin kontrolu
    * Uygulama login testi için resetlenir
    * 5 saniye bekle
    * Uygulamaya "" mail hesabi ve "AAAA" sifresiyle login denemesi yapılır
    * 3 saniye bekle
#    *  "E-posta boş olamaz" yazisi kontrol edilir
    *  "Giriş Yapın" yazisi kontrol edilir
    *  "Henüz bir HomeWhiz hesabınız yok mu? Hesap Oluştur" yazisi kontrol edilir
    *  "HomeWhiz'e hoş geldiniz." yazisi kontrol edilir
#    *  "Parolamı Unuttum" yada "Sifremi Unuttum" yazisi kontrol edilir
    *  "GİRİŞ YAP" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario: 031 Kullanici adi bos sifre 1 yapilarak giris uyari mesajlarinin kontrolu
    * Uygulama login testi için resetlenir
    * 5 saniye bekle
    * Uygulamaya "" mail hesabi ve "1" sifresiyle login denemesi yapılır
    * 3 saniye bekle
#    *  "E-posta boş olamaz" yazisi kontrol edilir
    *  "Giriş Yapın" yazisi kontrol edilir
    *  "Henüz bir HomeWhiz hesabınız yok mu? Hesap Oluştur" yazisi kontrol edilir
    *  "HomeWhiz'e hoş geldiniz." yazisi kontrol edilir
#    *  "Parolamı Unuttum" yada "Sifremi Unuttum" yazisi kontrol edilir
    *  "GİRİŞ YAP" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario: 032 Kullanici adi bos sifre 12345678 yapilarak giris uyari mesajlarinin kontrolu
    * Uygulama login testi için resetlenir
    * 5 saniye bekle
    * Uygulamaya "" mail hesabi ve "12345678" sifresiyle login denemesi yapılır
    * 3 saniye bekle
#    *  "E-posta boş olamaz" yazisi kontrol edilir
    *  "Giriş Yapın" yazisi kontrol edilir
    *  "Henüz bir HomeWhiz hesabınız yok mu? Hesap Oluştur" yazisi kontrol edilir
    *  "HomeWhiz'e hoş geldiniz." yazisi kontrol edilir
#    *  "Parolamı Unuttum" yada "Sifremi Unuttum" yazisi kontrol edilir
    *  "GİRİŞ YAP" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario: 033 Kullanici adi a@a.com sifre bos yapilarak giris uyari mesajlarinin kontrolu
    * Uygulama login testi için resetlenir
    * 5 saniye bekle
    * Uygulamaya "a@a.com" mail hesabi ve "" sifresiyle login denemesi yapılır
    * 3 saniye bekle
#    *  "Parola boş olamaz" yazisi kontrol edilir
    *  "Giriş Yapın" yazisi kontrol edilir
    *  "Henüz bir HomeWhiz hesabınız yok mu? Hesap Oluştur" yazisi kontrol edilir
    *  "HomeWhiz'e hoş geldiniz." yazisi kontrol edilir
#    *  "Parolamı Unuttum" yada "Sifremi Unuttum" yazisi kontrol edilir
    *  "GİRİŞ YAP" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario: 034 Kullanici adi a@a.com sifre bos yapilarak giris uyari mesajlarinin kontrolu
    * Uygulama login testi için resetlenir
    * 5 saniye bekle
    * Uygulamaya "a@a.com" mail hesabi ve "Ab" sifresiyle login denemesi yapılır
    * 3 saniye bekle
    * "Giriş başarısız" yazisi kontrol edilir
    * "Geçersiz kullanıcı adı veya parola" yazisi kontrol edilir
    * "Tamam" yazisi kontrol edilir
    * "Tamam" butonuna basilir
    * 3 saniye bekle
    *  "Giriş Yapın" yazisi kontrol edilir
    *  "Henüz bir HomeWhiz hesabınız yok mu? Hesap Oluştur" yazisi kontrol edilir
    *  "HomeWhiz'e hoş geldiniz." yazisi kontrol edilir
#    *  "Parolamı Unuttum" yada "Sifremi Unuttum" yazisi kontrol edilir
    *  "GİRİŞ YAP" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario: 035 Kullanici adi xyz sifre 1234578 yapilarak giris uyari mesajlarinin kontrolu
    * Uygulama login testi için resetlenir
    * 5 saniye bekle
    * Uygulamaya "xyz" mail hesabi ve "1234678" sifresiyle login denemesi yapılır
    * 3 saniye bekle
    *  "Geçersiz e-posta adresi:" yazisi kontrol edilir
    *  "Giriş Yapın" yazisi kontrol edilir
    *  "Henüz bir HomeWhiz hesabınız yok mu? Hesap Oluştur" yazisi kontrol edilir
    *  "HomeWhiz'e hoş geldiniz." yazisi kontrol edilir
#    *  "Parolamı Unuttum" yada "Şifremi Unuttum" yazisi kontrol edilir
    *  "GİRİŞ YAP" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario: 036 Kullanici adi @gmail.com sifre 1234578 yapilarak giris uyari mesajlarinin kontrolu
    * Uygulama login testi için resetlenir
    * 5 saniye bekle
    * Uygulamaya "@gmail.com" mail hesabi ve "1234678" sifresiyle login denemesi yapılır
    * 3 saniye bekle
    *  "Geçersiz e-posta adresi:" yazisi kontrol edilir
    *  "Giriş Yapın" yazisi kontrol edilir
    *  "Henüz bir HomeWhiz hesabınız yok mu? Hesap Oluştur" yazisi kontrol edilir
    *  "HomeWhiz'e hoş geldiniz." yazisi kontrol edilir
#    *  "Parolamı Unuttum" yada "Sifremi Unuttum" yazisi kontrol edilir
    *  "GİRİŞ YAP" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario: 037 Kullanici adi a.com sifre 1234578 yapilarak giris uyari mesajlarinin kontrolu
    * Uygulama login testi için resetlenir
    * 5 saniye bekle
    * Uygulamaya "a.com" mail hesabi ve "1234678" sifresiyle login denemesi yapılır
    * 3 saniye bekle
    *  "Geçersiz e-posta adresi:" yazisi kontrol edilir
    *  "Giriş Yapın" yazisi kontrol edilir
    *  "Henüz bir HomeWhiz hesabınız yok mu? Hesap Oluştur" yazisi kontrol edilir
    *  "HomeWhiz'e hoş geldiniz." yazisi kontrol edilir
#    *  "Parolamı Unuttum" yada "Şifremi Unuttum" yazisi kontrol edilir
    *  "GİRİŞ YAP" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario: 038 Kullanici adi a@gmail sifre 1234578 yapilarak giris uyari mesajlarinin kontrolu
    * Uygulama login testi için resetlenir
    * 5 saniye bekle
    * Uygulamaya "a@gmail" mail hesabi ve "1234678" sifresiyle login denemesi yapılır
    * 3 saniye bekle
    *  "Geçersiz e-posta adresi:" yazisi kontrol edilir
    *  "Giriş Yapın" yazisi kontrol edilir
    *  "Henüz bir HomeWhiz hesabınız yok mu? Hesap Oluştur" yazisi kontrol edilir
    *  "HomeWhiz'e hoş geldiniz." yazisi kontrol edilir
#    *  "Parolamı Unuttum" yada "Sifremi Unuttum" yazisi kontrol edilir
    *  "GİRİŞ YAP" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario: 039 Kullanici adi a@@gmail.com sifre 1234578 yapilarak giris uyari mesajlarinin kontrolu
    * Uygulama login testi için resetlenir
    * 5 saniye bekle
    * Uygulamaya "a@@gmail.com" mail hesabi ve "1234678" sifresiyle login denemesi yapılır
    * 3 saniye bekle
    *  "Geçersiz e-posta adresi:" yazisi kontrol edilir
    *  "Giriş Yapın" yazisi kontrol edilir
    *  "Henüz bir HomeWhiz hesabınız yok mu? Hesap Oluştur" yazisi kontrol edilir
    *  "HomeWhiz'e hoş geldiniz." yazisi kontrol edilir
#    *  "Parolamı Unuttum" yada "Sifremi Unuttum" yazisi kontrol edilir
    *  "GİRİŞ YAP" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario: 040 Kullanici adi a@#a.com sifre 1234578 yapilarak giris uyari mesajlarinin kontrolu
    * Uygulama login testi için resetlenir
    * 5 saniye bekle
    * Uygulamaya "a@#a.com" mail hesabi ve "1234678" sifresiyle login denemesi yapılır
    * 3 saniye bekle
    *  "Geçersiz e-posta adresi:" yazisi kontrol edilir
    *  "Giriş Yapın" yazisi kontrol edilir
    *  "Henüz bir HomeWhiz hesabınız yok mu? Hesap Oluştur" yazisi kontrol edilir
    *  "HomeWhiz'e hoş geldiniz." yazisi kontrol edilir
#    *  "Parolamı Unuttum" yada "Sifremi Unuttum" yazisi kontrol edilir
    *  "GİRİŞ YAP" yazisi kontrol edilir
  @UrunBagimsizSenaryolar
  Scenario: 041 Kullanici adi al$@hot.com sifre 1234578 yapilarak giris uyari mesajlarinin kontrolu
    * Uygulama login testi için resetlenir
    * 5 saniye bekle
    * Uygulamaya "al$@hot.com" mail hesabi ve "1234678" sifresiyle login denemesi yapılır
    * 3 saniye bekle
    *  "Geçersiz e-posta adresi:" yazisi kontrol edilir
    *  "Giriş Yapın" yazisi kontrol edilir
    *  "Henüz bir HomeWhiz hesabınız yok mu? Hesap Oluştur" yazisi kontrol edilir
    *  "HomeWhiz'e hoş geldiniz." yazisi kontrol edilir
#    *  "Şifremi Unuttum" yada "Parolamı Unuttum" yazisi kontrol edilir
    *  "GİRİŞ YAP" yazisi kontrol edilir
    #bir sonraki teste login olarak geçmesi için eklendi
    * Uygulama login testi için resetlenir
    * 5 saniye bekle
    *  Uygulamaya "mobilotomasyon1@gmail.com" mail hesabiyla ve "12345678" sifresiyle login olunur
    * 10 saniye bekle


#  @UrunBagimsizSenaryolar
#  Scenario: Otomatik Tarih ve saat pop-upinin kontrolu
#    * Uygulama silinip tekrar yüklenir
#    * 30 saniye bekle
#    * "Sonraki" butonuna basilir
#    * "Sonraki" butonuna basilir
#    * "Bitti" butonuna basilir
#    *  "Uyarı" yazisi kontrol edilir
#    * "ayarlarının ve saat diliminin doğru olduğundan emin olun" yazisi icerdigi kontrol edilir
#    * "Tamam" butonuna basilir
#    *  "HESAP OLUŞTUR" yazisi kontrol edilir
#
#
#  @UrunBagimsizSenaryolar
#  Scenario: Otomatik Tarih ve saat pop-upinin kontrolu
#    * Uygulama silinip tekrar yüklenir
#    * 30 saniye bekle
#    * "Geç" butonuna basilir
#    *  "Uyarı" yazisi kontrol edilir
#    * "ayarlarının ve saat diliminin doğru olduğundan emin olun" yazisi icerdigi kontrol edilir
#    * "Tamam" butonuna basilir
#    *  "HESAP OLUŞTUR" yazisi kontrol edilir





















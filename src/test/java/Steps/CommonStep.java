package Steps;

import Screens.BaseScreen;
////import cucumber.api.PendingException;
////import cucumber.api.java.Before;
////import cucumber.api.java.en.And;
////import cucumber.api.java.en.Given;
////import cucumber.api.java.en.Then;
////import cucumber.api.java.en.When;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import java.net.MalformedURLException;
import java.util.concurrent.TimeUnit;

public class CommonStep extends BaseSteps {

    String homeName = "Hayri's House";

    @Before
    public void setup() {
        setupCucumber();
    }


    @Then("^Devices ekranina gelinir$")
    public void devicesEkraninaGelinir() {
        newScenariosScreens.control_isdevicepage();
        reportLog("Devices ekranina gelinir");
    }

    @Then("^Ev adi kontrol edilir$")
    public void evAdiKontrolEdilir() {
        newScenariosScreens.control_homeName(homeName);
        reportLog("Ev adi kontrol edilir");
    }


    @Then("^Program Secenekleri alanin yer aldigi kontrol edilir$")
    public void programSecenekleriAlaninYerAldigiKontrolEdilir() {
        commonfunc.control_programOptions();
        reportLog("Program Secenekleri alanin yer aldigi kontrol edilir");
    }


    @Then("^Urunun icon bilgisi kontrol edilir$")
    public void urununIconBilgisiKontrolEdilir() {
        newScenariosScreens.control_deviceIcon();
        reportLog("Urunun icon bilgisi kontrol edilir");
    }

    @Then("^on off butonu kontrol edilir$")
    public void onOffButonuKontrolEdilir() {
        newScenariosScreens.control_onOffButon();
        reportLog("on off butonu kontrol edilir");
    }

    @Then("^remote control bilgisi kontrol edilir$")
    public void remoteControlBilgisiKontrolEdilir() {
        commonfunc.control_remoteControlInfo();
        reportLog("remote control bilgisi kontrol edilir");
    }

    @Then("^on off butonunun yer aldigi kontrol edilir$")
    public void onOffButonununYerAldigiKontrolEdilir() {
        commonfunc.control_onOffBtn();
        reportLog("on off butonunun yer aldigi kontrol edilir");
    }

    @Then("^device information bilgilerinin yer aldigi kontrol edilir$")
    public void deviceInformationBilgilerininYerAldigiKontrolEdilir() {
        commonfunc.control_dropdownDeviceInfo();
        reportLog("device information bilgilerinin yer aldigi kontrol edilir");
    }

    @Then("^settings alaninin yer aldigi kontrol edilir$")
    public void settingsAlanininYerAldigiKontrolEdilir() {
        commonfunc.control_dropDownSettings();
        reportLog("settings alaninin yer aldigi kontrol edilir");
    }

    @And("^buton off olarak ayarlanmalidir$")
    public void butonOffOlarakAyarlanmalidir() {
        commonfunc.onoffcontrolandturnoff();
        reportLog("buton off olarak ayarlanmalidir");
    }

    @And("^buton on olarak ayarlanmalidir$")
    public void butonOnOlarakAyarlanmalidir() {
        commonfunc.onoffcontrolandturnon();
        reportLog("buton on olarak ayarlanmalidir");
    }

    @Then("^Enerji Tuketimi bilgilerinin gosterildigi kontrol edilir$")
    public void enerjiTuketimiBilgilerininGosterildigiKontrolEdilir() throws InterruptedException {
        commonfunc.control_energyBarForElectricity();
        reportLog("Enerji Tuketimi bilgilerinin gosterildigi kontrol edilir");
    }

    @Then("^Su Tuketimi bilgilerinin gosterildigi kontrol edilir$")
    public void suTuketimiBilgilerininGosterildigiKontrolEdilir() throws InterruptedException {
        commonfunc.control_energyBarForWater();
        reportLog("Su Tuketimi bilgilerinin gosterildigi kontrol edilir");
    }

    @Then("^ipuclari bolumunun yer aldigi kontrol edilir$")
    public void ipuclariBolumununYerAldigiKontrolEdilir() throws InterruptedException {
        commonfunc.control_tipsLabel();
        reportLog("ipuclari bolumunun yer aldigi kontrol edilir");
    }

    @And("^sol ustten geri tusuna basilir$")
    public void solUsttenGeriTusunaBasilir() {
        commonfunc.click_backButton();
        reportLog("sol ustten geri tusuna basilir");
    }

    @When("^navigasyondan geri tusuna basilir$")
    public void navigasyondanGeriTusunaBasilir() {
        commonfunc.navigateBack();
        reportLog("navigasyondan geri tusuna basilir");
    }

    @And("^Dropdown butonuna basilir$")
    public void dropdownButonunaBasilir() {
        commonfunc.click_btnDropDown();
        reportLog("Dropdown butonuna basilir");
    }

    @And("^acma kapama butonuna basilir$")
    public void acmaKapamaButonunaBasilir() throws InterruptedException {
        commonfunc.click_onOffButton();
        reportLog("acma kapama butonuna basilir");
    }

    @Then("^on off butonunun aktifligi kontrol edilir$")
    public void onOffButonununAktifligiKontrolEdilir() {
        newScenariosScreens.control_onOffBackground();
        reportLog("on off butonunun aktifligi kontrol edilir");
    }

    @And("^Home butonuna basilir$")
    public void homeButonunaBasilir() {
        newScenariosScreens.click_homeBtn();
        reportLog("Home butonuna basilir");
    }

    @Then("^Anasayfa kontrol edilir$")
    public void anasayfaKontrolEdilir() {
        newScenariosScreens.control_homePage();
        reportLog("Anasayfa kontrol edilir");
    }

    @And("^rule butonuna basilir$")
    public void ruleButonunaBasilir() {
        newScenariosScreens.click_rule();
        reportLog("rule butonuna basilir");
    }

    @Then("^rule list ekrani acilir$")
    public void ruleListEkraniAcilir() {
        newScenariosScreens.control_rulepage();
        reportLog("rule list ekrani acilir");
    }

    @Then("^Urun marka bilgisi kontrol edilir$")
    public void urunMarkaBilgisiKontrolEdilir() {
        commonfunc.control_deviceBrand();
        reportLog("Urun marka bilgisi kontrol edilir");
    }

    @Then("^SKU bilgisi kontrol edilir$")
    public void skuBilgisiKontrolEdilir() {
        commonfunc.control_SKUinfo();
        reportLog("SKU bilgisi kontrol edilir");
    }

    @Then("^Favoriler butonun yer aldigi kontrol edilir$")
    public void favorilerButonunYerAldigiKontrolEdilir() {
        commonfunc.control_favourites();
        reportLog("Favoriler butonun yer aldigi kontrol edilir");
    }

    @Then("^Sihirbaz butonunun yer aldigi kontrol edilir$")
    public void sihirbazButonununYerAldigiKontrolEdilir() {
        commonfunc.control_wizard();
        reportLog("Sihirbaz butonunun yer aldigi kontrol edilir");
    }

    @And("^favoriler alanina tiklanir$")
    public void favorilerAlaninaTiklanir() {
        commonfunc.click_fav();
        reportLog("favoriler alanina tiklanir");
    }

    @And("^wizard alanina tiklanir$")
    public void wizardAlaninaTiklanir() {
        commonfunc.click_wizard();
        reportLog("wizard alanina tiklanir");
    }

    @And("^program secimi alanina tiklanir$")
    public void programSecimiAlaninaTiklanir() {
        commonfunc.click_programSelect();
        reportLog("program secimi alanina tiklanir");
    }

    @Then("^favoriler acilir$")
    public void favorilerAcilir() {
        //todo:bu fonksiyon favoriler sayfası kullanılabilir olduğunda yazılacak.
    }

    @Then("^wizard acilir$")
    public void wizardAcilir() {
        //todo:bu fonksiyon favoriler sayfası kullanılabilir olduğunda yazılacak.
    }

    @Then("^program secim ekrani acilir$")
    public void programSecimEkraniAcilir() {
        commonfunc.control_progSelectPage();
        reportLog("program secim ekrani acilir");
    }

    @Then("^Favoriler ikonunun yer aldigi kontrol edilir$")
    public void favorilerIkonununYerAldigiKontrolEdilir() {
        commonfunc.control_program_fav_icon();
        reportLog("Favoriler ikonunun yer aldigi kontrol edilir");
    }

    @Then("^Program Secimi ikonunun yer aldigi kontrol edilir$")
    public void programSecimiIkonununYerAldigiKontrolEdilir() {
        commonfunc.control_program_selection_icon();
        reportLog("Program Secimi ikonunun yer aldigi kontrol edilir");
    }


    @Then("^Sihirbaz butonuna ait bir ikon oldugu gorulur$")
    public void sihirbazButonunaAitBirIkonOlduguGorulur() {
        commonfunc.control_program_wizard_icon();
        reportLog("Sihirbaz butonuna ait bir ikon oldugu gorulur");
    }

    @Then("^ipuclari alaninda bir adet ipucunun yer aldiginin kontrolu$")
    public void ipuclariAlanindaBirAdetIpucununYerAldigininKontrolu() throws InterruptedException {
        commonfunc.control_tipsLabel_text();
        reportLog("ipuclari alaninda bir adet ipucunun yer aldiginin kontrolu");
    }

    @And("^cihaz detay ekranindaki ipucuna tiklanir$")
    public void cihazDetayEkranindakiIpucunaTiklanir() throws InterruptedException {
        commonfunc.click_tip();
        reportLog("cihaz detay ekranindaki ipucuna tiklanir");
    }

    @Then("^ipucu ekrani acilir$")
    public void ipucuEkraniAcilir() {
        //todo: bu fonk ipucu sayfasının tasarımı yapılınca yazılacak.
    }

    @Then("^yardim alaninin yer aldigi kontrol edilir$")
    public void yardimAlanininYerAldigiKontrolEdilir() {
        commonfunc.control_dropDownhelper();
        reportLog("yardim alaninin yer aldigi kontrol edilir");
    }

    @Then("^Cihaz bilgileri sayfasinin acildigi kontrol edilir$")
    public void cihazBilgileriSayfasininAcildigiKontrolEdilir() {
        commonfunc.control_deviceinfoPage();
        reportLog("Cihaz bilgileri sayfasinin acildigi kontrol edilir");
    }

    @Then("^Ayarlar sayfasinin acildigi kontrol edilir$")
    public void ayarlarSayfasininAcildigiKontrolEdilir() {
        commonfunc.control_settingsPage();
        reportLog("Ayarlar sayfasinin acildigi kontrol edilir");
    }

    @Then("^Yardim sayfasinin acildigi kontrol edilir$")
    public void yardimSayfasininAcildigiKontrolEdilir() {
        //todo: bu fonk tasarımı yapıldığında yazılacak.
    }

    @Then("^Device History alaninin yer aldigi kontrol edilir$")
    public void deviceHistoryAlanininYerAldigiKontrolEdilir() throws InterruptedException {
        commonfunc.control_deviceHistory();
        reportLog("Device History alaninin yer aldigi kontrol edilir");
    }

    @And("^Device History alanina tiklanir$")
    public void deviceHistoryAlaninaTiklanir() throws InterruptedException {
        commonfunc.click_deviceHistory();
        reportLog("Device History alanina tiklanir");
    }

    @And("^Device History sayfasinin acildiği kontrol edilir$")
    public void deviceHistorySayfasininAcildiğiKontrolEdilir() {
        //TODO: bu ekranın tasarımı yapıldığında fonk yazılacak.
    }

    @Then("^Cihaz gecmisi alaninda tarih ve saat bilgisinin yer aldigi kontrol edilir$")
    public void cihazGecmisiAlanindaTarihVeSaatBilgisininYerAldigiKontrolEdilir() throws InterruptedException {
        commonfunc.control_deviceHistoryDate();
        reportLog("Cihaz gecmisi alaninda tarih ve saat bilgisinin yer aldigi kontrol edilir");
    }

    @Then("^Cihaz gecmisi alaninda program adinin gosterildiginin kontrolu$")
    public void cihazGecmisiAlanindaProgramAdininGosterildigininKontrolu() throws InterruptedException {
        commonfunc.control_historyProgram();
        reportLog("Cihaz gecmisi alaninda program adinin gosterildiginin kontrolu");
    }

    @Then("^Cihaz gecmisi alaninda sicaklik bilgisinin yer aldiginin kontrolu$")
    public void cihazGecmisiAlanindaSicaklikBilgisininYerAldigininKontrolu() throws InterruptedException {
        commonfunc.control_HistoryDegreeValue();
        reportLog("Cihaz gecmisi alaninda sicaklik bilgisinin yer aldiginin kontrolu");
    }

    @Then("^Cihaz gecmisi alaninda devir bilgisinin yer aldiginin kontrolu$")
    public void cihazGecmisiAlanindaDevirBilgisininYerAldigininKontrolu() throws InterruptedException {
        commonfunc.control_HistoryCycleValue();
        reportLog("Cihaz gecmisi alaninda devir bilgisinin yer aldiginin kontrolu");
    }

    @Then("^Cihaz gecmisi alaninda favori iconunun yer aldiginin kontrolu$")
    public void cihazGecmisiAlanindaFavoriIconununYerAldigininKontrolu() throws InterruptedException {
        commonfunc.control_historyfavicon();
        reportLog("Cihaz gecmisi alaninda favori iconunun yer aldiginin kontrolu");
    }

    @Then("^Cihaz gecmisi alaninda favori iconunun tiklanabilir oldugunun kontrolu$")
    public void cihazGecmisiAlanindaFavoriIconununTiklanabilirOldugununKontrolu() throws InterruptedException {
        commonfunc.control_historyfavClickable();
        reportLog("Cihaz gecmisi alaninda favori iconunun tiklanabilir oldugunun kontrolu");
    }

    @Then("^Cihaz kurallari ikonu kontrol edilir$")
    public void cihazKurallariIkonuKontrolEdilir() {
        commonfunc.control_ruleicon();
        reportLog("Cihaz kurallari ikonu kontrol edilir");
    }

    @Then("^Cihaz kurallari alaninin yer aldiginin kontrolu$")
    public void cihazKurallariAlanininYerAldigininKontrolu() {
        commonfunc.control_rule();
        reportLog("Cihaz kurallari alaninin yer aldiginin kontrolu");
    }

    @And("^kurallar alanina tiklanir$")
    public void kurallarAlaninaTiklanir() {
        commonfunc.click_rule();
        reportLog("kurallar alanina tiklanir");
    }

    @Then("^kurallar sayfasinin acildigi kontrol edilir$")
    public void kurallarSayfasininAcildigiKontrolEdilir() {
        commonfunc.control_rulePage();
        reportLog("kurallar sayfasinin acildigi kontrol edilir");
    }

    @Then("^Cihazin on oldugu kontrol edilir$")
    public void cihazinOnOlduguKontrolEdilir() {
        commonfunc.control_onOffButon_ON();
        reportLog("Cihazin on oldugu kontrol edilir");
    }

    @Then("^Cihazin off oldugu kontrol edilir$")
    public void cihazinOffOlduguKontrolEdilir() throws InterruptedException {
        commonfunc.control_onOffButon_OFF();
        reportLog("Cihazin off oldugu kontrol edilir");
    }

    @And("^Urun detay on off butonunun off oldugu kontrol edilir$")
    public void urunDetayOnOffButonununOffOlduguKontrolEdilir() {
        commonfunc.onoffcontrolandturnoff();
        reportLog("Urun detay on off butonunun off oldugu kontrol edilir");
    }

    @And("^Urun detay on off butonuna tiklanir$")
    public void urunDetayOnOffButonunaTiklanir() throws InterruptedException {
        commonfunc.click_onOffButton();
        reportLog("Urun detay on off butonuna tiklanir");
    }

    @And("^Urun detay on off butonunun on oldugu kontrol edilir$")
    public void urunDetayOnOffButonununOnOlduguKontrolEdilir() {
        commonfunc.onoffcontrolandturnon();
        reportLog("Urun detay on off butonunun on oldugu kontrol edilir");
    }

    @Then("^Ana ekranda hane adinin yer aldigi kontrol edilir$")
    public void anaEkrandaHaneAdininYerAldigiKontrolEdilir() {
        newScenariosScreens.control_homeName_Temprature(homeName);
        reportLog("Ana ekranda hane adinin yer aldigi kontrol edilir");
    }

    @And("^Detay ekranindaki sol ust geri tusuna basilir$")
    public void detayEkranindakiSolUstGeriTusunaBasilir() throws InterruptedException {
        commonfunc.click_leftBackButton();
        reportLog("Detay ekranindaki sol ust geri tusuna basilir");
    }

    @Then("^Sol ust geri tusu konrol edilir$")
    public void solUstGeriTusuKonrolEdilir() {
        commonfunc.control_leftBackButton();
        reportLog("Sol ust geri tusu konrol edilir");
    }

    @And("^Cihaz bilgilerine tiklanir$")
    public void cihazBilgilerineTiklanir() throws InterruptedException {
        Thread.sleep(3000);
        commonfunc.click_otheroptions();
        commonfunc.click_deviceinfo();
        reportLog("Cihaz bilgilerine tiklanir");

    }
    @And("^Cihaz bilgilerine tikla$")
    public void cihazBilgilerineTikla() throws InterruptedException {
        Thread.sleep(3000);
        commonfunc.click_otheroptions();
        reportLog("Cihaz bilgilerine tikla");
    }

    @Then("^Cihaz bilgileri ekraninin acildigi kontrol edilir$")
    public void cihazBilgileriEkranininAcildigiKontrolEdilir() {
        commonfunc.control_deviceinfoPage();
        reportLog("Cihaz bilgileri ekraninin acildigi kontrol edilir");
    }

    @Then("^Cihaz bilgileri appbar text kontrolu yapilir$")
    public void cihazBilgileriAppbarTextKontroluYapilir() {
        commonfunc.control_deviceinfoAppbarText();
        reportLog("Cihaz bilgileri appbar text kontrolu yapilir");
    }

    @Then("^Marka title text kontrolu yapilir$")
    public void markaTitleTextKontroluYapilir() {
        commonfunc.control_brandText();
        reportLog("Marka title text kontrolu yapilir");
    }

    @Then("^Model title text kontrolu yapilir$")
    public void modelTitleTextKontroluYapilir() {
        commonfunc.control_modelText();
        reportLog("Model title text kontrolu yapilir");
    }

    @Then("^Digital kimlik no title text kontrolu yapilir$")
    public void digitalKimlikNoTitleTextKontroluYapilir() {
        commonfunc.control_digital_id_text();
        reportLog("Digital kimlik no title text kontrolu yapilir");
    }

    @Then("^Mac adresi title text kontrolunun yapilmasi$")
    public void macAdresiTitleTextKontrolununYapilmasi() {
        commonfunc.control_macAddressText();
        reportLog("Mac adresi title text kontrolunun yapilmasi");
    }

    @Then("^Yazilim text kontrolu yapilir$")
    public void yazilimTextKontroluYapilir() {
        commonfunc.control_softwareText();
        reportLog("Yazilim text kontrolu yapilir");
    }

    @Then("^Versiyon text kontrolu yapilir$")
    public void versiyonTextKontroluYapilir() {
        commonfunc.control_versionText();
        reportLog("Versiyon text kontrolu yapilir");
    }

    @Then("^Cihazin guncel olup olmadigina dair alan oldugu kontrol edilir$")
    public void cihazinGuncelOlupOlmadiginaDairAlanOlduguKontrolEdilir() throws InterruptedException {
        Thread.sleep(1000);
        commonfunc.isdisplayed_newUpdate();
        reportLog("Cihazin guncel olup olmadigina dair alan oldugu kontrol edilir");
    }

    @Then("^Marka alaninin dolu oldugu kontrol edilir$")
    public void markaAlanininDoluOlduguKontrolEdilir() {
        commonfunc.haveBrand();
        reportLog("Marka alaninin dolu oldugu kontrol edilir");
    }

    @Then("^Model alaninin dolu oldugu kontrol edilir$")
    public void modelAlanininDoluOlduguKontrolEdilir() {
        commonfunc.haveModel();
        reportLog("Model alaninin dolu oldugu kontrol edilir");
    }

    @Then("^Digital alaninin dolu oldugu kontrol edilir$")
    public void digitalAlanininDoluOlduguKontrolEdilir() {
        commonfunc.haveDigitalId();
        reportLog("Digital alaninin dolu oldugu kontrol edilir");
    }

    @Then("^Mac adresi alaninin dolu oldugu kontrol edilir$")
    public void macAdresiAlanininDoluOlduguKontrolEdilir() {
        commonfunc.haveMacAddress();
        reportLog("Mac adresi alaninin dolu oldugu kontrol edilir");
    }

    @Then("^Versiyon alaninin dolu oldugu kontrol edilir$")
    public void versiyonAlanininDoluOlduguKontrolEdilir() {
        commonfunc.haveVersion();
        reportLog("Versiyon alaninin dolu oldugu kontrol edilir");
    }

    @Then("^Cihaz guncel text kontrolu yapilir$")
    public void cihazGuncelTextKontroluYapilir() throws InterruptedException {
        commonfunc.control_deviceUpdatedText();
        reportLog("Cihaz guncel text kontrolu yapilir");
    }

    @And("^Klavye gizele$")
    public void klavyeGizele() throws InterruptedException {
        commonfunc.hideKeyboard();
        reportLog("Klavye gizele");
    }

    @Then("^Tasi texti kontrol edilir$")
    public void tasiTextiKontrolEdilir() {
        commonfunc.control_moveText();
        reportLog("Bes saniye bekle");
    }

    @Then("^Kaldir texti kontrol edilir$")
    public void kaldirTextiKontrolEdilir() {
        commonfunc.control_removeText();
        reportLog("Kaldir texti kontrol edilir");
    }

    @Then("^Vazgec texti kontrol edilir$")
    public void vazgecTextiKontrolEdilir() {
        commonfunc.control_cancelText();
        reportLog("Vazgec texti kontrol edilir");
    }


    @And("^Tasi butonuna basilir$")
    public void tasiButonunaBasilir() {
        commonfunc.click_moveBtn();
        reportLog("Tasi butonuna basilir");
    }

    @Then("^Cihaz tasima sayfasina gittigi kontrol edilir$")
    public void cihazTasimaSayfasinaGittigiKontrolEdilir() {
        commonfunc.control_moveScrn();
        reportLog("Cihaz tasima sayfasina gittigi kontrol edilir");
    }

    @And("^Vazgec butonuna basilir$")
    public void vazgecButonunaBasilir() {
        commonfunc.click_cancelBtn();
        reportLog("Vazgec butonuna basilir");
    }

    @Then("^Cihazlar ekranina dondugunun kontrolu yapılır$")
    public void cihazlarEkraninaDondugununKontroluYapilir() {
        commonfunc.control_devicesTitle();
        reportLog("Cihazlar ekranina dondugunun kontrolu yapılır");
    }

    @When("^Uygulamayi Kill et$")
    public void uygulamayiKillEt() throws InterruptedException, MalformedURLException {
        commonfunc.killApp();
        reportLog("Uygulamayi Kill et");
    }

    @Then("^Uzaktan kontrol acik texti kontrolu$")
    public void uzaktanKontrolAcikTextiKontrolu() throws InterruptedException {
        commonfunc.control_remoteControlTextOpen();
        reportLog("Uzaktan kontrol acik texti kontrolu");
    }

    @Given("^(\\d+) saniye bekle$")
    public void saniyeBekle(int arg0) throws InterruptedException{
        commonfunc.XSaniyeBekle(arg0);
        reportLog(arg0 + " saniye bekle");
    }

    @Given("^Uygulamayi (\\d+) saniye arka planda tut sonra aktive et$")
    public void uygulamayiSaniyeArkaplandaTut(int arg0) throws InterruptedException{
        commonfunc.XSaniyeArkaplandaTut(arg0);
        reportLog("Uygulamayi " +  arg0 + " saniye arka planda tut sonra aktive et");
    }

    @Given("^Uygulama resetlenir$")
    public void uygulamaResetlenir() throws InterruptedException {
        commonfunc.resetApp();
        reportLog("Uygulama resetledi");
        commonfunc.wait_element("Oturma Odası");
    }

    @Given("^Uygulama login testi için resetlenir$")
    public void uygulamaLoginTestiIcinResetlenir() throws InterruptedException {
        commonfunc.resetApp();
        reportLog("Uygulama login testi için resetledi");
    }
    @Then("^\"([^\"]*)\" yazisi kontrol edilir$")
    public void yazisiKontrolEdilir(String arg0) throws Throwable {
        commonfunc.control_text(arg0);
        reportLog(arg0 + " yazisi kontrol edilir");
    }

    @Then("^\"([^\"]*)\" icerigi konrol edilir$")
    public void icerigiKonrolEdilir(String arg0) throws Throwable {
        commonfunc.control_contentText(arg0);
        reportLog(arg0 + " icerigi konrol edilir");
    }

    @When("^\"([^\"]*)\" elementini bekle$")
    public void elementiniBekle(String arg0) throws Throwable {
        commonfunc.wait_element(arg0);
        reportLog(arg0 + " elementi beklendi");
    }

    @And("^Cihaz on konumuna getirilir$")
    public void cihazOnKonumunaGetirilir() throws InterruptedException {
        commonfunc.click_deviceOn();
        reportLog("Cihaz on konumuna getirilir");
    }

    @And("^Cihaz off konumuna getirilir$")
    public void cihazOffKonumunaGetirilir() {
        commonfunc.click_deviceOff();
        reportLog("Cihaz off konumuna getirilir");
    }

    @And("^Ayarlar alanina tiklanir$")
    public void ayarlarAlaninaTiklanir() throws InterruptedException {
        //Thread.sleep(3000);
        commonfunc.click_otheroptions();
        commonfunc.click_settings();
        reportLog("Ayarlar alanina tiklanir");
    }

    @Then("^Konum kullanimina izin verilir$")
    public void konumKullaniminaIzinVerilir() throws InterruptedException {
        commonfunc.click_locationPermit();
        reportLog("Konum kullanimina izin verilir");
    }


    @And("^\"([^\"]*)\" butonuna basilir$")
    public void butonunaBasilir(String arg0) throws Throwable {
        commonfunc.click_button(arg0);
        reportLog(arg0 + " butonuna basıldı");
    }

    @Given("^Uygulama silinip tekrar yüklenir$")
    public void uygulamaSilinipTekrarYüklenir() throws InterruptedException {
        commonfunc.removeAddApp();
        reportLog("silinip tekrar yüklenir");
    }

    @Given("^Logout yapilir$")
    public void logoutYapilir() {
        commonfunc.click_logout();
        reportLog("Logout yapılırr");
    }

    @And("^\"([^\"]*)\" yazisi icerdigi kontrol edilir$")
    public void yazisiIcerdigiKontrolEdilir(String arg0) throws Throwable {
        commonfunc.control_containText(arg0);
        reportLog(arg0 + "yazisi icerdigi kontrol edilir");
    }

    @And("^\"([^\"]*)\" yazisi beklenir$")
    public void yazisiBeklenir(String arg0) throws Throwable {
        commonfunc.wait_name(arg0);
        reportLog(arg0 + " yazisi beklenir");
    }

    @And("^Sag ust uc nokta butonuna basilir$")
    public void sagUstUcNoktaButonunaBasilir() {
        commonfunc.click_rightTopMenuBtn();
        reportLog("Sag ust uc nokta butonuna basilir");
    }

    @Then("^\"([^\"]*)\" yada \"([^\"]*)\" yazisi kontrol edilir$")
    public void yadaYazisiKontrolEdilir(String arg0, String arg1) throws Throwable {
        commonfunc.control_twoText(arg0, arg1);
        reportLog(arg0+ " yada " +arg1+ " yazısı kontrol edilir");
    }

    @And("^\"([^\"]*)\" yazisi sayfa kaydirarak bulunur$")
    public void yazisiSayfaKaydirarakBulunur(String arg0) throws Throwable {
        commonfunc.findElementScrollIntoView(arg0);
        reportLog(arg0+ " elementi sayfada bulunur");
    }

    @And("^Ekrani \"([^\"]*)\" kaydir$")
    public void ekraniKaydir(String arg0) throws Throwable {
      commonfunc.swipeScreen(arg0);
      reportLog("Ekranı "+arg0+ " kaydır");
    }

    @And("^\"([^\"]*)\" texti sayfa kaydirmadan bulunur$")
    public void textiSayfaKaydirmadanBulunur(String arg0) throws Throwable {
        commonfunc.findTextNoScroll(arg0);
        reportLog(arg0+" texti sayfa kaydırmadan bulunur");
    }

    @Then("^\"([^\"]*)\" bildiriminin \"([^\"]*)\" oldugu kontrol edilir$")
    public void bildirimininOlduguKontrolEdilir(String arg0, String arg1) throws Throwable {
        newScenariosScreens.control_warning(arg0, arg1);
        reportLog(arg0+ " bildiriminin "+arg1+ " olduğu kontrol edilir");
    }

    @Then("^\"([^\"]*)\" yazisinin olmadigi kontrol edilir$")
    public void yazisininOlmadigiKontrolEdilir(String arg0) throws Throwable {
        commonfunc.control_noContent(arg0);
        reportLog(arg0+ " yazisinin olmadigi kontrol edilir");
    }

    @Then("^\"([^\"]*)\" butonu \"([^\"]*)\" yapilir$")
    public void butonuYapilir(String arg0, String arg1) throws Throwable {
        commonfunc.click_switchButton(arg0, arg1);
        reportLog(arg0+ " bildirimi "+arg1+ " yapıldı");
    }

    @Then("^\"([^\"]*)\" butonunun \"([^\"]*)\" oldugu kontrol edilir$")
    public void butonununOlduguKontrolEdilir(String arg0, String arg1) throws Throwable {
        commonfunc.control_buttonValue(arg0, arg1);
        reportLog(arg0+" butonunun "+arg1+ " oldugu kontrol edilir");
    }

}






